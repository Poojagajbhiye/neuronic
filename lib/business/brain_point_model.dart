class BrainPointData {
  final String name;
  int? pulseRateInHz;
  int? intensityInPercentage;

  BrainPointData({
    required this.name,
    this.pulseRateInHz,
    this.intensityInPercentage,
  });

  factory BrainPointData.fromJSON(Map<String, dynamic> json) => BrainPointData(
        name: json['name'] as String,
        pulseRateInHz: json['pulseRateInHz'] as int?,
        intensityInPercentage: json['intensityInPercentage'] as int?,
      );
}
