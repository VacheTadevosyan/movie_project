import 'package:freezed_annotation/freezed_annotation.dart';

part 'guest_session_response.freezed.dart';
part 'guest_session_response.g.dart';

@freezed
abstract class GuestSessionResponse with _$GuestSessionResponse {
  const factory GuestSessionResponse({
    required bool success,
    @JsonKey(name: 'guest_session_id') required String guestSessionId,
    @JsonKey(name: 'expires_at') required String expiresAt,
  }) = _GuestSessionResponse;

  factory GuestSessionResponse.fromJson(Map<String, dynamic> json) =>
      _$GuestSessionResponseFromJson(json);
}
