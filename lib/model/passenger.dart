import 'package:json_annotation/json_annotation.dart';

part 'passenger.g.dart';

@JsonSerializable()
class Passenger {
  @JsonKey(name: '_id')
  final String id;
  final String name;
  final int? trips;
  final List<AirLine> airline;

  const Passenger(this.id, this.name, this.trips, this.airline);

  factory Passenger.fromJson(Map<String, dynamic> json) =>
      _$PassengerFromJson(json);

  Map<String, dynamic> toJson() => _$PassengerToJson(this);
}

@JsonSerializable()
class AirLine {
  final int id;
  final String name;
  final String country;
  final String logo;
  final String slogan;
  final String website;
  @JsonKey(name: 'head_quaters')
  final String headQuaters;

  const AirLine(this.id, this.name, this.country, this.headQuaters, this.slogan,
      this.website, this.logo);

  factory AirLine.fromJson(Map<String, dynamic> json) =>
      _$AirLineFromJson(json);

  Map<String, dynamic> toJson() => _$AirLineToJson(this);
}
