import 'package:json_annotation/json_annotation.dart';



part 'active_model.g.dart';

@JsonSerializable()
class ActiveModel {
  @JsonKey(name: 'data')
  List<Datum>? data;

  ActiveModel({ this.data});

  factory ActiveModel.fromJson(Map<String, dynamic> json) {
    return _$ActiveModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ActiveModelToJson(this);
}

@JsonSerializable()

class Datum {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'email')
  String? email;

  @JsonKey(name: 'gender')
  String? gender;

  @JsonKey(name: 'status')
  String? status;

  Datum({this.id, this.name, this.email, this.gender, this.status});

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
