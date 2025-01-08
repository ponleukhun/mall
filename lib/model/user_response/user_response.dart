import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen/user_response.freezed.dart';
part 'gen/user_response.g.dart';

@unfreezed
class UserResponse with _$UserResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory UserResponse({
    String? token,
    String? message,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}
