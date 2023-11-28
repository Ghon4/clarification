import 'package:demop/domain/entities/results.dart';
import 'package:flutter/material.dart';

class PersonDetailsScreen extends StatelessWidget {
  final Results person;
  const PersonDetailsScreen({Key? key, required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(person.name ?? ''),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'https://image.tmdb.org/t/p/original${person.profilePath}',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Known For: ${person.knownFor?.map((e) => e.title).join(', ')}',
                style: const TextStyle(fontSize: 16),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: person.knownFor?.length,
                itemBuilder: (context, index) {
                  final knownFor = person.knownFor?[index];
                  return Image.network(
                    'https://image.tmdb.org/t/p/original${knownFor?.posterPath}',
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
