// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettingsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsEvent()';
}


}

/// @nodoc
class $SettingsEventCopyWith<$Res>  {
$SettingsEventCopyWith(SettingsEvent _, $Res Function(SettingsEvent) __);
}


/// Adds pattern-matching-related methods to [SettingsEvent].
extension SettingsEventPatterns on SettingsEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadLocale value)?  loadLocale,TResult Function( SettingsInitEvent value)?  initial,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadLocale() when loadLocale != null:
return loadLocale(_that);case SettingsInitEvent() when initial != null:
return initial(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadLocale value)  loadLocale,required TResult Function( SettingsInitEvent value)  initial,}){
final _that = this;
switch (_that) {
case LoadLocale():
return loadLocale(_that);case SettingsInitEvent():
return initial(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadLocale value)?  loadLocale,TResult? Function( SettingsInitEvent value)?  initial,}){
final _that = this;
switch (_that) {
case LoadLocale() when loadLocale != null:
return loadLocale(_that);case SettingsInitEvent() when initial != null:
return initial(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String locale)?  loadLocale,TResult Function()?  initial,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadLocale() when loadLocale != null:
return loadLocale(_that.locale);case SettingsInitEvent() when initial != null:
return initial();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String locale)  loadLocale,required TResult Function()  initial,}) {final _that = this;
switch (_that) {
case LoadLocale():
return loadLocale(_that.locale);case SettingsInitEvent():
return initial();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String locale)?  loadLocale,TResult? Function()?  initial,}) {final _that = this;
switch (_that) {
case LoadLocale() when loadLocale != null:
return loadLocale(_that.locale);case SettingsInitEvent() when initial != null:
return initial();case _:
  return null;

}
}

}

/// @nodoc


class LoadLocale implements SettingsEvent {
  const LoadLocale(this.locale);
  

 final  String locale;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadLocaleCopyWith<LoadLocale> get copyWith => _$LoadLocaleCopyWithImpl<LoadLocale>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadLocale&&(identical(other.locale, locale) || other.locale == locale));
}


@override
int get hashCode => Object.hash(runtimeType,locale);

@override
String toString() {
  return 'SettingsEvent.loadLocale(locale: $locale)';
}


}

/// @nodoc
abstract mixin class $LoadLocaleCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory $LoadLocaleCopyWith(LoadLocale value, $Res Function(LoadLocale) _then) = _$LoadLocaleCopyWithImpl;
@useResult
$Res call({
 String locale
});




}
/// @nodoc
class _$LoadLocaleCopyWithImpl<$Res>
    implements $LoadLocaleCopyWith<$Res> {
  _$LoadLocaleCopyWithImpl(this._self, this._then);

  final LoadLocale _self;
  final $Res Function(LoadLocale) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? locale = null,}) {
  return _then(LoadLocale(
null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SettingsInitEvent implements SettingsEvent {
  const SettingsInitEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsInitEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsEvent.initial()';
}


}




/// @nodoc
mixin _$SettingsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsState()';
}


}

/// @nodoc
class $SettingsStateCopyWith<$Res>  {
$SettingsStateCopyWith(SettingsState _, $Res Function(SettingsState) __);
}


/// Adds pattern-matching-related methods to [SettingsState].
extension SettingsStatePatterns on SettingsState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( LocalLoaded value)?  localeLoaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LocalLoaded() when localeLoaded != null:
return localeLoaded(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( LocalLoaded value)  localeLoaded,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case LocalLoaded():
return localeLoaded(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( LocalLoaded value)?  localeLoaded,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LocalLoaded() when localeLoaded != null:
return localeLoaded(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( String locale)?  localeLoaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LocalLoaded() when localeLoaded != null:
return localeLoaded(_that.locale);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( String locale)  localeLoaded,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case LocalLoaded():
return localeLoaded(_that.locale);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( String locale)?  localeLoaded,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LocalLoaded() when localeLoaded != null:
return localeLoaded(_that.locale);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements SettingsState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsState.initial()';
}


}




/// @nodoc


class LocalLoaded implements SettingsState {
  const LocalLoaded(this.locale);
  

 final  String locale;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalLoadedCopyWith<LocalLoaded> get copyWith => _$LocalLoadedCopyWithImpl<LocalLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalLoaded&&(identical(other.locale, locale) || other.locale == locale));
}


@override
int get hashCode => Object.hash(runtimeType,locale);

@override
String toString() {
  return 'SettingsState.localeLoaded(locale: $locale)';
}


}

/// @nodoc
abstract mixin class $LocalLoadedCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory $LocalLoadedCopyWith(LocalLoaded value, $Res Function(LocalLoaded) _then) = _$LocalLoadedCopyWithImpl;
@useResult
$Res call({
 String locale
});




}
/// @nodoc
class _$LocalLoadedCopyWithImpl<$Res>
    implements $LocalLoadedCopyWith<$Res> {
  _$LocalLoadedCopyWithImpl(this._self, this._then);

  final LocalLoaded _self;
  final $Res Function(LocalLoaded) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? locale = null,}) {
  return _then(LocalLoaded(
null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
