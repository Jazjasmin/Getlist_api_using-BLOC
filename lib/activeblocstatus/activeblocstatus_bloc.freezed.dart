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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Inizialize value) initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Inizialize value)? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Inizialize value)? initialize,
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
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
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
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Inizialize value)? initialize,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Inizialize value)? initialize,
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
mixin _$ActiveblocstatusState {
  List<Datum> get activestatuslist => throw _privateConstructorUsedError;
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
  $Res call({List<Datum> activestatuslist, bool isLoading, bool isError});
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
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      activestatuslist: activestatuslist == freezed
          ? _value.activestatuslist
          : activestatuslist // ignore: cast_nullable_to_non_nullable
              as List<Datum>,
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
  $Res call({List<Datum> activestatuslist, bool isLoading, bool isError});
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
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_$_ActiveblocstatusState(
      activestatuslist: activestatuslist == freezed
          ? _value._activestatuslist
          : activestatuslist // ignore: cast_nullable_to_non_nullable
              as List<Datum>,
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
      {required final List<Datum> activestatuslist,
      required this.isLoading,
      required this.isError})
      : _activestatuslist = activestatuslist;

  final List<Datum> _activestatuslist;
  @override
  List<Datum> get activestatuslist {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activestatuslist);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ActiveblocstatusState(activestatuslist: $activestatuslist, isLoading: $isLoading, isError: $isError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ActiveblocstatusState'))
      ..add(DiagnosticsProperty('activestatuslist', activestatuslist))
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
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_activestatuslist),
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
      {required final List<Datum> activestatuslist,
      required final bool isLoading,
      required final bool isError}) = _$_ActiveblocstatusState;

  @override
  List<Datum> get activestatuslist => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isError => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ActiveblocstatusStateCopyWith<_$_ActiveblocstatusState> get copyWith =>
      throw _privateConstructorUsedError;
}
