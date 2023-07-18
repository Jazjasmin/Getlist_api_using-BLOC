import 'package:json_annotation/json_annotation.dart';

part 'active_model.g.dart';

@JsonSerializable()
class ActiveModel {
  List<ActiveDatum>? data;

  ActiveModel({this.data});

  factory ActiveModel.fromJson(Map<String, dynamic> json) {
    return _$ActiveModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ActiveModelToJson(this);
}

@JsonSerializable()
class ActiveDatum {
  int? id;
  String? name;
  String? email;
  String? gender;
  String? status;

  ActiveDatum({this.id, this.name, this.email, this.gender, this.status});

  factory ActiveDatum.fromJson(Map<String, dynamic> json) =>
      _$ActiveDatumFromJson(json);

  Map<String, dynamic> toJson() => _$ActiveDatumToJson(this);
}
