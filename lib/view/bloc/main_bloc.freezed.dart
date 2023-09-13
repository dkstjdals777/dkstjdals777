// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(bool isRecord) toggleMenu,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(bool isRecord)? toggleMenu,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isRecord)? toggleMenu,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ToggleMenu value) toggleMenu,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ToggleMenu value)? toggleMenu,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ToggleMenu value)? toggleMenu,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitCopyWith<$Res> {
  factory _$$_InitCopyWith(_$_Init value, $Res Function(_$_Init) then) =
      __$$_InitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitCopyWithImpl<$Res> extends _$MainEventCopyWithImpl<$Res, _$_Init>
    implements _$$_InitCopyWith<$Res> {
  __$$_InitCopyWithImpl(_$_Init _value, $Res Function(_$_Init) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Init implements _Init {
  const _$_Init();

  @override
  String toString() {
    return 'MainEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(bool isRecord) toggleMenu,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(bool isRecord)? toggleMenu,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isRecord)? toggleMenu,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ToggleMenu value) toggleMenu,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ToggleMenu value)? toggleMenu,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ToggleMenu value)? toggleMenu,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements MainEvent {
  const factory _Init() = _$_Init;
}

/// @nodoc
abstract class _$$_ToggleMenuCopyWith<$Res> {
  factory _$$_ToggleMenuCopyWith(
          _$_ToggleMenu value, $Res Function(_$_ToggleMenu) then) =
      __$$_ToggleMenuCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isRecord});
}

/// @nodoc
class __$$_ToggleMenuCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$_ToggleMenu>
    implements _$$_ToggleMenuCopyWith<$Res> {
  __$$_ToggleMenuCopyWithImpl(
      _$_ToggleMenu _value, $Res Function(_$_ToggleMenu) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRecord = null,
  }) {
    return _then(_$_ToggleMenu(
      null == isRecord
          ? _value.isRecord
          : isRecord // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ToggleMenu implements _ToggleMenu {
  const _$_ToggleMenu(this.isRecord);

  @override
  final bool isRecord;

  @override
  String toString() {
    return 'MainEvent.toggleMenu(isRecord: $isRecord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToggleMenu &&
            (identical(other.isRecord, isRecord) ||
                other.isRecord == isRecord));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRecord);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ToggleMenuCopyWith<_$_ToggleMenu> get copyWith =>
      __$$_ToggleMenuCopyWithImpl<_$_ToggleMenu>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(bool isRecord) toggleMenu,
  }) {
    return toggleMenu(isRecord);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(bool isRecord)? toggleMenu,
  }) {
    return toggleMenu?.call(isRecord);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isRecord)? toggleMenu,
    required TResult orElse(),
  }) {
    if (toggleMenu != null) {
      return toggleMenu(isRecord);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ToggleMenu value) toggleMenu,
  }) {
    return toggleMenu(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ToggleMenu value)? toggleMenu,
  }) {
    return toggleMenu?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ToggleMenu value)? toggleMenu,
    required TResult orElse(),
  }) {
    if (toggleMenu != null) {
      return toggleMenu(this);
    }
    return orElse();
  }
}

abstract class _ToggleMenu implements MainEvent {
  const factory _ToggleMenu(final bool isRecord) = _$_ToggleMenu;

  bool get isRecord;
  @JsonKey(ignore: true)
  _$$_ToggleMenuCopyWith<_$_ToggleMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainState {
  List<Exercise> get exerciseList => throw _privateConstructorUsedError;
  bool get isShowRecordMenu => throw _privateConstructorUsedError;
  bool get isShowHistoryMenu => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainStateCopyWith<MainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
  @useResult
  $Res call(
      {List<Exercise> exerciseList,
      bool isShowRecordMenu,
      bool isShowHistoryMenu});
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exerciseList = null,
    Object? isShowRecordMenu = null,
    Object? isShowHistoryMenu = null,
  }) {
    return _then(_value.copyWith(
      exerciseList: null == exerciseList
          ? _value.exerciseList
          : exerciseList // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
      isShowRecordMenu: null == isShowRecordMenu
          ? _value.isShowRecordMenu
          : isShowRecordMenu // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowHistoryMenu: null == isShowHistoryMenu
          ? _value.isShowHistoryMenu
          : isShowHistoryMenu // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainStateCopyWith<$Res> implements $MainStateCopyWith<$Res> {
  factory _$$_MainStateCopyWith(
          _$_MainState value, $Res Function(_$_MainState) then) =
      __$$_MainStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Exercise> exerciseList,
      bool isShowRecordMenu,
      bool isShowHistoryMenu});
}

/// @nodoc
class __$$_MainStateCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$_MainState>
    implements _$$_MainStateCopyWith<$Res> {
  __$$_MainStateCopyWithImpl(
      _$_MainState _value, $Res Function(_$_MainState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exerciseList = null,
    Object? isShowRecordMenu = null,
    Object? isShowHistoryMenu = null,
  }) {
    return _then(_$_MainState(
      exerciseList: null == exerciseList
          ? _value._exerciseList
          : exerciseList // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
      isShowRecordMenu: null == isShowRecordMenu
          ? _value.isShowRecordMenu
          : isShowRecordMenu // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowHistoryMenu: null == isShowHistoryMenu
          ? _value.isShowHistoryMenu
          : isShowHistoryMenu // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MainState implements _MainState {
  const _$_MainState(
      {final List<Exercise> exerciseList = const [],
      this.isShowRecordMenu = false,
      this.isShowHistoryMenu = false})
      : _exerciseList = exerciseList;

  final List<Exercise> _exerciseList;
  @override
  @JsonKey()
  List<Exercise> get exerciseList {
    if (_exerciseList is EqualUnmodifiableListView) return _exerciseList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exerciseList);
  }

  @override
  @JsonKey()
  final bool isShowRecordMenu;
  @override
  @JsonKey()
  final bool isShowHistoryMenu;

  @override
  String toString() {
    return 'MainState(exerciseList: $exerciseList, isShowRecordMenu: $isShowRecordMenu, isShowHistoryMenu: $isShowHistoryMenu)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainState &&
            const DeepCollectionEquality()
                .equals(other._exerciseList, _exerciseList) &&
            (identical(other.isShowRecordMenu, isShowRecordMenu) ||
                other.isShowRecordMenu == isShowRecordMenu) &&
            (identical(other.isShowHistoryMenu, isShowHistoryMenu) ||
                other.isShowHistoryMenu == isShowHistoryMenu));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_exerciseList),
      isShowRecordMenu,
      isShowHistoryMenu);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainStateCopyWith<_$_MainState> get copyWith =>
      __$$_MainStateCopyWithImpl<_$_MainState>(this, _$identity);
}

abstract class _MainState implements MainState {
  const factory _MainState(
      {final List<Exercise> exerciseList,
      final bool isShowRecordMenu,
      final bool isShowHistoryMenu}) = _$_MainState;

  @override
  List<Exercise> get exerciseList;
  @override
  bool get isShowRecordMenu;
  @override
  bool get isShowHistoryMenu;
  @override
  @JsonKey(ignore: true)
  _$$_MainStateCopyWith<_$_MainState> get copyWith =>
      throw _privateConstructorUsedError;
}
