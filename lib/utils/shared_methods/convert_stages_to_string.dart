//
// Map<String, dynamic> convertStagesToString(MatchEntity match) {
//   String structureStages = "{1st}-{2nd}-{3rd}{slash}{OT}{hypen}{SO}";
//   final bool isShootout = match.isShootout ?? false;
//   final bool isOverTime = match.isOvertime ?? false;
//   final List<StagesEntity> stages = match.stagesEntity ?? [];
//   final String slash = (isOverTime || isShootout) ? "/" : "";
//   final String hypen = isShootout ? "-" : "";
//
//   structureStages =
//       structureStages.replaceAll("{slash}", slash).replaceAll("{hypen}", hypen);
//
//   String structureHomeStages = structureStages;
//   String structureAwayStages = structureStages;
//   if (stages.isEmpty) {
//     return {
//       "homeStages": "",
//       "awayStages": "",
//     };
//   }
//   for (final stage in stages) {
//     String name = stage.name ?? "";
//     String homeScore = stage.homeClubScore.toString();
//     String awayScore = stage.awayClubScore.toString();
//
//     String pattern = "{${stage.name}}";
//
//     if ((name == "SO" && !isShootout) || (name == "OT" && !isOverTime)) {
//       homeScore = "";
//       awayScore = "";
//     }
//     structureHomeStages = structureHomeStages.replaceAll(pattern, homeScore);
//     structureAwayStages = structureAwayStages.replaceAll(pattern, awayScore);
//   }
//
//   return {
//     "homeStages": structureHomeStages,
//     "awayStages": structureAwayStages,
//   };
// }
