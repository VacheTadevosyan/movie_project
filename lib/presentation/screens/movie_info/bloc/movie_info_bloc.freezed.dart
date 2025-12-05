// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MovieInfoEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieInfoEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MovieInfoEvent()';
}


}

/// @nodoc
class $MovieInfoEventCopyWith<$Res>  {
$MovieInfoEventCopyWith(MovieInfoEvent _, $Res Function(MovieInfoEvent) __);
}


/// Adds pattern-matching-related methods to [MovieInfoEvent].
extension MovieInfoEventPatterns on MovieInfoEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MovieInfoLoad value)?  load,TResult Function( MovieInfoLoaded value)?  loaded,TResult Function( MovieInfoError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MovieInfoLoad() when load != null:
return load(_that);case MovieInfoLoaded() when loaded != null:
return loaded(_that);case MovieInfoError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MovieInfoLoad value)  load,required TResult Function( MovieInfoLoaded value)  loaded,required TResult Function( MovieInfoError value)  error,}){
final _that = this;
switch (_that) {
case MovieInfoLoad():
return load(_that);case MovieInfoLoaded():
return loaded(_that);case MovieInfoError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MovieInfoLoad value)?  load,TResult? Function( MovieInfoLoaded value)?  loaded,TResult? Function( MovieInfoError value)?  error,}){
final _that = this;
switch (_that) {
case MovieInfoLoad() when load != null:
return load(_that);case MovieInfoLoaded() when loaded != null:
return loaded(_that);case MovieInfoError() when error != null:
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
case MovieInfoLoad() when load != null:
return load();case MovieInfoLoaded() when loaded != null:
return loaded();case MovieInfoError() when error != null:
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
case MovieInfoLoad():
return load();case MovieInfoLoaded():
return loaded();case MovieInfoError():
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
case MovieInfoLoad() when load != null:
return load();case MovieInfoLoaded() when loaded != null:
return loaded();case MovieInfoError() when error != null:
return error();case _:
  return null;

}
}

}

/// @nodoc


class MovieInfoLoad implements MovieInfoEvent {
  const MovieInfoLoad();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieInfoLoad);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MovieInfoEvent.load()';
}


}




/// @nodoc


class MovieInfoLoaded implements MovieInfoEvent {
  const MovieInfoLoaded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieInfoLoaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MovieInfoEvent.loaded()';
}


}




/// @nodoc


class MovieInfoError implements MovieInfoEvent {
  const MovieInfoError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieInfoError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MovieInfoEvent.error()';
}


}




/// @nodoc
mixin _$MovieInfoState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieInfoState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MovieInfoState()';
}


}

/// @nodoc
class $MovieInfoStateCopyWith<$Res>  {
$MovieInfoStateCopyWith(MovieInfoState _, $Res Function(MovieInfoState) __);
}


/// Adds pattern-matching-related methods to [MovieInfoState].
extension MovieInfoStatePatterns on MovieInfoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MovieInfoInitialState value)?  initial,TResult Function( MovieInfoloadState value)?  load,TResult Function( MovieInfoLoadedState value)?  loaded,TResult Function( MovieInfoErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MovieInfoInitialState() when initial != null:
return initial(_that);case MovieInfoloadState() when load != null:
return load(_that);case MovieInfoLoadedState() when loaded != null:
return loaded(_that);case MovieInfoErrorState() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MovieInfoInitialState value)  initial,required TResult Function( MovieInfoloadState value)  load,required TResult Function( MovieInfoLoadedState value)  loaded,required TResult Function( MovieInfoErrorState value)  error,}){
final _that = this;
switch (_that) {
case MovieInfoInitialState():
return initial(_that);case MovieInfoloadState():
return load(_that);case MovieInfoLoadedState():
return loaded(_that);case MovieInfoErrorState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MovieInfoInitialState value)?  initial,TResult? Function( MovieInfoloadState value)?  load,TResult? Function( MovieInfoLoadedState value)?  loaded,TResult? Function( MovieInfoErrorState value)?  error,}){
final _that = this;
switch (_that) {
case MovieInfoInitialState() when initial != null:
return initial(_that);case MovieInfoloadState() when load != null:
return load(_that);case MovieInfoLoadedState() when loaded != null:
return loaded(_that);case MovieInfoErrorState() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  load,TResult Function( List<MovieResults> movie)?  loaded,TResult Function( String massage)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MovieInfoInitialState() when initial != null:
return initial();case MovieInfoloadState() when load != null:
return load();case MovieInfoLoadedState() when loaded != null:
return loaded(_that.movie);case MovieInfoErrorState() when error != null:
return error(_that.massage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  load,required TResult Function( List<MovieResults> movie)  loaded,required TResult Function( String massage)  error,}) {final _that = this;
switch (_that) {
case MovieInfoInitialState():
return initial();case MovieInfoloadState():
return load();case MovieInfoLoadedState():
return loaded(_that.movie);case MovieInfoErrorState():
return error(_that.massage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  load,TResult? Function( List<MovieResults> movie)?  loaded,TResult? Function( String massage)?  error,}) {final _that = this;
switch (_that) {
case MovieInfoInitialState() when initial != null:
return initial();case MovieInfoloadState() when load != null:
return load();case MovieInfoLoadedState() when loaded != null:
return loaded(_that.movie);case MovieInfoErrorState() when error != null:
return error(_that.massage);case _:
  return null;

}
}

}

/// @nodoc


class MovieInfoInitialState implements MovieInfoState {
  const MovieInfoInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieInfoInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MovieInfoState.initial()';
}


}




/// @nodoc


class MovieInfoloadState implements MovieInfoState {
  const MovieInfoloadState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieInfoloadState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MovieInfoState.load()';
}


}




/// @nodoc


class MovieInfoLoadedState implements MovieInfoState {
  const MovieInfoLoadedState({required final  List<MovieResults> movie}): _movie = movie;
  

 final  List<MovieResults> _movie;
 List<MovieResults> get movie {
  if (_movie is EqualUnmodifiableListView) return _movie;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_movie);
}


/// Create a copy of MovieInfoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieInfoLoadedStateCopyWith<MovieInfoLoadedState> get copyWith => _$MovieInfoLoadedStateCopyWithImpl<MovieInfoLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieInfoLoadedState&&const DeepCollectionEquality().equals(other._movie, _movie));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_movie));

@override
String toString() {
  return 'MovieInfoState.loaded(movie: $movie)';
}


}

/// @nodoc
abstract mixin class $MovieInfoLoadedStateCopyWith<$Res> implements $MovieInfoStateCopyWith<$Res> {
  factory $MovieInfoLoadedStateCopyWith(MovieInfoLoadedState value, $Res Function(MovieInfoLoadedState) _then) = _$MovieInfoLoadedStateCopyWithImpl;
@useResult
$Res call({
 List<MovieResults> movie
});




}
/// @nodoc
class _$MovieInfoLoadedStateCopyWithImpl<$Res>
    implements $MovieInfoLoadedStateCopyWith<$Res> {
  _$MovieInfoLoadedStateCopyWithImpl(this._self, this._then);

  final MovieInfoLoadedState _self;
  final $Res Function(MovieInfoLoadedState) _then;

/// Create a copy of MovieInfoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? movie = null,}) {
  return _then(MovieInfoLoadedState(
movie: null == movie ? _self._movie : movie // ignore: cast_nullable_to_non_nullable
as List<MovieResults>,
  ));
}


}

/// @nodoc


class MovieInfoErrorState implements MovieInfoState {
  const MovieInfoErrorState({required this.massage});
  

 final  String massage;

/// Create a copy of MovieInfoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieInfoErrorStateCopyWith<MovieInfoErrorState> get copyWith => _$MovieInfoErrorStateCopyWithImpl<MovieInfoErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieInfoErrorState&&(identical(other.massage, massage) || other.massage == massage));
}


@override
int get hashCode => Object.hash(runtimeType,massage);

@override
String toString() {
  return 'MovieInfoState.error(massage: $massage)';
}


}

/// @nodoc
abstract mixin class $MovieInfoErrorStateCopyWith<$Res> implements $MovieInfoStateCopyWith<$Res> {
  factory $MovieInfoErrorStateCopyWith(MovieInfoErrorState value, $Res Function(MovieInfoErrorState) _then) = _$MovieInfoErrorStateCopyWithImpl;
@useResult
$Res call({
 String massage
});




}
/// @nodoc
class _$MovieInfoErrorStateCopyWithImpl<$Res>
    implements $MovieInfoErrorStateCopyWith<$Res> {
  _$MovieInfoErrorStateCopyWithImpl(this._self, this._then);

  final MovieInfoErrorState _self;
  final $Res Function(MovieInfoErrorState) _then;

/// Create a copy of MovieInfoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? massage = null,}) {
  return _then(MovieInfoErrorState(
massage: null == massage ? _self.massage : massage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
