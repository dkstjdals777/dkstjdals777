// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryEvent {
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  String? get filter => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int limit, String? filter) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int limit, String? filter)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int limit, String? filter)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryEventCopyWith<HistoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryEventCopyWith<$Res> {
  factory $HistoryEventCopyWith(
          HistoryEvent value, $Res Function(HistoryEvent) then) =
      _$HistoryEventCopyWithImpl<$Res, HistoryEvent>;
  @useResult
  $Res call({int page, int limit, String? filter});
}

/// @nodoc
class _$HistoryEventCopyWithImpl<$Res, $Val extends HistoryEvent>
    implements $HistoryEventCopyWith<$Res> {
  _$HistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? limit = null,
    Object? filter = freezed,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FetchCopyWith<$Res> implements $HistoryEventCopyWith<$Res> {
  factory _$$_FetchCopyWith(_$_Fetch value, $Res Function(_$_Fetch) then) =
      __$$_FetchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, int limit, String? filter});
}

/// @nodoc
class __$$_FetchCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$_Fetch>
    implements _$$_FetchCopyWith<$Res> {
  __$$_FetchCopyWithImpl(_$_Fetch _value, $Res Function(_$_Fetch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? limit = null,
    Object? filter = freezed,
  }) {
    return _then(_$_Fetch(
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Fetch implements _Fetch {
  const _$_Fetch(this.page, this.limit, this.filter);

  @override
  final int page;
  @override
  final int limit;
  @override
  final String? filter;

  @override
  String toString() {
    return 'HistoryEvent.fetch(page: $page, limit: $limit, filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fetch &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, limit, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      __$$_FetchCopyWithImpl<_$_Fetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int limit, String? filter) fetch,
  }) {
    return fetch(page, limit, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int limit, String? filter)? fetch,
  }) {
    return fetch?.call(page, limit, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int limit, String? filter)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(page, limit, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements HistoryEvent {
  const factory _Fetch(final int page, final int limit, final String? filter) =
      _$_Fetch;

  @override
  int get page;
  @override
  int get limit;
  @override
  String? get filter;
  @override
  @JsonKey(ignore: true)
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HistoryState {
  List<History> get list => throw _privateConstructorUsedError;
  int get currentPageIndex => throw _privateConstructorUsedError;
  bool get hasNextPage => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryStateCopyWith<HistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res, HistoryState>;
  @useResult
  $Res call(
      {List<History> list,
      int currentPageIndex,
      bool hasNextPage,
      bool isLoading});
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res, $Val extends HistoryState>
    implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? currentPageIndex = null,
    Object? hasNextPage = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<History>,
      currentPageIndex: null == currentPageIndex
          ? _value.currentPageIndex
          : currentPageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HistoryStateCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$$_HistoryStateCopyWith(
          _$_HistoryState value, $Res Function(_$_HistoryState) then) =
      __$$_HistoryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<History> list,
      int currentPageIndex,
      bool hasNextPage,
      bool isLoading});
}

/// @nodoc
class __$$_HistoryStateCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$_HistoryState>
    implements _$$_HistoryStateCopyWith<$Res> {
  __$$_HistoryStateCopyWithImpl(
      _$_HistoryState _value, $Res Function(_$_HistoryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? currentPageIndex = null,
    Object? hasNextPage = null,
    Object? isLoading = null,
  }) {
    return _then(_$_HistoryState(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<History>,
      currentPageIndex: null == currentPageIndex
          ? _value.currentPageIndex
          : currentPageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HistoryState implements _HistoryState {
  const _$_HistoryState(
      {final List<History> list = const [],
      this.currentPageIndex = 1,
      this.hasNextPage = true,
      this.isLoading = false})
      : _list = list;

  final List<History> _list;
  @override
  @JsonKey()
  List<History> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  @JsonKey()
  final int currentPageIndex;
  @override
  @JsonKey()
  final bool hasNextPage;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'HistoryState(list: $list, currentPageIndex: $currentPageIndex, hasNextPage: $hasNextPage, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryState &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.currentPageIndex, currentPageIndex) ||
                other.currentPageIndex == currentPageIndex) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_list),
      currentPageIndex,
      hasNextPage,
      isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HistoryStateCopyWith<_$_HistoryState> get copyWith =>
      __$$_HistoryStateCopyWithImpl<_$_HistoryState>(this, _$identity);
}

abstract class _HistoryState implements HistoryState {
  const factory _HistoryState(
      {final List<History> list,
      final int currentPageIndex,
      final bool hasNextPage,
      final bool isLoading}) = _$_HistoryState;

  @override
  List<History> get list;
  @override
  int get currentPageIndex;
  @override
  bool get hasNextPage;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryStateCopyWith<_$_HistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
