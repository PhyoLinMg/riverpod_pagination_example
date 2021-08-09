import 'package:json_annotation/json_annotation.dart';
import 'package:riverpod_example/model/passenger.dart';

part 'passengers_response.g.dart';

@JsonSerializable()
class PassengersResponse {
  final int totalPassengers;
  final int totalPages;
  @JsonKey(name: "data")
  final List<Passenger> passengers;

  const PassengersResponse(
      this.totalPassengers, this.totalPages, this.passengers);

  factory PassengersResponse.fromJson(Map<String, dynamic> json) =>
      _$PassengersResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PassengersResponseToJson(this);
}
