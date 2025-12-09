// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent()';
}


}

/// @nodoc
class $SearchEventCopyWith<$Res>  {
$SearchEventCopyWith(SearchEvent _, $Res Function(SearchEvent) __);
}


/// Adds pattern-matching-related methods to [SearchEvent].
extension SearchEventPatterns on SearchEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadSearchEvent value)?  load,TResult Function( QueryChangedEvent value)?  queryChanged,TResult Function( LoadedSearchEvent value)?  loaded,TResult Function( ErrorSearchEvent value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadSearchEvent() when load != null:
return load(_that);case QueryChangedEvent() when queryChanged != null:
return queryChanged(_that);case LoadedSearchEvent() when loaded != null:
return loaded(_that);case ErrorSearchEvent() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadSearchEvent value)  load,required TResult Function( QueryChangedEvent value)  queryChanged,required TResult Function( LoadedSearchEvent value)  loaded,required TResult Function( ErrorSearchEvent value)  error,}){
final _that = this;
switch (_that) {
case LoadSearchEvent():
return load(_that);case QueryChangedEvent():
return queryChanged(_that);case LoadedSearchEvent():
return loaded(_that);case ErrorSearchEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadSearchEvent value)?  load,TResult? Function( QueryChangedEvent value)?  queryChanged,TResult? Function( LoadedSearchEvent value)?  loaded,TResult? Function( ErrorSearchEvent value)?  error,}){
final _that = this;
switch (_that) {
case LoadSearchEvent() when load != null:
return load(_that);case QueryChangedEvent() when queryChanged != null:
return queryChanged(_that);case LoadedSearchEvent() when loaded != null:
return loaded(_that);case ErrorSearchEvent() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  load,TResult Function( String query)?  queryChanged,TResult Function()?  loaded,TResult Function()?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadSearchEvent() when load != null:
return load();case QueryChangedEvent() when queryChanged != null:
return queryChanged(_that.query);case LoadedSearchEvent() when loaded != null:
return loaded();case ErrorSearchEvent() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  load,required TResult Function( String query)  queryChanged,required TResult Function()  loaded,required TResult Function()  error,}) {final _that = this;
switch (_that) {
case LoadSearchEvent():
return load();case QueryChangedEvent():
return queryChanged(_that.query);case LoadedSearchEvent():
return loaded();case ErrorSearchEvent():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  load,TResult? Function( String query)?  queryChanged,TResult? Function()?  loaded,TResult? Function()?  error,}) {final _that = this;
switch (_that) {
case LoadSearchEvent() when load != null:
return load();case QueryChangedEvent() when queryChanged != null:
return queryChanged(_that.query);case LoadedSearchEvent() when loaded != null:
return loaded();case ErrorSearchEvent() when error != null:
return error();case _:
  return null;

}
}

}

/// @nodoc


class LoadSearchEvent implements SearchEvent {
  const LoadSearchEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadSearchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent.load()';
}


}




/// @nodoc


class QueryChangedEvent implements SearchEvent {
  const QueryChangedEvent(this.query);
  

 final  String query;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QueryChangedEventCopyWith<QueryChangedEvent> get copyWith => _$QueryChangedEventCopyWithImpl<QueryChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QueryChangedEvent&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'SearchEvent.queryChanged(query: $query)';
}


}

/// @nodoc
abstract mixin class $QueryChangedEventCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory $QueryChangedEventCopyWith(QueryChangedEvent value, $Res Function(QueryChangedEvent) _then) = _$QueryChangedEventCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$QueryChangedEventCopyWithImpl<$Res>
    implements $QueryChangedEventCopyWith<$Res> {
  _$QueryChangedEventCopyWithImpl(this._self, this._then);

  final QueryChangedEvent _self;
  final $Res Function(QueryChangedEvent) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(QueryChangedEvent(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadedSearchEvent implements SearchEvent {
  const LoadedSearchEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedSearchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent.loaded()';
}


}




/// @nodoc


class ErrorSearchEvent implements SearchEvent {
  const ErrorSearchEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorSearchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent.error()';
}


}




/// @nodoc
mixin _$SearchState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchState()';
}


}

/// @nodoc
class $SearchStateCopyWith<$Res>  {
$SearchStateCopyWith(SearchState _, $Res Function(SearchState) __);
}


/// Adds pattern-matching-related methods to [SearchState].
extension SearchStatePatterns on SearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( LoadSearchState value)?  load,TResult Function( LoadedSearchState value)?  loaded,TResult Function( ErrorSearchState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LoadSearchState() when load != null:
return load(_that);case LoadedSearchState() when loaded != null:
return loaded(_that);case ErrorSearchState() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( LoadSearchState value)  load,required TResult Function( LoadedSearchState value)  loaded,required TResult Function( ErrorSearchState value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case LoadSearchState():
return load(_that);case LoadedSearchState():
return loaded(_that);case ErrorSearchState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( LoadSearchState value)?  load,TResult? Function( LoadedSearchState value)?  loaded,TResult? Function( ErrorSearchState value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LoadSearchState() when load != null:
return load(_that);case LoadedSearchState() when loaded != null:
return loaded(_that);case ErrorSearchState() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( String query)?  load,TResult Function( List<MovieResults> movie)?  loaded,TResult Function( String massage)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LoadSearchState() when load != null:
return load(_that.query);case LoadedSearchState() when loaded != null:
return loaded(_that.movie);case ErrorSearchState() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( String query)  load,required TResult Function( List<MovieResults> movie)  loaded,required TResult Function( String massage)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case LoadSearchState():
return load(_that.query);case LoadedSearchState():
return loaded(_that.movie);case ErrorSearchState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( String query)?  load,TResult? Function( List<MovieResults> movie)?  loaded,TResult? Function( String massage)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LoadSearchState() when load != null:
return load(_that.query);case LoadedSearchState() when loaded != null:
return loaded(_that.movie);case ErrorSearchState() when error != null:
return error(_that.massage);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements SearchState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchState.initial()';
}


}




/// @nodoc


class LoadSearchState implements SearchState {
  const LoadSearchState({required this.query});
  

 final  String query;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadSearchStateCopyWith<LoadSearchState> get copyWith => _$LoadSearchStateCopyWithImpl<LoadSearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadSearchState&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'SearchState.load(query: $query)';
}


}

/// @nodoc
abstract mixin class $LoadSearchStateCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory $LoadSearchStateCopyWith(LoadSearchState value, $Res Function(LoadSearchState) _then) = _$LoadSearchStateCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$LoadSearchStateCopyWithImpl<$Res>
    implements $LoadSearchStateCopyWith<$Res> {
  _$LoadSearchStateCopyWithImpl(this._self, this._then);

  final LoadSearchState _self;
  final $Res Function(LoadSearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(LoadSearchState(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadedSearchState implements SearchState {
  const LoadedSearchState({required final  List<MovieResults> movie}): _movie = movie;
  

 final  List<MovieResults> _movie;
 List<MovieResults> get movie {
  if (_movie is EqualUnmodifiableListView) return _movie;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_movie);
}


/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedSearchStateCopyWith<LoadedSearchState> get copyWith => _$LoadedSearchStateCopyWithImpl<LoadedSearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadedSearchState&&const DeepCollectionEquality().equals(other._movie, _movie));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_movie));

@override
String toString() {
  return 'SearchState.loaded(movie: $movie)';
}


}

/// @nodoc
abstract mixin class $LoadedSearchStateCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory $LoadedSearchStateCopyWith(LoadedSearchState value, $Res Function(LoadedSearchState) _then) = _$LoadedSearchStateCopyWithImpl;
@useResult
$Res call({
 List<MovieResults> movie
});




}
/// @nodoc
class _$LoadedSearchStateCopyWithImpl<$Res>
    implements $LoadedSearchStateCopyWith<$Res> {
  _$LoadedSearchStateCopyWithImpl(this._self, this._then);

  final LoadedSearchState _self;
  final $Res Function(LoadedSearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? movie = null,}) {
  return _then(LoadedSearchState(
movie: null == movie ? _self._movie : movie // ignore: cast_nullable_to_non_nullable
as List<MovieResults>,
  ));
}


}

/// @nodoc


class ErrorSearchState implements SearchState {
  const ErrorSearchState({required this.massage});
  

 final  String massage;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorSearchStateCopyWith<ErrorSearchState> get copyWith => _$ErrorSearchStateCopyWithImpl<ErrorSearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorSearchState&&(identical(other.massage, massage) || other.massage == massage));
}


@override
int get hashCode => Object.hash(runtimeType,massage);

@override
String toString() {
  return 'SearchState.error(massage: $massage)';
}


}

/// @nodoc
abstract mixin class $ErrorSearchStateCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory $ErrorSearchStateCopyWith(ErrorSearchState value, $Res Function(ErrorSearchState) _then) = _$ErrorSearchStateCopyWithImpl;
@useResult
$Res call({
 String massage
});




}
/// @nodoc
class _$ErrorSearchStateCopyWithImpl<$Res>
    implements $ErrorSearchStateCopyWith<$Res> {
  _$ErrorSearchStateCopyWithImpl(this._self, this._then);

  final ErrorSearchState _self;
  final $Res Function(ErrorSearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? massage = null,}) {
  return _then(ErrorSearchState(
massage: null == massage ? _self.massage : massage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
