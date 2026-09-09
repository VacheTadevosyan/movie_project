// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieResults {

 int get id; String get title;@JsonKey(name: 'poster_path') String? get posterPath;@JsonKey(name: 'backdrop_path') String? get backdropPath; String? get overview;@JsonKey(name: 'release_date') String get releaseDate;@JsonKey(name: 'vote_average') double get voteAverage;@JsonKey(name: 'vote_count') int get voteCount;@JsonKey(name: 'genre_ids') List<int> get genreIds;
/// Create a copy of MovieResults
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieResultsCopyWith<MovieResults> get copyWith => _$MovieResultsCopyWithImpl<MovieResults>(this as MovieResults, _$identity);

  /// Serializes this MovieResults to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieResults&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount)&&const DeepCollectionEquality().equals(other.genreIds, genreIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,posterPath,backdropPath,overview,releaseDate,voteAverage,voteCount,const DeepCollectionEquality().hash(genreIds));

@override
String toString() {
  return 'MovieResults(id: $id, title: $title, posterPath: $posterPath, backdropPath: $backdropPath, overview: $overview, releaseDate: $releaseDate, voteAverage: $voteAverage, voteCount: $voteCount, genreIds: $genreIds)';
}


}

/// @nodoc
abstract mixin class $MovieResultsCopyWith<$Res>  {
  factory $MovieResultsCopyWith(MovieResults value, $Res Function(MovieResults) _then) = _$MovieResultsCopyWithImpl;
@useResult
$Res call({
 int id, String title,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'backdrop_path') String? backdropPath, String? overview,@JsonKey(name: 'release_date') String releaseDate,@JsonKey(name: 'vote_average') double voteAverage,@JsonKey(name: 'vote_count') int voteCount,@JsonKey(name: 'genre_ids') List<int> genreIds
});




}
/// @nodoc
class _$MovieResultsCopyWithImpl<$Res>
    implements $MovieResultsCopyWith<$Res> {
  _$MovieResultsCopyWithImpl(this._self, this._then);

  final MovieResults _self;
  final $Res Function(MovieResults) _then;

/// Create a copy of MovieResults
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? posterPath = freezed,Object? backdropPath = freezed,Object? overview = freezed,Object? releaseDate = null,Object? voteAverage = null,Object? voteCount = null,Object? genreIds = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,releaseDate: null == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,voteCount: null == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int,genreIds: null == genreIds ? _self.genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieResults].
extension MovieResultsPatterns on MovieResults {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieResults value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieResults() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieResults value)  $default,){
final _that = this;
switch (_that) {
case _MovieResults():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieResults value)?  $default,){
final _that = this;
switch (_that) {
case _MovieResults() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'backdrop_path')  String? backdropPath,  String? overview, @JsonKey(name: 'release_date')  String releaseDate, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'vote_count')  int voteCount, @JsonKey(name: 'genre_ids')  List<int> genreIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieResults() when $default != null:
return $default(_that.id,_that.title,_that.posterPath,_that.backdropPath,_that.overview,_that.releaseDate,_that.voteAverage,_that.voteCount,_that.genreIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'backdrop_path')  String? backdropPath,  String? overview, @JsonKey(name: 'release_date')  String releaseDate, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'vote_count')  int voteCount, @JsonKey(name: 'genre_ids')  List<int> genreIds)  $default,) {final _that = this;
switch (_that) {
case _MovieResults():
return $default(_that.id,_that.title,_that.posterPath,_that.backdropPath,_that.overview,_that.releaseDate,_that.voteAverage,_that.voteCount,_that.genreIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'backdrop_path')  String? backdropPath,  String? overview, @JsonKey(name: 'release_date')  String releaseDate, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'vote_count')  int voteCount, @JsonKey(name: 'genre_ids')  List<int> genreIds)?  $default,) {final _that = this;
switch (_that) {
case _MovieResults() when $default != null:
return $default(_that.id,_that.title,_that.posterPath,_that.backdropPath,_that.overview,_that.releaseDate,_that.voteAverage,_that.voteCount,_that.genreIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MovieResults implements MovieResults {
  const _MovieResults({required this.id, required this.title, @JsonKey(name: 'poster_path') this.posterPath, @JsonKey(name: 'backdrop_path') this.backdropPath, this.overview, @JsonKey(name: 'release_date') required this.releaseDate, @JsonKey(name: 'vote_average') required this.voteAverage, @JsonKey(name: 'vote_count') required this.voteCount, @JsonKey(name: 'genre_ids') required final  List<int> genreIds}): _genreIds = genreIds;
  factory _MovieResults.fromJson(Map<String, dynamic> json) => _$MovieResultsFromJson(json);

@override final  int id;
@override final  String title;
@override@JsonKey(name: 'poster_path') final  String? posterPath;
@override@JsonKey(name: 'backdrop_path') final  String? backdropPath;
@override final  String? overview;
@override@JsonKey(name: 'release_date') final  String releaseDate;
@override@JsonKey(name: 'vote_average') final  double voteAverage;
@override@JsonKey(name: 'vote_count') final  int voteCount;
 final  List<int> _genreIds;
@override@JsonKey(name: 'genre_ids') List<int> get genreIds {
  if (_genreIds is EqualUnmodifiableListView) return _genreIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genreIds);
}


/// Create a copy of MovieResults
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieResultsCopyWith<_MovieResults> get copyWith => __$MovieResultsCopyWithImpl<_MovieResults>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieResultsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieResults&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount)&&const DeepCollectionEquality().equals(other._genreIds, _genreIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,posterPath,backdropPath,overview,releaseDate,voteAverage,voteCount,const DeepCollectionEquality().hash(_genreIds));

@override
String toString() {
  return 'MovieResults(id: $id, title: $title, posterPath: $posterPath, backdropPath: $backdropPath, overview: $overview, releaseDate: $releaseDate, voteAverage: $voteAverage, voteCount: $voteCount, genreIds: $genreIds)';
}


}

/// @nodoc
abstract mixin class _$MovieResultsCopyWith<$Res> implements $MovieResultsCopyWith<$Res> {
  factory _$MovieResultsCopyWith(_MovieResults value, $Res Function(_MovieResults) _then) = __$MovieResultsCopyWithImpl;
@override @useResult
$Res call({
 int id, String title,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'backdrop_path') String? backdropPath, String? overview,@JsonKey(name: 'release_date') String releaseDate,@JsonKey(name: 'vote_average') double voteAverage,@JsonKey(name: 'vote_count') int voteCount,@JsonKey(name: 'genre_ids') List<int> genreIds
});




}
/// @nodoc
class __$MovieResultsCopyWithImpl<$Res>
    implements _$MovieResultsCopyWith<$Res> {
  __$MovieResultsCopyWithImpl(this._self, this._then);

  final _MovieResults _self;
  final $Res Function(_MovieResults) _then;

/// Create a copy of MovieResults
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? posterPath = freezed,Object? backdropPath = freezed,Object? overview = freezed,Object? releaseDate = null,Object? voteAverage = null,Object? voteCount = null,Object? genreIds = null,}) {
  return _then(_MovieResults(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,releaseDate: null == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,voteCount: null == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int,genreIds: null == genreIds ? _self._genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
