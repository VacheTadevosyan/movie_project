// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guest_session_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GuestSessionResponse _$GuestSessionResponseFromJson(
  Map<String, dynamic> json,
) => _GuestSessionResponse(
  success: json['success'] as bool,
  guestSessionId: json['guest_session_id'] as String,
  expiresAt: json['expires_at'] as String,
);

Map<String, dynamic> _$GuestSessionResponseToJson(
  _GuestSessionResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'guest_session_id': instance.guestSessionId,
  'expires_at': instance.expiresAt,
};
