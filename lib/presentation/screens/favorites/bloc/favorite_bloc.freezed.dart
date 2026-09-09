// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavoriteEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoriteEvent()';
}


}

/// @nodoc
class $FavoriteEventCopyWith<$Res>  {
$FavoriteEventCopyWith(FavoriteEvent _, $Res Function(FavoriteEvent) __);
}


/// Adds pattern-matching-related methods to [FavoriteEvent].
extension FavoriteEventPatterns on FavoriteEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FavoriteLoadEvent value)?  load,TResult Function( FavoriteLoadedEvent value)?  loaded,TResult Function( FavoriteErrorEvent value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FavoriteLoadEvent() when load != null:
return load(_that);case FavoriteLoadedEvent() when loaded != null:
return loaded(_that);case FavoriteErrorEvent() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FavoriteLoadEvent value)  load,required TResult Function( FavoriteLoadedEvent value)  loaded,required TResult Function( FavoriteErrorEvent value)  error,}){
final _that = this;
switch (_that) {
case FavoriteLoadEvent():
return load(_that);case FavoriteLoadedEvent():
return loaded(_that);case FavoriteErrorEvent():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FavoriteLoadEvent value)?  load,TResult? Function( FavoriteLoadedEvent value)?  loaded,TResult? Function( FavoriteErrorEvent value)?  error,}){
final _that = this;
switch (_that) {
case FavoriteLoadEvent() when load != null:
return load(_that);case FavoriteLoadedEvent() when loaded != null:
return loaded(_that);case FavoriteErrorEvent() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  load,TResult Function()?  loaded,TResult Function()?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FavoriteLoadEvent() when load != null:
return load();case FavoriteLoadedEvent() when loaded != null:
return loaded();case FavoriteErrorEvent() when error != null:
return error();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  load,required TResult Function()  loaded,required TResult Function()  error,}) {final _that = this;
switch (_that) {
case FavoriteLoadEvent():
return load();case FavoriteLoadedEvent():
return loaded();case FavoriteErrorEvent():
return error();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  load,TResult? Function()?  loaded,TResult? Function()?  error,}) {final _that = this;
switch (_that) {
case FavoriteLoadEvent() when load != null:
return load();case FavoriteLoadedEvent() when loaded != null:
return loaded();case FavoriteErrorEvent() when error != null:
return error();case _:
  return null;

}
}

}

/// @nodoc


class FavoriteLoadEvent implements FavoriteEvent {
  const FavoriteLoadEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteLoadEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoriteEvent.load()';
}


}




/// @nodoc


class FavoriteLoadedEvent implements FavoriteEvent {
  const FavoriteLoadedEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteLoadedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoriteEvent.loaded()';
}


}




/// @nodoc


class FavoriteErrorEvent implements FavoriteEvent {
  const FavoriteErrorEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteErrorEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoriteEvent.error()';
}


}




/// @nodoc
mixin _$FavoriteState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoriteState()';
}


}

/// @nodoc
class $FavoriteStateCopyWith<$Res>  {
$FavoriteStateCopyWith(FavoriteState _, $Res Function(FavoriteState) __);
}


/// Adds pattern-matching-related methods to [FavoriteState].
extension FavoriteStatePatterns on FavoriteState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( FavoriteLoadState value)?  load,TResult Function( FavoriteLoadedState value)?  loaded,TResult Function( FavoriteErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case FavoriteLoadState() when load != null:
return load(_that);case FavoriteLoadedState() when loaded != null:
return loaded(_that);case FavoriteErrorState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( FavoriteLoadState value)  load,required TResult Function( FavoriteLoadedState value)  loaded,required TResult Function( FavoriteErrorState value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case FavoriteLoadState():
return load(_that);case FavoriteLoadedState():
return loaded(_that);case FavoriteErrorState():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( FavoriteLoadState value)?  load,TResult? Function( FavoriteLoadedState value)?  loaded,TResult? Function( FavoriteErrorState value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case FavoriteLoadState() when load != null:
return load(_that);case FavoriteLoadedState() when loaded != null:
return loaded(_that);case FavoriteErrorState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  load,TResult Function( List<MovieDetailModel> movies)?  loaded,TResult Function()?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case FavoriteLoadState() when load != null:
return load();case FavoriteLoadedState() when loaded != null:
return loaded(_that.movies);case FavoriteErrorState() when error != null:
return error();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  load,required TResult Function( List<MovieDetailModel> movies)  loaded,required TResult Function()  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case FavoriteLoadState():
return load();case FavoriteLoadedState():
return loaded(_that.movies);case FavoriteErrorState():
return error();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  load,TResult? Function( List<MovieDetailModel> movies)?  loaded,TResult? Function()?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case FavoriteLoadState() when load != null:
return load();case FavoriteLoadedState() when loaded != null:
return loaded(_that.movies);case FavoriteErrorState() when error != null:
return error();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements FavoriteState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoriteState.initial()';
}


}




/// @nodoc


class FavoriteLoadState implements FavoriteState {
  const FavoriteLoadState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteLoadState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoriteState.load()';
}


}




/// @nodoc


class FavoriteLoadedState implements FavoriteState {
  const FavoriteLoadedState({required final  List<MovieDetailModel> movies}): _movies = movies;
  

 final  List<MovieDetailModel> _movies;
 List<MovieDetailModel> get movies {
  if (_movies is EqualUnmodifiableListView) return _movies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_movies);
}


/// Create a copy of FavoriteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteLoadedStateCopyWith<FavoriteLoadedState> get copyWith => _$FavoriteLoadedStateCopyWithImpl<FavoriteLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteLoadedState&&const DeepCollectionEquality().equals(other._movies, _movies));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_movies));

@override
String toString() {
  return 'FavoriteState.loaded(movies: $movies)';
}


}

/// @nodoc
abstract mixin class $FavoriteLoadedStateCopyWith<$Res> implements $FavoriteStateCopyWith<$Res> {
  factory $FavoriteLoadedStateCopyWith(FavoriteLoadedState value, $Res Function(FavoriteLoadedState) _then) = _$FavoriteLoadedStateCopyWithImpl;
@useResult
$Res call({
 List<MovieDetailModel> movies
});




}
/// @nodoc
class _$FavoriteLoadedStateCopyWithImpl<$Res>
    implements $FavoriteLoadedStateCopyWith<$Res> {
  _$FavoriteLoadedStateCopyWithImpl(this._self, this._then);

  final FavoriteLoadedState _self;
  final $Res Function(FavoriteLoadedState) _then;

/// Create a copy of FavoriteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? movies = null,}) {
  return _then(FavoriteLoadedState(
movies: null == movies ? _self._movies : movies // ignore: cast_nullable_to_non_nullable
as List<MovieDetailModel>,
  ));
}


}

/// @nodoc


class FavoriteErrorState implements FavoriteState {
  const FavoriteErrorState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteErrorState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoriteState.error()';
}


}




// dart format on
