// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passenger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Passenger _$PassengerFromJson(Map<String, dynamic> json) {
  return Passenger(
    json['_id'] as String,
    json['name'] as String,
    json['trips'] as int?,
    (json['airline'] as List<dynamic>)
        .map((e) => AirLine.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$PassengerToJson(Passenger instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'trips': instance.trips,
      'airline': instance.airline,
    };

AirLine _$AirLineFromJson(Map<String, dynamic> json) {
  return AirLine(
    json['id'] as int,
    json['name'] as String,
    json['country'] as String,
    json['head_quaters'] as String,
    json['slogan'] as String,
    json['website'] as String,
    json['logo'] as String,
  );
}

Map<String, dynamic> _$AirLineToJson(AirLine instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'logo': instance.logo,
      'slogan': instance.slogan,
      'website': instance.website,
      'head_quaters': instance.headQuaters,
    };
