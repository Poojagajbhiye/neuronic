import 'package:flutter/material.dart';
import 'package:neuronic/data/data_source.dart';

import 'brain_point_model.dart';

class BrainPoints with ChangeNotifier {
  List<BrainPointData> brainPoints = [];

  int get brainPointsCount => brainPoints.length;

  init() async {
    brainPoints = await fetchBrainPoints();
  }

  updateBrainPointData(
    String name,
    int? pulseRateInHz,
    int? intensityInPercentage,
  ) {
    BrainPointData brainPointToUpdate =
        brainPoints.firstWhere((brainPoint) => brainPoint.name == name);
    brainPointToUpdate.pulseRateInHz = pulseRateInHz;
    brainPointToUpdate.intensityInPercentage = intensityInPercentage;
    notifyListeners();
  }
}
