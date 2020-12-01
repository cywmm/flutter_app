// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PrizeData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrizeData _$PrizeDataFromJson(Map<String, dynamic> json) {
  return PrizeData(
    code: json['code'] as int,
    message: json['message'] as String,
    data: Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PrizeDataToJson(PrizeData instance) => <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    prize: (json['prize'] as List)
        ?.map(
            (e) => e == null ? null : Prize.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'prize': instance.prize,
    };

Prize _$PrizeFromJson(Map<String, dynamic> json) {
  return Prize(
    id: json['id'] as int,
    name: json['name'] as String,
    img_path: json['img_path'] as String,
  );
}

Map<String, dynamic> _$PrizeToJson(Prize instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img_path': instance.img_path,
    };
