import 'package:freezed_annotation/freezed_annotation.dart';

part 'creatorProfile.freezed.dart';
part 'creatorProfile.g.dart';

@freezed
class Creatorprofile with _$Creatorprofile {

  factory Creatorprofile({
    required String imageUrl,
    required String name, 
    required String place, 

  }) = _Creatorprofile;

  factory Creatorprofile.fromJson(Map<String, dynamic> json) => _$CreatorprofileFromJson(json);
}