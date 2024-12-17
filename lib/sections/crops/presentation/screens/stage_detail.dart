import 'package:advice/core/components/custom_app_back_dart.dart';
import 'package:advice/sections/crops/model/crop_detail.dart';
import 'package:advice/sections/crops/model/crop_threat.dart';
import 'package:advice/sections/crops/model/major_stage.dart';
import 'package:advice/sections/crops/presentation/screens/crop_details_screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class StageDetailScreen extends StatelessWidget {
  StageDetailScreen(
      {super.key,
      required this.majorStage,
      required this.stages,
      required this.cropThreats});
  MajorStage majorStage;
  List<Stage> stages;
  List<CropThreat> cropThreats;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBackDart(title: majorStage.name!),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              majorStage.description ?? "No description",
              style: TextStyle(
                color: Color(0xFF3F3D3D),
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Stages',
              style: TextStyle(
                color: Color(0xFF3F3D3D),
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: stages.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.white,
                    child: ExpansionTile(
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.transparent),
                      ),
                      title: Text(stages[index].name!),
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(stages[index].description ??
                                  "No description"),
                              Row(
                                children: [
                                  stages[index].imagesList!.isNotEmpty
                                      ? Image.network(
                                          errorBuilder:
                                              (context, error, stackTrace) {
                                            return Image.asset(
                                                width: 100,
                                                height: 100,
                                                'assets/images/crop_1.png');
                                          },
                                          stages[index].imagesList![0],
                                          width: 100,
                                          height: 100,
                                        )
                                      : Image.asset(
                                          width: 100,
                                          height: 100,
                                          'assets/images/crop_1.png'),
                                  Text("Usually Take " +
                                      (stages[index].durationDays.toString() ??
                                          "No start date") +
                                      " days"),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              stages[index].potentialPests!.isNotEmpty
                                  ? SuggestionTile(
                                      title: "Pest and Diseases",
                                      description:
                                          "Lorem Ipsum has been the industry's standard dummy text since the 1500s.",
                                      onTap: () {
                                        Map<CropThreat, List<PotentialPest>>
                                            cropPestMap = {};
                                        for (var cropThreat in cropThreats) {
                                          cropPestMap[cropThreat] =
                                              stages[index]
                                                  .potentialPests!
                                                  .where((pest) =>
                                                      pest.category ==
                                                      cropThreat.id)
                                                  .toList();
                                        }
                                        cropPestMap.removeWhere(
                                            (key, value) => value.isEmpty);

                                        showModalBottomSheet(
                                          context: context,
                                          isScrollControlled: true,
                                          builder: (_) {
                                            return PestDetailsSheet(
                                              cropPestMap: cropPestMap,
                                            );
                                          },
                                        );
                                      },
                                    )
                                  : SizedBox(),
                              stages[index].managementPractices!.isNotEmpty
                                  ? SuggestionTile(
                                      title: "Management Practices",
                                      description:
                                          "Lorem Ipsum has been the industry's standard dummy text since the 1500s.",
                                      onTap: () {
                                        showModalBottomSheet(
                                          context: context,
                                          isScrollControlled: true,
                                          builder: (_) {
                                            return ManagementPracticesSheet(
                                              practices: stages[index]
                                                  .managementPractices!,
                                            );
                                          },
                                        );
                                      },
                                    )
                                  : SizedBox(),
                            ],
                          ),
                        ),
                      ],
                    ),
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

class PestDetailsSheet extends StatelessWidget {
  final Map<CropThreat, List<PotentialPest>> cropPestMap;

  const PestDetailsSheet({Key? key, required this.cropPestMap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.8,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Pest and Diseases",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
            const SizedBox(height: 10),

            // Expandable List of Pests
            ...cropPestMap.entries.map((entry) {
              final majorCategory = entry.key;
              final subcategories = entry.value;

              return ExpansionTile(
                title: Text(
                  majorCategory.name!,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                children: subcategories.map((pest) {
                  return ListTile(
                    leading: pest.imageUrl != null
                        ? Image.network(
                            pest.imageUrl!,
                            width: 50,
                            height: 50,
                            errorBuilder: (context, error, stackTrace) {
                              return Image.asset(
                                "assets/images/crop_1.png",
                                width: 50,
                                height: 50,
                              );
                            },
                          )
                        : Image.asset(
                            "assets/images/crop_1.png",
                            width: 50,
                            height: 50,
                          ),
                    title: Text(pest.name!),
                    subtitle: Text(
                      pest.scientificName ?? "No Scientific Name",
                      style: const TextStyle(fontSize: 12),
                    ),
                    onTap: () {
                      _showPestDetailsDialog(context, pest);
                    },
                  );
                }).toList(),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }

  void _showPestDetailsDialog(BuildContext context, PotentialPest pest) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(pest.name!),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              pest.imageUrl != null
                  ? Image.network(
                      pest.imageUrl!,
                      width: 100,
                      height: 100,
                      errorBuilder: (context, error, stackTrace) {
                        return Image.asset(
                          "assets/images/crop_placeholder.png",
                          width: 100,
                          height: 100,
                        );
                      },
                    )
                  : Image.asset(
                      "assets/images/crop_placeholder.png",
                      width: 100,
                      height: 100,
                    ),
              const SizedBox(height: 10),
              Text("Scientific Name: ${pest.scientificName ?? "N/A"}"),
              const SizedBox(height: 8),
              Text("Chemical Treatment: ${pest.chemicalTreatment}"),
              const SizedBox(height: 8),
              Text("Control Method: ${pest.controlMethod}"),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Close"),
            ),
          ],
        );
      },
    );
  }
}

class ManagementPracticesSheet extends StatelessWidget {
  final List<ManagementPractice> practices;

  const ManagementPracticesSheet({Key? key, required this.practices})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.8,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Management Practices",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
            const SizedBox(height: 10),

            // Management Practices List
            ...practices.map((practice) {
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name: ${practice.name}",
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Description: ${practice.description}",
                        style: const TextStyle(fontSize: 12),
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
