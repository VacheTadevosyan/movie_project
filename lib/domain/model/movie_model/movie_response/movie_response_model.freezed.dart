// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieResultsResponse {

 int get page; List<MovieResults> get results; int get total_pages; int get total_results;
/// Create a copy of MovieResultsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieResultsResponseCopyWith<MovieResultsResponse> get copyWith => _$MovieResultsResponseCopyWithImpl<MovieResultsResponse>(this as MovieResultsResponse, _$identity);

  /// Serializes this MovieResultsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieResultsResponse&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other.results, results)&&(identical(other.total_pages, total_pages) || other.total_pages == total_pages)&&(identical(other.total_results, total_results) || other.total_results == total_results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,const DeepCollectionEquality().hash(results),total_pages,total_results);

@override
String toString() {
  return 'MovieResultsResponse(page: $page, results: $results, total_pages: $total_pages, total_results: $total_results)';
}


}

/// @nodoc
abstract mixin class $MovieResultsResponseCopyWith<$Res>  {
  factory $MovieResultsResponseCopyWith(MovieResultsResponse value, $Res Function(MovieResultsResponse) _then) = _$MovieResultsResponseCopyWithImpl;
@useResult
$Res call({
 int page, List<MovieResults> results, int total_pages, int total_results
});




}
/// @nodoc
class _$MovieResultsResponseCopyWithImpl<$Res>
    implements $MovieResultsResponseCopyWith<$Res> {
  _$MovieResultsResponseCopyWithImpl(this._self, this._then);

  final MovieResultsResponse _self;
  final $Res Function(MovieResultsResponse) _then;

/// Create a copy of MovieResultsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? results = null,Object? total_pages = null,Object? total_results = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<MovieResults>,total_pages: null == total_pages ? _self.total_pages : total_pages // ignore: cast_nullable_to_non_nullable
as int,total_results: null == total_results ? _self.total_results : total_results // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieResultsResponse].
extension MovieResultsResponsePatterns on MovieResultsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieResultsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieResultsResponse() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieResultsResponse value)  $default,){
final _that = this;
switch (_that) {
case _MovieResultsResponse():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieResultsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MovieResultsResponse() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  List<MovieResults> results,  int total_pages,  int total_results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieResultsResponse() when $default != null:
return $default(_that.page,_that.results,_that.total_pages,_that.total_results);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  List<MovieResults> results,  int total_pages,  int total_results)  $default,) {final _that = this;
switch (_that) {
case _MovieResultsResponse():
return $default(_that.page,_that.results,_that.total_pages,_that.total_results);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  List<MovieResults> results,  int total_pages,  int total_results)?  $default,) {final _that = this;
switch (_that) {
case _MovieResultsResponse() when $default != null:
return $default(_that.page,_that.results,_that.total_pages,_that.total_results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MovieResultsResponse implements MovieResultsResponse {
  const _MovieResultsResponse({required this.page, required final  List<MovieResults> results, required this.total_pages, required this.total_results}): _results = results;
  factory _MovieResultsResponse.fromJson(Map<String, dynamic> json) => _$MovieResultsResponseFromJson(json);

@override final  int page;
 final  List<MovieResults> _results;
@override List<MovieResults> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

@override final  int total_pages;
@override final  int total_results;

/// Create a copy of MovieResultsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieResultsResponseCopyWith<_MovieResultsResponse> get copyWith => __$MovieResultsResponseCopyWithImpl<_MovieResultsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieResultsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieResultsResponse&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other._results, _results)&&(identical(other.total_pages, total_pages) || other.total_pages == total_pages)&&(identical(other.total_results, total_results) || other.total_results == total_results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,const DeepCollectionEquality().hash(_results),total_pages,total_results);

@override
String toString() {
  return 'MovieResultsResponse(page: $page, results: $results, total_pages: $total_pages, total_results: $total_results)';
}


}

/// @nodoc
abstract mixin class _$MovieResultsResponseCopyWith<$Res> implements $MovieResultsResponseCopyWith<$Res> {
  factory _$MovieResultsResponseCopyWith(_MovieResultsResponse value, $Res Function(_MovieResultsResponse) _then) = __$MovieResultsResponseCopyWithImpl;
@override @useResult
$Res call({
 int page, List<MovieResults> results, int total_pages, int total_results
});




}
/// @nodoc
class __$MovieResultsResponseCopyWithImpl<$Res>
    implements _$MovieResultsResponseCopyWith<$Res> {
  __$MovieResultsResponseCopyWithImpl(this._self, this._then);

  final _MovieResultsResponse _self;
  final $Res Function(_MovieResultsResponse) _then;

/// Create a copy of MovieResultsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? results = null,Object? total_pages = null,Object? total_results = null,}) {
  return _then(_MovieResultsResponse(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<MovieResults>,total_pages: null == total_pages ? _self.total_pages : total_pages // ignore: cast_nullable_to_non_nullable
as int,total_results: null == total_results ? _self.total_results : total_results // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
