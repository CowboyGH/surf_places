// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'places_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PlacesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlacesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlacesEvent()';
}


}

/// @nodoc
class $PlacesEventCopyWith<$Res>  {
$PlacesEventCopyWith(PlacesEvent _, $Res Function(PlacesEvent) __);
}


/// Adds pattern-matching-related methods to [PlacesEvent].
extension PlacesEventPatterns on PlacesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchPlaces value)?  fetchPlaces,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchPlaces() when fetchPlaces != null:
return fetchPlaces(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchPlaces value)  fetchPlaces,}){
final _that = this;
switch (_that) {
case _FetchPlaces():
return fetchPlaces(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchPlaces value)?  fetchPlaces,}){
final _that = this;
switch (_that) {
case _FetchPlaces() when fetchPlaces != null:
return fetchPlaces(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchPlaces,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchPlaces() when fetchPlaces != null:
return fetchPlaces();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchPlaces,}) {final _that = this;
switch (_that) {
case _FetchPlaces():
return fetchPlaces();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchPlaces,}) {final _that = this;
switch (_that) {
case _FetchPlaces() when fetchPlaces != null:
return fetchPlaces();case _:
  return null;

}
}

}

/// @nodoc


class _FetchPlaces implements PlacesEvent {
  const _FetchPlaces();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchPlaces);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlacesEvent.fetchPlaces()';
}


}




/// @nodoc
mixin _$PlacesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlacesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlacesState()';
}


}

/// @nodoc
class $PlacesStateCopyWith<$Res>  {
$PlacesStateCopyWith(PlacesState _, $Res Function(PlacesState) __);
}


/// Adds pattern-matching-related methods to [PlacesState].
extension PlacesStatePatterns on PlacesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _PlacesLoading value)?  loading,TResult Function( _PlacesLoaded value)?  loaded,TResult Function( _PlacesLoadError value)?  loadError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _PlacesLoading() when loading != null:
return loading(_that);case _PlacesLoaded() when loaded != null:
return loaded(_that);case _PlacesLoadError() when loadError != null:
return loadError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _PlacesLoading value)  loading,required TResult Function( _PlacesLoaded value)  loaded,required TResult Function( _PlacesLoadError value)  loadError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _PlacesLoading():
return loading(_that);case _PlacesLoaded():
return loaded(_that);case _PlacesLoadError():
return loadError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _PlacesLoading value)?  loading,TResult? Function( _PlacesLoaded value)?  loaded,TResult? Function( _PlacesLoadError value)?  loadError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _PlacesLoading() when loading != null:
return loading(_that);case _PlacesLoaded() when loaded != null:
return loaded(_that);case _PlacesLoadError() when loadError != null:
return loadError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<PlaceEntity> places)?  loaded,TResult Function( Failure failure)?  loadError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _PlacesLoading() when loading != null:
return loading();case _PlacesLoaded() when loaded != null:
return loaded(_that.places);case _PlacesLoadError() when loadError != null:
return loadError(_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<PlaceEntity> places)  loaded,required TResult Function( Failure failure)  loadError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _PlacesLoading():
return loading();case _PlacesLoaded():
return loaded(_that.places);case _PlacesLoadError():
return loadError(_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<PlaceEntity> places)?  loaded,TResult? Function( Failure failure)?  loadError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _PlacesLoading() when loading != null:
return loading();case _PlacesLoaded() when loaded != null:
return loaded(_that.places);case _PlacesLoadError() when loadError != null:
return loadError(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements PlacesState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlacesState.initial()';
}


}




/// @nodoc


class _PlacesLoading implements PlacesState {
  const _PlacesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlacesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PlacesState.loading()';
}


}




/// @nodoc


class _PlacesLoaded implements PlacesState {
  const _PlacesLoaded(final  List<PlaceEntity> places): _places = places;
  

 final  List<PlaceEntity> _places;
 List<PlaceEntity> get places {
  if (_places is EqualUnmodifiableListView) return _places;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_places);
}


/// Create a copy of PlacesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlacesLoadedCopyWith<_PlacesLoaded> get copyWith => __$PlacesLoadedCopyWithImpl<_PlacesLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlacesLoaded&&const DeepCollectionEquality().equals(other._places, _places));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_places));

@override
String toString() {
  return 'PlacesState.loaded(places: $places)';
}


}

/// @nodoc
abstract mixin class _$PlacesLoadedCopyWith<$Res> implements $PlacesStateCopyWith<$Res> {
  factory _$PlacesLoadedCopyWith(_PlacesLoaded value, $Res Function(_PlacesLoaded) _then) = __$PlacesLoadedCopyWithImpl;
@useResult
$Res call({
 List<PlaceEntity> places
});




}
/// @nodoc
class __$PlacesLoadedCopyWithImpl<$Res>
    implements _$PlacesLoadedCopyWith<$Res> {
  __$PlacesLoadedCopyWithImpl(this._self, this._then);

  final _PlacesLoaded _self;
  final $Res Function(_PlacesLoaded) _then;

/// Create a copy of PlacesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? places = null,}) {
  return _then(_PlacesLoaded(
null == places ? _self._places : places // ignore: cast_nullable_to_non_nullable
as List<PlaceEntity>,
  ));
}


}

/// @nodoc


class _PlacesLoadError implements PlacesState {
  const _PlacesLoadError(this.failure);
  

 final  Failure failure;

/// Create a copy of PlacesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlacesLoadErrorCopyWith<_PlacesLoadError> get copyWith => __$PlacesLoadErrorCopyWithImpl<_PlacesLoadError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlacesLoadError&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'PlacesState.loadError(failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$PlacesLoadErrorCopyWith<$Res> implements $PlacesStateCopyWith<$Res> {
  factory _$PlacesLoadErrorCopyWith(_PlacesLoadError value, $Res Function(_PlacesLoadError) _then) = __$PlacesLoadErrorCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class __$PlacesLoadErrorCopyWithImpl<$Res>
    implements _$PlacesLoadErrorCopyWith<$Res> {
  __$PlacesLoadErrorCopyWithImpl(this._self, this._then);

  final _PlacesLoadError _self;
  final $Res Function(_PlacesLoadError) _then;

/// Create a copy of PlacesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(_PlacesLoadError(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

// dart format on
