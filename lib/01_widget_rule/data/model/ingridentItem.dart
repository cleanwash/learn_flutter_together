import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingridentItem.freezed.dart';
part 'ingridentItem.g.dart';

@freezed
class Ingridentitem with _$Ingridentitem {
  factory Ingridentitem({
    required int id,
    required String imageUrl,
    required String title,
    required String weight,
    required List<Map<String, dynamic>> dataList,
  }) = _Ingridentitem;

  factory Ingridentitem.fromJson(Map<String, dynamic> json) => _$IngridentitemFromJson(json);
}
