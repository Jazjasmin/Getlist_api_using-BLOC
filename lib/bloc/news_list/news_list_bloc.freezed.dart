// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'news_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String newsQuery) searchNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String newsQuery)? searchNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String newsQuery)? searchNews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(SearchNews value) searchNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SearchNews value)? searchNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SearchNews value)? searchNews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsListEventCopyWith<$Res> {
  factory $NewsListEventCopyWith(
          NewsListEvent value, $Res Function(NewsListEvent) then) =
      _$NewsListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsListEventCopyWithImpl<$Res>
    implements $NewsListEventCopyWith<$Res> {
  _$NewsListEventCopyWithImpl(this._value, this._then);

  final NewsListEvent _value;
  // ignore: unused_field
  final $Res Function(NewsListEvent) _then;
}

/// @nodoc
abstract class _$$InitializeCopyWith<$Res> {
  factory _$$InitializeCopyWith(
          _$Initialize value, $Res Function(_$Initialize) then) =
      __$$InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeCopyWithImpl<$Res> extends _$NewsListEventCopyWithImpl<$Res>
    implements _$$InitializeCopyWith<$Res> {
  __$$InitializeCopyWithImpl(
      _$Initialize _value, $Res Function(_$Initialize) _then)
      : super(_value, (v) => _then(v as _$Initialize));

  @override
  _$Initialize get _value => super._value as _$Initialize;
}

/// @nodoc

class _$Initialize implements Initialize {
  const _$Initialize();

  @override
  String toString() {
    return 'NewsListEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String newsQuery) searchNews,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String newsQuery)? searchNews,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String newsQuery)? searchNews,
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
    required TResult Function(Initialize value) initialize,
    required TResult Function(SearchNews value) searchNews,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SearchNews value)? searchNews,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SearchNews value)? searchNews,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements NewsListEvent {
  const factory Initialize() = _$Initialize;
}

/// @nodoc
abstract class _$$SearchNewsCopyWith<$Res> {
  factory _$$SearchNewsCopyWith(
          _$SearchNews value, $Res Function(_$SearchNews) then) =
      __$$SearchNewsCopyWithImpl<$Res>;
  $Res call({String newsQuery});
}

/// @nodoc
class __$$SearchNewsCopyWithImpl<$Res> extends _$NewsListEventCopyWithImpl<$Res>
    implements _$$SearchNewsCopyWith<$Res> {
  __$$SearchNewsCopyWithImpl(
      _$SearchNews _value, $Res Function(_$SearchNews) _then)
      : super(_value, (v) => _then(v as _$SearchNews));

  @override
  _$SearchNews get _value => super._value as _$SearchNews;

  @override
  $Res call({
    Object? newsQuery = freezed,
  }) {
    return _then(_$SearchNews(
      newsQuery: newsQuery == freezed
          ? _value.newsQuery
          : newsQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchNews implements SearchNews {
  const _$SearchNews({required this.newsQuery});

  @override
  final String newsQuery;

  @override
  String toString() {
    return 'NewsListEvent.searchNews(newsQuery: $newsQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchNews &&
            const DeepCollectionEquality().equals(other.newsQuery, newsQuery));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newsQuery));

  @JsonKey(ignore: true)
  @override
  _$$SearchNewsCopyWith<_$SearchNews> get copyWith =>
      __$$SearchNewsCopyWithImpl<_$SearchNews>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String newsQuery) searchNews,
  }) {
    return searchNews(newsQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String newsQuery)? searchNews,
  }) {
    return searchNews?.call(newsQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String newsQuery)? searchNews,
    required TResult orElse(),
  }) {
    if (searchNews != null) {
      return searchNews(newsQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(SearchNews value) searchNews,
  }) {
    return searchNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SearchNews value)? searchNews,
  }) {
    return searchNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SearchNews value)? searchNews,
    required TResult orElse(),
  }) {
    if (searchNews != null) {
      return searchNews(this);
    }
    return orElse();
  }
}

abstract class SearchNews implements NewsListEvent {
  const factory SearchNews({required final String newsQuery}) = _$SearchNews;

  String get newsQuery => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SearchNewsCopyWith<_$SearchNews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NewsListState {
  List<Article> get newsSearchList => throw _privateConstructorUsedError;
  List<Article> get newsList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsListStateCopyWith<NewsListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsListStateCopyWith<$Res> {
  factory $NewsListStateCopyWith(
          NewsListState value, $Res Function(NewsListState) then) =
      _$NewsListStateCopyWithImpl<$Res>;
  $Res call(
      {List<Article> newsSearchList,
      List<Article> newsList,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$NewsListStateCopyWithImpl<$Res>
    implements $NewsListStateCopyWith<$Res> {
  _$NewsListStateCopyWithImpl(this._value, this._then);

  final NewsListState _value;
  // ignore: unused_field
  final $Res Function(NewsListState) _then;

  @override
  $Res call({
    Object? newsSearchList = freezed,
    Object? newsList = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      newsSearchList: newsSearchList == freezed
          ? _value.newsSearchList
          : newsSearchList // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      newsList: newsList == freezed
          ? _value.newsList
          : newsList // ignore: cast_nullable_to_non_nullable
              as List<Article>,
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
abstract class _$$_NewsListStateCopyWith<$Res>
    implements $NewsListStateCopyWith<$Res> {
  factory _$$_NewsListStateCopyWith(
          _$_NewsListState value, $Res Function(_$_NewsListState) then) =
      __$$_NewsListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Article> newsSearchList,
      List<Article> newsList,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$$_NewsListStateCopyWithImpl<$Res>
    extends _$NewsListStateCopyWithImpl<$Res>
    implements _$$_NewsListStateCopyWith<$Res> {
  __$$_NewsListStateCopyWithImpl(
      _$_NewsListState _value, $Res Function(_$_NewsListState) _then)
      : super(_value, (v) => _then(v as _$_NewsListState));

  @override
  _$_NewsListState get _value => super._value as _$_NewsListState;

  @override
  $Res call({
    Object? newsSearchList = freezed,
    Object? newsList = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_$_NewsListState(
      newsSearchList: newsSearchList == freezed
          ? _value._newsSearchList
          : newsSearchList // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      newsList: newsList == freezed
          ? _value._newsList
          : newsList // ignore: cast_nullable_to_non_nullable
              as List<Article>,
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

class _$_NewsListState implements _NewsListState {
  const _$_NewsListState(
      {required final List<Article> newsSearchList,
      required final List<Article> newsList,
      required this.isLoading,
      required this.isError})
      : _newsSearchList = newsSearchList,
        _newsList = newsList;

  final List<Article> _newsSearchList;
  @override
  List<Article> get newsSearchList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newsSearchList);
  }

  final List<Article> _newsList;
  @override
  List<Article> get newsList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newsList);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'NewsListState(newsSearchList: $newsSearchList, newsList: $newsList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsListState &&
            const DeepCollectionEquality()
                .equals(other._newsSearchList, _newsSearchList) &&
            const DeepCollectionEquality().equals(other._newsList, _newsList) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_newsSearchList),
      const DeepCollectionEquality().hash(_newsList),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$$_NewsListStateCopyWith<_$_NewsListState> get copyWith =>
      __$$_NewsListStateCopyWithImpl<_$_NewsListState>(this, _$identity);
}

abstract class _NewsListState implements NewsListState {
  const factory _NewsListState(
      {required final List<Article> newsSearchList,
      required final List<Article> newsList,
      required final bool isLoading,
      required final bool isError}) = _$_NewsListState;

  @override
  List<Article> get newsSearchList => throw _privateConstructorUsedError;
  @override
  List<Article> get newsList => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isError => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NewsListStateCopyWith<_$_NewsListState> get copyWith =>
      throw _privateConstructorUsedError;
}
