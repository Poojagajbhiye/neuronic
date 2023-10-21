import 'package:neuronic/business/brain_point_model.dart';

/// This data layer with interact with cloud to get data and update data.
// import 'package:http/http.dart' as http;

const List<Map<String, dynamic>> allBrainPointsData = [
  {
    'name': 'FP1',
    'pulseRateInHz': 80,
    'intensityInPercentage': 50,
  },
  {
    'name': 'FP2',
    'pulseRateInHz': 81,
    'intensityInPercentage': 51,
  },
  {
    'name': 'F7',
    'pulseRateInHz': 82,
    'intensityInPercentage': 52,
  },
  {
    'name': 'F8',
    'pulseRateInHz': 90,
    'intensityInPercentage': 53,
  },
  {
    'name': 'F3',
    'pulseRateInHz': 85,
    'intensityInPercentage': 55,
  },
  {
    'name': 'FZ',
    'pulseRateInHz': 86,
    'intensityInPercentage': 51,
  },
  {
    'name': 'F4',
    'pulseRateInHz': 100,
    'intensityInPercentage': 90,
  },
  {
    'name': 'T3',
    'pulseRateInHz': 180,
    'intensityInPercentage': 150,
  },
  {
    'name': 'C3',
    'pulseRateInHz': null,
    'intensityInPercentage': null,
  },
  {
    'name': 'CZ',
    'pulseRateInHz': 80,
    'intensityInPercentage': 50,
  },
  {
    'name': 'C4',
    'pulseRateInHz': null,
    'intensityInPercentage': null,
  },
  {
    'name': 'T4',
    'pulseRateInHz': 80,
    'intensityInPercentage': 50,
  },
  {
    'name': 'P3',
    'pulseRateInHz': 80,
    'intensityInPercentage': 50,
  },
  {
    'name': 'PZ',
    'pulseRateInHz': null,
    'intensityInPercentage': 70,
  },
  {
    'name': 'P4',
    'pulseRateInHz': 80,
    'intensityInPercentage': 50,
  },
  {
    'name': 'T5',
    'pulseRateInHz': 120,
    'intensityInPercentage': null,
  },
  {
    'name': 'T6',
    'pulseRateInHz': 80,
    'intensityInPercentage': 50,
  },
  {
    'name': '01',
    'pulseRateInHz': 80,
    'intensityInPercentage': 50,
  },
  {
    'name': '02',
    'pulseRateInHz': 80,
    'intensityInPercentage': 50,
  },
];

Future<List<BrainPointData>> getData() {
  return Future.delayed(const Duration(seconds: 2), () {
    List<BrainPointData> brainPointsList = [];
    for (Map<String, dynamic> brainPoint in allBrainPointsData) {
      brainPointsList.add(BrainPointData.fromJSON(brainPoint));
    }
    return brainPointsList;
  });
}

Future<List<BrainPointData>> fetchBrainPoints() async {
  // final response =
  //     await http.get(Uri.parse('htttps://actual_url/place_holder'));

  // if (response.statusCode == 200) {
  return await getData();
  // } else {
  //throw Exception('Failed to get brain points data.');
  // }
}
