// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passengers_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PassengersResponse _$PassengersResponseFromJson(Map<String, dynamic> json) {
  return PassengersResponse(
    json['totalPassengers'] as int,
    json['totalPages'] as int,
    (json['data'] as List<dynamic>)
        .map((e) => Passenger.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$PassengersResponseToJson(PassengersResponse instance) =>
    <String, dynamic>{
      'totalPassengers': instance.totalPassengers,
      'totalPages': instance.totalPages,
      'data': instance.passengers,
    };
