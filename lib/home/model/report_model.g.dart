// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReportModel _$ReportModelFromJson(Map<String, dynamic> json) => $checkedCreate(
      'ReportModel',
      json,
      ($checkedConvert) {
        final val = ReportModel(
          reportID: $checkedConvert('reportID', (v) => (v as num?)?.toInt()),
          contentID: $checkedConvert('contentID', (v) => (v as num?)?.toInt()),
          category: $checkedConvert('category', (v) => v as String?),
          testerName: $checkedConvert('testerName', (v) => v as String?),
          message: $checkedConvert('message', (v) => v as String?),
          image: $checkedConvert('image', (v) => v as String?),
          date: $checkedConvert('date', (v) => v as String?),
          time: $checkedConvert('time', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$ReportModelToJson(ReportModel instance) =>
    <String, dynamic>{
      'reportID': instance.reportID,
      'contentID': instance.contentID,
      'category': instance.category,
      'testerName': instance.testerName,
      'message': instance.message,
      'image': instance.image,
      'date': instance.date,
      'time': instance.time,
      'status': instance.status,
    };
