// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'places_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PlacesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPlaces,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPlaces,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPlaces,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPlaces value) fetchPlaces,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchPlaces value)? fetchPlaces,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPlaces value)? fetchPlaces,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesEventCopyWith<$Res> {
  factory $PlacesEventCopyWith(
    PlacesEvent value,
    $Res Function(PlacesEvent) then,
  ) = _$PlacesEventCopyWithImpl<$Res, PlacesEvent>;
}

/// @nodoc
class _$PlacesEventCopyWithImpl<$Res, $Val extends PlacesEvent>
    implements $PlacesEventCopyWith<$Res> {
  _$PlacesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlacesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchPlacesImplCopyWith<$Res> {
  factory _$$FetchPlacesImplCopyWith(
    _$FetchPlacesImpl value,
    $Res Function(_$FetchPlacesImpl) then,
  ) = __$$FetchPlacesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchPlacesImplCopyWithImpl<$Res>
    extends _$PlacesEventCopyWithImpl<$Res, _$FetchPlacesImpl>
    implements _$$FetchPlacesImplCopyWith<$Res> {
  __$$FetchPlacesImplCopyWithImpl(
    _$FetchPlacesImpl _value,
    $Res Function(_$FetchPlacesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlacesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchPlacesImpl implements _FetchPlaces {
  const _$FetchPlacesImpl();

  @override
  String toString() {
    return 'PlacesEvent.fetchPlaces()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchPlacesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPlaces,
  }) {
    return fetchPlaces();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPlaces,
  }) {
    return fetchPlaces?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPlaces,
    required TResult orElse(),
  }) {
    if (fetchPlaces != null) {
      return fetchPlaces();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPlaces value) fetchPlaces,
  }) {
    return fetchPlaces(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchPlaces value)? fetchPlaces,
  }) {
    return fetchPlaces?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPlaces value)? fetchPlaces,
    required TResult orElse(),
  }) {
    if (fetchPlaces != null) {
      return fetchPlaces(this);
    }
    return orElse();
  }
}

abstract class _FetchPlaces implements PlacesEvent {
  const factory _FetchPlaces() = _$FetchPlacesImpl;
}

/// @nodoc
mixin _$PlacesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PlaceEntity> places) loaded,
    required TResult Function(Failure failure) loadError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PlaceEntity> places)? loaded,
    TResult? Function(Failure failure)? loadError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PlaceEntity> places)? loaded,
    TResult Function(Failure failure)? loadError,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PlacesLoading value) loading,
    required TResult Function(_PlacesLoaded value) loaded,
    required TResult Function(_PlacesLoadError value) loadError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PlacesLoading value)? loading,
    TResult? Function(_PlacesLoaded value)? loaded,
    TResult? Function(_PlacesLoadError value)? loadError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PlacesLoading value)? loading,
    TResult Function(_PlacesLoaded value)? loaded,
    TResult Function(_PlacesLoadError value)? loadError,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesStateCopyWith<$Res> {
  factory $PlacesStateCopyWith(
    PlacesState value,
    $Res Function(PlacesState) then,
  ) = _$PlacesStateCopyWithImpl<$Res, PlacesState>;
}

/// @nodoc
class _$PlacesStateCopyWithImpl<$Res, $Val extends PlacesState>
    implements $PlacesStateCopyWith<$Res> {
  _$PlacesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlacesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PlacesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlacesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PlacesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PlaceEntity> places) loaded,
    required TResult Function(Failure failure) loadError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PlaceEntity> places)? loaded,
    TResult? Function(Failure failure)? loadError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PlaceEntity> places)? loaded,
    TResult Function(Failure failure)? loadError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PlacesLoading value) loading,
    required TResult Function(_PlacesLoaded value) loaded,
    required TResult Function(_PlacesLoadError value) loadError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PlacesLoading value)? loading,
    TResult? Function(_PlacesLoaded value)? loaded,
    TResult? Function(_PlacesLoadError value)? loadError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PlacesLoading value)? loading,
    TResult Function(_PlacesLoaded value)? loaded,
    TResult Function(_PlacesLoadError value)? loadError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PlacesState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$PlacesLoadingImplCopyWith<$Res> {
  factory _$$PlacesLoadingImplCopyWith(
    _$PlacesLoadingImpl value,
    $Res Function(_$PlacesLoadingImpl) then,
  ) = __$$PlacesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlacesLoadingImplCopyWithImpl<$Res>
    extends _$PlacesStateCopyWithImpl<$Res, _$PlacesLoadingImpl>
    implements _$$PlacesLoadingImplCopyWith<$Res> {
  __$$PlacesLoadingImplCopyWithImpl(
    _$PlacesLoadingImpl _value,
    $Res Function(_$PlacesLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlacesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PlacesLoadingImpl implements _PlacesLoading {
  const _$PlacesLoadingImpl();

  @override
  String toString() {
    return 'PlacesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlacesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PlaceEntity> places) loaded,
    required TResult Function(Failure failure) loadError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PlaceEntity> places)? loaded,
    TResult? Function(Failure failure)? loadError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PlaceEntity> places)? loaded,
    TResult Function(Failure failure)? loadError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PlacesLoading value) loading,
    required TResult Function(_PlacesLoaded value) loaded,
    required TResult Function(_PlacesLoadError value) loadError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PlacesLoading value)? loading,
    TResult? Function(_PlacesLoaded value)? loaded,
    TResult? Function(_PlacesLoadError value)? loadError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PlacesLoading value)? loading,
    TResult Function(_PlacesLoaded value)? loaded,
    TResult Function(_PlacesLoadError value)? loadError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PlacesLoading implements PlacesState {
  const factory _PlacesLoading() = _$PlacesLoadingImpl;
}

/// @nodoc
abstract class _$$PlacesLoadedImplCopyWith<$Res> {
  factory _$$PlacesLoadedImplCopyWith(
    _$PlacesLoadedImpl value,
    $Res Function(_$PlacesLoadedImpl) then,
  ) = __$$PlacesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PlaceEntity> places});
}

/// @nodoc
class __$$PlacesLoadedImplCopyWithImpl<$Res>
    extends _$PlacesStateCopyWithImpl<$Res, _$PlacesLoadedImpl>
    implements _$$PlacesLoadedImplCopyWith<$Res> {
  __$$PlacesLoadedImplCopyWithImpl(
    _$PlacesLoadedImpl _value,
    $Res Function(_$PlacesLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlacesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? places = null}) {
    return _then(
      _$PlacesLoadedImpl(
        null == places
            ? _value._places
            : places // ignore: cast_nullable_to_non_nullable
                  as List<PlaceEntity>,
      ),
    );
  }
}

/// @nodoc

class _$PlacesLoadedImpl implements _PlacesLoaded {
  const _$PlacesLoadedImpl(final List<PlaceEntity> places) : _places = places;

  final List<PlaceEntity> _places;
  @override
  List<PlaceEntity> get places {
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  @override
  String toString() {
    return 'PlacesState.loaded(places: $places)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlacesLoadedImpl &&
            const DeepCollectionEquality().equals(other._places, _places));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_places));

  /// Create a copy of PlacesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlacesLoadedImplCopyWith<_$PlacesLoadedImpl> get copyWith =>
      __$$PlacesLoadedImplCopyWithImpl<_$PlacesLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PlaceEntity> places) loaded,
    required TResult Function(Failure failure) loadError,
  }) {
    return loaded(places);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PlaceEntity> places)? loaded,
    TResult? Function(Failure failure)? loadError,
  }) {
    return loaded?.call(places);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PlaceEntity> places)? loaded,
    TResult Function(Failure failure)? loadError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(places);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PlacesLoading value) loading,
    required TResult Function(_PlacesLoaded value) loaded,
    required TResult Function(_PlacesLoadError value) loadError,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PlacesLoading value)? loading,
    TResult? Function(_PlacesLoaded value)? loaded,
    TResult? Function(_PlacesLoadError value)? loadError,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PlacesLoading value)? loading,
    TResult Function(_PlacesLoaded value)? loaded,
    TResult Function(_PlacesLoadError value)? loadError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _PlacesLoaded implements PlacesState {
  const factory _PlacesLoaded(final List<PlaceEntity> places) =
      _$PlacesLoadedImpl;

  List<PlaceEntity> get places;

  /// Create a copy of PlacesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlacesLoadedImplCopyWith<_$PlacesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlacesLoadErrorImplCopyWith<$Res> {
  factory _$$PlacesLoadErrorImplCopyWith(
    _$PlacesLoadErrorImpl value,
    $Res Function(_$PlacesLoadErrorImpl) then,
  ) = __$$PlacesLoadErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$PlacesLoadErrorImplCopyWithImpl<$Res>
    extends _$PlacesStateCopyWithImpl<$Res, _$PlacesLoadErrorImpl>
    implements _$$PlacesLoadErrorImplCopyWith<$Res> {
  __$$PlacesLoadErrorImplCopyWithImpl(
    _$PlacesLoadErrorImpl _value,
    $Res Function(_$PlacesLoadErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlacesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? failure = null}) {
    return _then(
      _$PlacesLoadErrorImpl(
        null == failure
            ? _value.failure
            : failure // ignore: cast_nullable_to_non_nullable
                  as Failure,
      ),
    );
  }
}

/// @nodoc

class _$PlacesLoadErrorImpl implements _PlacesLoadError {
  const _$PlacesLoadErrorImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'PlacesState.loadError(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlacesLoadErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of PlacesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlacesLoadErrorImplCopyWith<_$PlacesLoadErrorImpl> get copyWith =>
      __$$PlacesLoadErrorImplCopyWithImpl<_$PlacesLoadErrorImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PlaceEntity> places) loaded,
    required TResult Function(Failure failure) loadError,
  }) {
    return loadError(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PlaceEntity> places)? loaded,
    TResult? Function(Failure failure)? loadError,
  }) {
    return loadError?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PlaceEntity> places)? loaded,
    TResult Function(Failure failure)? loadError,
    required TResult orElse(),
  }) {
    if (loadError != null) {
      return loadError(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PlacesLoading value) loading,
    required TResult Function(_PlacesLoaded value) loaded,
    required TResult Function(_PlacesLoadError value) loadError,
  }) {
    return loadError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PlacesLoading value)? loading,
    TResult? Function(_PlacesLoaded value)? loaded,
    TResult? Function(_PlacesLoadError value)? loadError,
  }) {
    return loadError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PlacesLoading value)? loading,
    TResult Function(_PlacesLoaded value)? loaded,
    TResult Function(_PlacesLoadError value)? loadError,
    required TResult orElse(),
  }) {
    if (loadError != null) {
      return loadError(this);
    }
    return orElse();
  }
}

abstract class _PlacesLoadError implements PlacesState {
  const factory _PlacesLoadError(final Failure failure) = _$PlacesLoadErrorImpl;

  Failure get failure;

  /// Create a copy of PlacesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlacesLoadErrorImplCopyWith<_$PlacesLoadErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
