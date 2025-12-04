// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MovieLoadEvent value)?  load,TResult Function( MovieLoadedEvent value)?  loaded,TResult Function( MovieErrorEvent value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MovieLoadEvent() when load != null:
return load(_that);case MovieLoadedEvent() when loaded != null:
return loaded(_that);case MovieErrorEvent() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MovieLoadEvent value)  load,required TResult Function( MovieLoadedEvent value)  loaded,required TResult Function( MovieErrorEvent value)  error,}){
final _that = this;
switch (_that) {
case MovieLoadEvent():
return load(_that);case MovieLoadedEvent():
return loaded(_that);case MovieErrorEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MovieLoadEvent value)?  load,TResult? Function( MovieLoadedEvent value)?  loaded,TResult? Function( MovieErrorEvent value)?  error,}){
final _that = this;
switch (_that) {
case MovieLoadEvent() when load != null:
return load(_that);case MovieLoadedEvent() when loaded != null:
return loaded(_that);case MovieErrorEvent() when error != null:
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
case MovieLoadEvent() when load != null:
return load();case MovieLoadedEvent() when loaded != null:
return loaded();case MovieErrorEvent() when error != null:
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
case MovieLoadEvent():
return load();case MovieLoadedEvent():
return loaded();case MovieErrorEvent():
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
case MovieLoadEvent() when load != null:
return load();case MovieLoadedEvent() when loaded != null:
return loaded();case MovieErrorEvent() when error != null:
return error();case _:
  return null;

}
}

}

/// @nodoc


class MovieLoadEvent implements HomeEvent {
  const MovieLoadEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieLoadEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.load()';
}


}




/// @nodoc


class MovieLoadedEvent implements HomeEvent {
  const MovieLoadedEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieLoadedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.loaded()';
}


}




/// @nodoc


class MovieErrorEvent implements HomeEvent {
  const MovieErrorEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieErrorEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.error()';
}


}




/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( MovieLoadState value)?  load,TResult Function( MovieLoadedState value)?  loaded,TResult Function( MovieErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case MovieLoadState() when load != null:
return load(_that);case MovieLoadedState() when loaded != null:
return loaded(_that);case MovieErrorState() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( MovieLoadState value)  load,required TResult Function( MovieLoadedState value)  loaded,required TResult Function( MovieErrorState value)  error,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case MovieLoadState():
return load(_that);case MovieLoadedState():
return loaded(_that);case MovieErrorState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( MovieLoadState value)?  load,TResult? Function( MovieLoadedState value)?  loaded,TResult? Function( MovieErrorState value)?  error,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case MovieLoadState() when load != null:
return load(_that);case MovieLoadedState() when loaded != null:
return loaded(_that);case MovieErrorState() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  load,TResult Function( MovieResultsResponse movie)?  loaded,TResult Function( String massage)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case MovieLoadState() when load != null:
return load();case MovieLoadedState() when loaded != null:
return loaded(_that.movie);case MovieErrorState() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  load,required TResult Function( MovieResultsResponse movie)  loaded,required TResult Function( String massage)  error,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case MovieLoadState():
return load();case MovieLoadedState():
return loaded(_that.movie);case MovieErrorState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  load,TResult? Function( MovieResultsResponse movie)?  loaded,TResult? Function( String massage)?  error,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case MovieLoadState() when load != null:
return load();case MovieLoadedState() when loaded != null:
return loaded(_that.movie);case MovieErrorState() when error != null:
return error(_that.massage);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements HomeState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class MovieLoadState implements HomeState {
  const MovieLoadState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieLoadState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.load()';
}


}




/// @nodoc


class MovieLoadedState implements HomeState {
  const MovieLoadedState({required this.movie});
  

 final  MovieResultsResponse movie;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieLoadedStateCopyWith<MovieLoadedState> get copyWith => _$MovieLoadedStateCopyWithImpl<MovieLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieLoadedState&&(identical(other.movie, movie) || other.movie == movie));
}


@override
int get hashCode => Object.hash(runtimeType,movie);

@override
String toString() {
  return 'HomeState.loaded(movie: $movie)';
}


}

/// @nodoc
abstract mixin class $MovieLoadedStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $MovieLoadedStateCopyWith(MovieLoadedState value, $Res Function(MovieLoadedState) _then) = _$MovieLoadedStateCopyWithImpl;
@useResult
$Res call({
 MovieResultsResponse movie
});


$MovieResultsResponseCopyWith<$Res> get movie;

}
/// @nodoc
class _$MovieLoadedStateCopyWithImpl<$Res>
    implements $MovieLoadedStateCopyWith<$Res> {
  _$MovieLoadedStateCopyWithImpl(this._self, this._then);

  final MovieLoadedState _self;
  final $Res Function(MovieLoadedState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? movie = null,}) {
  return _then(MovieLoadedState(
movie: null == movie ? _self.movie : movie // ignore: cast_nullable_to_non_nullable
as MovieResultsResponse,
  ));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MovieResultsResponseCopyWith<$Res> get movie {
  
  return $MovieResultsResponseCopyWith<$Res>(_self.movie, (value) {
    return _then(_self.copyWith(movie: value));
  });
}
}

/// @nodoc


class MovieErrorState implements HomeState {
  const MovieErrorState({required this.massage});
  

 final  String massage;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieErrorStateCopyWith<MovieErrorState> get copyWith => _$MovieErrorStateCopyWithImpl<MovieErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieErrorState&&(identical(other.massage, massage) || other.massage == massage));
}


@override
int get hashCode => Object.hash(runtimeType,massage);

@override
String toString() {
  return 'HomeState.error(massage: $massage)';
}


}

/// @nodoc
abstract mixin class $MovieErrorStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $MovieErrorStateCopyWith(MovieErrorState value, $Res Function(MovieErrorState) _then) = _$MovieErrorStateCopyWithImpl;
@useResult
$Res call({
 String massage
});




}
/// @nodoc
class _$MovieErrorStateCopyWithImpl<$Res>
    implements $MovieErrorStateCopyWith<$Res> {
  _$MovieErrorStateCopyWithImpl(this._self, this._then);

  final MovieErrorState _self;
  final $Res Function(MovieErrorState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? massage = null,}) {
  return _then(MovieErrorState(
massage: null == massage ? _self.massage : massage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
