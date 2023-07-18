// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveModel _$ActiveModelFromJson(Map<String, dynamic> json) => ActiveModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ActiveDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ActiveModelToJson(ActiveModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

ActiveDatum _$ActiveDatumFromJson(Map<String, dynamic> json) => ActiveDatum(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      gender: json['gender'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$ActiveDatumToJson(ActiveDatum instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'gender': instance.gender,
      'status': instance.status,
    };
