import 'package:demop/business_logic/cubit/people_cubit/people_cubit.dart';
import 'package:demop/data/data_providers/data_source/people_datasource/people_datasource_impl.dart';
import 'package:demop/data/repositories_impl/people_repository_impl.dart';
import 'package:demop/domain/entities/results.dart';
import 'package:demop/domain/use_cases/auth/people_usecase.dart';
import 'package:demop/utils/extensions/empty_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'person_details_screen.dart';

class PeopleScreen extends StatefulWidget {
  const PeopleScreen({super.key});

  @override
  State<PeopleScreen> createState() => _PeopleScreenState();
}

class _PeopleScreenState extends State<PeopleScreen> {
  final PeopleCubit peopleCubit = PeopleCubit(
    PeopleUseCase(
      PeopleRepositoryImpl(
        peopleDataSource: PeopleDataSourceImpl(),
      ),
    ),
  );
  ScrollController scrollController = ScrollController();
  List<Results> newResults = [];

  // do the infinite scrolling
  void _scrollListener() {
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      peopleCubit.getPopularPeople();
    }
  }

  @override
  void initState() {
    super.initState();
    peopleCubit.getPopularPeople();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popular People'),
      ),
      body: BlocProvider(
        create: (context) => peopleCubit,
        child: BlocConsumer<PeopleCubit, PeopleState>(
          listener: (BuildContext context, PeopleState state) {
            if (state is PeopleLoaded) {
              newResults.addAll(state.people.results ?? []);
            }
          },
          builder: (context, people) {
            if (people is PeopleLoading && newResults.isEmpty) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }
            if (people is PeopleError) {
              return Center(
                child: Text(people.message),
              );
            }
            if (people is PeopleLoaded || newResults.isNotEmpty) {
              return ListView.builder(
                controller: scrollController
                  ..addListener(() {
                    _scrollListener();
                  }),
                itemCount: newResults.length,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
                itemBuilder: (context, index) {
                  final person = newResults[index];
                  return index == newResults.length - 1
                      ? Column(
                          children: [
                            ListTile(
                              title: Text(person.name ?? '',
                                  style: const TextStyle(
                                      fontSize: 20, color: Colors.black)),
                              subtitle: Text(person.knownForDepartment ?? '',
                                  style: const TextStyle(
                                      fontSize: 16, color: Colors.black)),
                              leading: person.profilePath != null
                                  ? CachedNetworkImage(
                                      imageUrl:
                                          'https://image.tmdb.org/t/p/original${person.profilePath}',
                                      height: 100,
                                      width: 100,
                                      fit: BoxFit.cover,
                                    )
                                  : null,
                              trailing: const Icon(Icons.arrow_forward_ios),
                              onTap: () {
                                // Navigate to the details screen when a person is tapped
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PersonDetailsScreen(
                                        person: person),
                                  ),
                                );
                              },
                            ),
                            20.ph,
                            const CircularProgressIndicator.adaptive(),
                            20.ph,
                          ],
                        )
                      : ListTile(
                          title: Text(person.name ?? '',
                              style: const TextStyle(
                                  fontSize: 20, color: Colors.black)),
                          subtitle: Text(person.knownForDepartment ?? '',
                              style: const TextStyle(
                                  fontSize: 16, color: Colors.black)),
                          leading: person.profilePath != null
                              ? CachedNetworkImage(
                                  imageUrl:
                                      'https://image.tmdb.org/t/p/original${person.profilePath}',
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover,
                                )
                              : null,
                          trailing: const Icon(Icons.arrow_forward_ios),
                          onTap: () {
                            // Navigate to the details screen when a person is tapped
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PersonDetailsScreen(
                                    person: person),
                              ),
                            );
                          },
                        );
                },
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
