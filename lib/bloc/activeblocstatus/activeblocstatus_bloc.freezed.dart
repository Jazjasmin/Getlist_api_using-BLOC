// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'activeblocstatus_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ActiveblocstatusEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String searchQuery) searchStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String searchQuery)? searchStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String searchQuery)? searchStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Inizialize value) initialize,
    required TResult Function(SearchStatus value) searchStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Inizialize value)? initialize,
    TResult Function(SearchStatus value)? searchStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Inizialize value)? initialize,
    TResult Function(SearchStatus value)? searchStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveblocstatusEventCopyWith<$Res> {
  factory $ActiveblocstatusEventCopyWith(ActiveblocstatusEvent value,
          $Res Function(ActiveblocstatusEvent) then) =
      _$ActiveblocstatusEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ActiveblocstatusEventCopyWithImpl<$Res>
    implements $ActiveblocstatusEventCopyWith<$Res> {
  _$ActiveblocstatusEventCopyWithImpl(this._value, this._then);

  final ActiveblocstatusEvent _value;
  // ignore: unused_field
  final $Res Function(ActiveblocstatusEvent) _then;
}

/// @nodoc
abstract class _$$InizializeCopyWith<$Res> {
  factory _$$InizializeCopyWith(
          _$Inizialize value, $Res Function(_$Inizialize) then) =
      __$$InizializeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InizializeCopyWithImpl<$Res>
    extends _$ActiveblocstatusEventCopyWithImpl<$Res>
    implements _$$InizializeCopyWith<$Res> {
  __$$InizializeCopyWithImpl(
      _$Inizialize _value, $Res Function(_$Inizialize) _then)
      : super(_value, (v) => _then(v as _$Inizialize));

  @override
  _$Inizialize get _value => super._value as _$Inizialize;
}

/// @nodoc

class _$Inizialize with DiagnosticableTreeMixin implements Inizialize {
  const _$Inizialize();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ActiveblocstatusEvent.initialize()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ActiveblocstatusEvent.initialize'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Inizialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String searchQuery) searchStatus,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String searchQuery)? searchStatus,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String searchQuery)? searchStatus,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Inizialize value) initialize,
    required TResult Function(SearchStatus value) searchStatus,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Inizialize value)? initialize,
    TResult Function(SearchStatus value)? searchStatus,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Inizialize value)? initialize,
    TResult Function(SearchStatus value)? searchStatus,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Inizialize implements ActiveblocstatusEvent {
  const factory Inizialize() = _$Inizialize;
}

/// @nodoc
abstract class _$$SearchStatusCopyWith<$Res> {
  factory _$$SearchStatusCopyWith(
          _$SearchStatus value, $Res Function(_$SearchStatus) then) =
      __$$SearchStatusCopyWithImpl<$Res>;
  $Res call({String searchQuery});
}

/// @nodoc
class __$$SearchStatusCopyWithImpl<$Res>
    extends _$ActiveblocstatusEventCopyWithImpl<$Res>
    implements _$$SearchStatusCopyWith<$Res> {
  __$$SearchStatusCopyWithImpl(
      _$SearchStatus _value, $Res Function(_$SearchStatus) _then)
      : super(_value, (v) => _then(v as _$SearchStatus));

  @override
  _$SearchStatus get _value => super._value as _$SearchStatus;

  @override
  $Res call({
    Object? searchQuery = freezed,
  }) {
    return _then(_$SearchStatus(
      searchQuery: searchQuery == freezed
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchStatus with DiagnosticableTreeMixin implements SearchStatus {
  const _$SearchStatus({required this.searchQuery});

  @override
  final String searchQuery;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ActiveblocstatusEvent.searchStatus(searchQuery: $searchQuery)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ActiveblocstatusEvent.searchStatus'))
      ..add(DiagnosticsProperty('searchQuery', searchQuery));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStatus &&
            const DeepCollectionEquality()
                .equals(other.searchQuery, searchQuery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(searchQuery));

  @JsonKey(ignore: true)
  @override
  _$$SearchStatusCopyWith<_$SearchStatus> get copyWith =>
      __$$SearchStatusCopyWithImpl<_$SearchStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String searchQuery) searchStatus,
  }) {
    return searchStatus(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String searchQuery)? searchStatus,
  }) {
    return searchStatus?.call(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String searchQuery)? searchStatus,
    required TResult orElse(),
  }) {
    if (searchStatus != null) {
      return searchStatus(searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Inizialize value) initialize,
    required TResult Function(SearchStatus value) searchStatus,
  }) {
    return searchStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Inizialize value)? initialize,
    TResult Function(SearchStatus value)? searchStatus,
  }) {
    return searchStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Inizialize value)? initialize,
    TResult Function(SearchStatus value)? searchStatus,
    required TResult orElse(),
  }) {
    if (searchStatus != null) {
      return searchStatus(this);
    }
    return orElse();
  }
}

abstract class SearchStatus implements ActiveblocstatusEvent {
  const factory SearchStatus({required final String searchQuery}) =
      _$SearchStatus;

  String get searchQuery => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SearchStatusCopyWith<_$SearchStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ActiveblocstatusState {
  List<ActiveDatum> get activestatuslist => throw _privateConstructorUsedError;
  List<ActiveDatum> get searchReslut => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActiveblocstatusStateCopyWith<ActiveblocstatusState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveblocstatusStateCopyWith<$Res> {
  factory $ActiveblocstatusStateCopyWith(ActiveblocstatusState value,
          $Res Function(ActiveblocstatusState) then) =
      _$ActiveblocstatusStateCopyWithImpl<$Res>;
  $Res call(
      {List<ActiveDatum> activestatuslist,
      List<ActiveDatum> searchReslut,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$ActiveblocstatusStateCopyWithImpl<$Res>
    implements $ActiveblocstatusStateCopyWith<$Res> {
  _$ActiveblocstatusStateCopyWithImpl(this._value, this._then);

  final ActiveblocstatusState _value;
  // ignore: unused_field
  final $Res Function(ActiveblocstatusState) _then;

  @override
  $Res call({
    Object? activestatuslist = freezed,
    Object? searchReslut = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      activestatuslist: activestatuslist == freezed
          ? _value.activestatuslist
          : activestatuslist // ignore: cast_nullable_to_non_nullable
              as List<ActiveDatum>,
      searchReslut: searchReslut == freezed
          ? _value.searchReslut
          : searchReslut // ignore: cast_nullable_to_non_nullable
              as List<ActiveDatum>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ActiveblocstatusStateCopyWith<$Res>
    implements $ActiveblocstatusStateCopyWith<$Res> {
  factory _$$_ActiveblocstatusStateCopyWith(_$_ActiveblocstatusState value,
          $Res Function(_$_ActiveblocstatusState) then) =
      __$$_ActiveblocstatusStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ActiveDatum> activestatuslist,
      List<ActiveDatum> searchReslut,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$$_ActiveblocstatusStateCopyWithImpl<$Res>
    extends _$ActiveblocstatusStateCopyWithImpl<$Res>
    implements _$$_ActiveblocstatusStateCopyWith<$Res> {
  __$$_ActiveblocstatusStateCopyWithImpl(_$_ActiveblocstatusState _value,
      $Res Function(_$_ActiveblocstatusState) _then)
      : super(_value, (v) => _then(v as _$_ActiveblocstatusState));

  @override
  _$_ActiveblocstatusState get _value =>
      super._value as _$_ActiveblocstatusState;

  @override
  $Res call({
    Object? activestatuslist = freezed,
    Object? searchReslut = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_$_ActiveblocstatusState(
      activestatuslist: activestatuslist == freezed
          ? _value._activestatuslist
          : activestatuslist // ignore: cast_nullable_to_non_nullable
              as List<ActiveDatum>,
      searchReslut: searchReslut == freezed
          ? _value._searchReslut
          : searchReslut // ignore: cast_nullable_to_non_nullable
              as List<ActiveDatum>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ActiveblocstatusState
    with DiagnosticableTreeMixin
    implements _ActiveblocstatusState {
  const _$_ActiveblocstatusState(
      {required final List<ActiveDatum> activestatuslist,
      required final List<ActiveDatum> searchReslut,
      required this.isLoading,
      required this.isError})
      : _activestatuslist = activestatuslist,
        _searchReslut = searchReslut;

  final List<ActiveDatum> _activestatuslist;
  @override
  List<ActiveDatum> get activestatuslist {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activestatuslist);
  }

  final List<ActiveDatum> _searchReslut;
  @override
  List<ActiveDatum> get searchReslut {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchReslut);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ActiveblocstatusState(activestatuslist: $activestatuslist, searchReslut: $searchReslut, isLoading: $isLoading, isError: $isError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ActiveblocstatusState'))
      ..add(DiagnosticsProperty('activestatuslist', activestatuslist))
      ..add(DiagnosticsProperty('searchReslut', searchReslut))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isError', isError));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActiveblocstatusState &&
            const DeepCollectionEquality()
                .equals(other._activestatuslist, _activestatuslist) &&
            const DeepCollectionEquality()
                .equals(other._searchReslut, _searchReslut) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_activestatuslist),
      const DeepCollectionEquality().hash(_searchReslut),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$$_ActiveblocstatusStateCopyWith<_$_ActiveblocstatusState> get copyWith =>
      __$$_ActiveblocstatusStateCopyWithImpl<_$_ActiveblocstatusState>(
          this, _$identity);
}

abstract class _ActiveblocstatusState implements ActiveblocstatusState {
  const factory _ActiveblocstatusState(
      {required final List<ActiveDatum> activestatuslist,
      required final List<ActiveDatum> searchReslut,
      required final bool isLoading,
      required final bool isError}) = _$_ActiveblocstatusState;

  @override
  List<ActiveDatum> get activestatuslist => throw _privateConstructorUsedError;
  @override
  List<ActiveDatum> get searchReslut => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isError => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ActiveblocstatusStateCopyWith<_$_ActiveblocstatusState> get copyWith =>
      throw _privateConstructorUsedError;
}
