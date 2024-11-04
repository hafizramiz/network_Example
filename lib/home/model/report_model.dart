import 'package:json_annotation/json_annotation.dart';
import 'package:network_example/home/model/base_entity.dart';

part 'report_model.g.dart';
@JsonSerializable(checked: true, explicitToJson: true)
final class ReportModel extends BaseEntity<ReportModel> {
  int? reportID;
  int? contentID;
  String? category;
  String? testerName;
  String? message;
  String? image;
  String? date;
  String? time;
  String? status;

  ReportModel({
    this.reportID,
    this.contentID,
    this.category,
    this.testerName,
    this.message,
    this.image,
    this.date,
    this.time,
    this.status,
  });

  ReportModel copyWith({
    int? reportID,
    int? contentID,
    String? category,
    String? testerName,
    String? message,
    String? image,
    String? date,
    String? time,
    String? status,
  }) {
    return ReportModel(
      reportID: reportID ?? this.reportID,
      contentID: contentID ?? this.contentID,
      category: category ?? this.category,
      testerName: testerName ?? this.testerName,
      message: message ?? this.message,
      image: image ?? this.image,
      date: date ?? this.date,
      time: time ?? this.time,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toJson() => _$ReportModelToJson(this);

  factory ReportModel.fromJson(Map<String, dynamic> json) {
    return _$ReportModelFromJson(json);
  }

  @override
  String toString() =>
      "ReportModel(reportID: $reportID,contentID: $contentID,category: $category,testerName: $testerName,message: $message,image: $image,date: $date,time: $time,status: $status)";

  @override
  ReportModel fromJson(json) => ReportModel.fromJson(json);

  @override
  // TODO: implement props
  List<Object?> get props => [
        reportID,
        contentID,
        category,
        testerName,
        message,
        image,
        date,
        time,
        status,
      ];
}
