import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'PrizeData.g.dart';

@JsonKey(ignore: true)
@JsonSerializable(nullable: false)
class PrizeData {
  final int code;
  final String message;
  final Data data;

  PrizeData({this.code, this.message, this.data});

  static PrizeData json(String json) {
    return PrizeData.fromJson(jsonDecode(json));
  }

  factory PrizeData.fromJson(Map<String, dynamic> json) =>
      _$PrizeDataFromJson(json);

  Map<String, dynamic> toJson() => _$PrizeDataToJson(this);
}

@JsonKey(ignore: true)
@JsonSerializable()
class Data {
  final List<Prize> prize;

  Data({this.prize});

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonKey(ignore: true)
@JsonSerializable()
class Prize {
  final int id;
  final String name;
  final String img_path;


  Prize({this.id, this.name, this.img_path});

  factory Prize.fromJson(Map<String, dynamic> json) => _$PrizeFromJson(json);

  Map<String, dynamic> toJson() => _$PrizeToJson(this);
}
