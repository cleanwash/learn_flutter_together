import 'package:freezed_annotation/freezed_annotation.dart';

part 'popUpDialog.freezed.dart';
part 'popUpDialog.g.dart';

@freezed
class Popupdialog with _$Popupdialog {

  factory Popupdialog({
    required String url,
  }) = _Popupdialog;

  factory Popupdialog.fromJson(Map<String, dynamic> json) => _$PopupdialogFromJson(json);
}