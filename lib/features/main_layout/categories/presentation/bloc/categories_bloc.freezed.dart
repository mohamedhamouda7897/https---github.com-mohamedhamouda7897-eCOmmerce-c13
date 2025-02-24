// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCategories,
    required TResult Function(int index) changeCategory,
    required TResult Function(String catId) getSubCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function(int index)? changeCategory,
    TResult? Function(String catId)? getSubCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function(int index)? changeCategory,
    TResult Function(String catId)? getSubCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(TabGetCategoriesEvent value) getCategories,
    required TResult Function(ChangeCategoryEvent value) changeCategory,
    required TResult Function(TabGetSubCategoriesEvent value) getSubCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(TabGetCategoriesEvent value)? getCategories,
    TResult? Function(ChangeCategoryEvent value)? changeCategory,
    TResult? Function(TabGetSubCategoriesEvent value)? getSubCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(TabGetCategoriesEvent value)? getCategories,
    TResult Function(ChangeCategoryEvent value)? changeCategory,
    TResult Function(TabGetSubCategoriesEvent value)? getSubCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesEventCopyWith<$Res> {
  factory $CategoriesEventCopyWith(
          CategoriesEvent value, $Res Function(CategoriesEvent) then) =
      _$CategoriesEventCopyWithImpl<$Res, CategoriesEvent>;
}

/// @nodoc
class _$CategoriesEventCopyWithImpl<$Res, $Val extends CategoriesEvent>
    implements $CategoriesEventCopyWith<$Res> {
  _$CategoriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CategoriesEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCategories,
    required TResult Function(int index) changeCategory,
    required TResult Function(String catId) getSubCategories,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function(int index)? changeCategory,
    TResult? Function(String catId)? getSubCategories,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function(int index)? changeCategory,
    TResult Function(String catId)? getSubCategories,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(TabGetCategoriesEvent value) getCategories,
    required TResult Function(ChangeCategoryEvent value) changeCategory,
    required TResult Function(TabGetSubCategoriesEvent value) getSubCategories,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(TabGetCategoriesEvent value)? getCategories,
    TResult? Function(ChangeCategoryEvent value)? changeCategory,
    TResult? Function(TabGetSubCategoriesEvent value)? getSubCategories,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(TabGetCategoriesEvent value)? getCategories,
    TResult Function(ChangeCategoryEvent value)? changeCategory,
    TResult Function(TabGetSubCategoriesEvent value)? getSubCategories,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CategoriesEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$TabGetCategoriesEventImplCopyWith<$Res> {
  factory _$$TabGetCategoriesEventImplCopyWith(
          _$TabGetCategoriesEventImpl value,
          $Res Function(_$TabGetCategoriesEventImpl) then) =
      __$$TabGetCategoriesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TabGetCategoriesEventImplCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$TabGetCategoriesEventImpl>
    implements _$$TabGetCategoriesEventImplCopyWith<$Res> {
  __$$TabGetCategoriesEventImplCopyWithImpl(_$TabGetCategoriesEventImpl _value,
      $Res Function(_$TabGetCategoriesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TabGetCategoriesEventImpl implements TabGetCategoriesEvent {
  const _$TabGetCategoriesEventImpl();

  @override
  String toString() {
    return 'CategoriesEvent.getCategories()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabGetCategoriesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCategories,
    required TResult Function(int index) changeCategory,
    required TResult Function(String catId) getSubCategories,
  }) {
    return getCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function(int index)? changeCategory,
    TResult? Function(String catId)? getSubCategories,
  }) {
    return getCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function(int index)? changeCategory,
    TResult Function(String catId)? getSubCategories,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(TabGetCategoriesEvent value) getCategories,
    required TResult Function(ChangeCategoryEvent value) changeCategory,
    required TResult Function(TabGetSubCategoriesEvent value) getSubCategories,
  }) {
    return getCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(TabGetCategoriesEvent value)? getCategories,
    TResult? Function(ChangeCategoryEvent value)? changeCategory,
    TResult? Function(TabGetSubCategoriesEvent value)? getSubCategories,
  }) {
    return getCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(TabGetCategoriesEvent value)? getCategories,
    TResult Function(ChangeCategoryEvent value)? changeCategory,
    TResult Function(TabGetSubCategoriesEvent value)? getSubCategories,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories(this);
    }
    return orElse();
  }
}

abstract class TabGetCategoriesEvent implements CategoriesEvent {
  const factory TabGetCategoriesEvent() = _$TabGetCategoriesEventImpl;
}

/// @nodoc
abstract class _$$ChangeCategoryEventImplCopyWith<$Res> {
  factory _$$ChangeCategoryEventImplCopyWith(_$ChangeCategoryEventImpl value,
          $Res Function(_$ChangeCategoryEventImpl) then) =
      __$$ChangeCategoryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeCategoryEventImplCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$ChangeCategoryEventImpl>
    implements _$$ChangeCategoryEventImplCopyWith<$Res> {
  __$$ChangeCategoryEventImplCopyWithImpl(_$ChangeCategoryEventImpl _value,
      $Res Function(_$ChangeCategoryEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeCategoryEventImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeCategoryEventImpl implements ChangeCategoryEvent {
  const _$ChangeCategoryEventImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'CategoriesEvent.changeCategory(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCategoryEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of CategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCategoryEventImplCopyWith<_$ChangeCategoryEventImpl> get copyWith =>
      __$$ChangeCategoryEventImplCopyWithImpl<_$ChangeCategoryEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCategories,
    required TResult Function(int index) changeCategory,
    required TResult Function(String catId) getSubCategories,
  }) {
    return changeCategory(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function(int index)? changeCategory,
    TResult? Function(String catId)? getSubCategories,
  }) {
    return changeCategory?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function(int index)? changeCategory,
    TResult Function(String catId)? getSubCategories,
    required TResult orElse(),
  }) {
    if (changeCategory != null) {
      return changeCategory(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(TabGetCategoriesEvent value) getCategories,
    required TResult Function(ChangeCategoryEvent value) changeCategory,
    required TResult Function(TabGetSubCategoriesEvent value) getSubCategories,
  }) {
    return changeCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(TabGetCategoriesEvent value)? getCategories,
    TResult? Function(ChangeCategoryEvent value)? changeCategory,
    TResult? Function(TabGetSubCategoriesEvent value)? getSubCategories,
  }) {
    return changeCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(TabGetCategoriesEvent value)? getCategories,
    TResult Function(ChangeCategoryEvent value)? changeCategory,
    TResult Function(TabGetSubCategoriesEvent value)? getSubCategories,
    required TResult orElse(),
  }) {
    if (changeCategory != null) {
      return changeCategory(this);
    }
    return orElse();
  }
}

abstract class ChangeCategoryEvent implements CategoriesEvent {
  const factory ChangeCategoryEvent(final int index) =
      _$ChangeCategoryEventImpl;

  int get index;

  /// Create a copy of CategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeCategoryEventImplCopyWith<_$ChangeCategoryEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TabGetSubCategoriesEventImplCopyWith<$Res> {
  factory _$$TabGetSubCategoriesEventImplCopyWith(
          _$TabGetSubCategoriesEventImpl value,
          $Res Function(_$TabGetSubCategoriesEventImpl) then) =
      __$$TabGetSubCategoriesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String catId});
}

/// @nodoc
class __$$TabGetSubCategoriesEventImplCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$TabGetSubCategoriesEventImpl>
    implements _$$TabGetSubCategoriesEventImplCopyWith<$Res> {
  __$$TabGetSubCategoriesEventImplCopyWithImpl(
      _$TabGetSubCategoriesEventImpl _value,
      $Res Function(_$TabGetSubCategoriesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catId = null,
  }) {
    return _then(_$TabGetSubCategoriesEventImpl(
      null == catId
          ? _value.catId
          : catId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TabGetSubCategoriesEventImpl implements TabGetSubCategoriesEvent {
  const _$TabGetSubCategoriesEventImpl(this.catId);

  @override
  final String catId;

  @override
  String toString() {
    return 'CategoriesEvent.getSubCategories(catId: $catId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabGetSubCategoriesEventImpl &&
            (identical(other.catId, catId) || other.catId == catId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, catId);

  /// Create a copy of CategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TabGetSubCategoriesEventImplCopyWith<_$TabGetSubCategoriesEventImpl>
      get copyWith => __$$TabGetSubCategoriesEventImplCopyWithImpl<
          _$TabGetSubCategoriesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCategories,
    required TResult Function(int index) changeCategory,
    required TResult Function(String catId) getSubCategories,
  }) {
    return getSubCategories(catId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function(int index)? changeCategory,
    TResult? Function(String catId)? getSubCategories,
  }) {
    return getSubCategories?.call(catId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function(int index)? changeCategory,
    TResult Function(String catId)? getSubCategories,
    required TResult orElse(),
  }) {
    if (getSubCategories != null) {
      return getSubCategories(catId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(TabGetCategoriesEvent value) getCategories,
    required TResult Function(ChangeCategoryEvent value) changeCategory,
    required TResult Function(TabGetSubCategoriesEvent value) getSubCategories,
  }) {
    return getSubCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(TabGetCategoriesEvent value)? getCategories,
    TResult? Function(ChangeCategoryEvent value)? changeCategory,
    TResult? Function(TabGetSubCategoriesEvent value)? getSubCategories,
  }) {
    return getSubCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(TabGetCategoriesEvent value)? getCategories,
    TResult Function(ChangeCategoryEvent value)? changeCategory,
    TResult Function(TabGetSubCategoriesEvent value)? getSubCategories,
    required TResult orElse(),
  }) {
    if (getSubCategories != null) {
      return getSubCategories(this);
    }
    return orElse();
  }
}

abstract class TabGetSubCategoriesEvent implements CategoriesEvent {
  const factory TabGetSubCategoriesEvent(final String catId) =
      _$TabGetSubCategoriesEventImpl;

  String get catId;

  /// Create a copy of CategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TabGetSubCategoriesEventImplCopyWith<_$TabGetSubCategoriesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoriesState {
  RequestState get getCategoriesState => throw _privateConstructorUsedError;
  RequestState get getSubCategoriesState => throw _privateConstructorUsedError;
  CategoryEntity? get entity => throw _privateConstructorUsedError;
  CategoryEntity? get subEntity => throw _privateConstructorUsedError;
  RouteFailures? get failure => throw _privateConstructorUsedError;
  RouteFailures? get subFailure => throw _privateConstructorUsedError;
  int get selectedIndex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RequestState getCategoriesState,
            RequestState getSubCategoriesState,
            CategoryEntity? entity,
            CategoryEntity? subEntity,
            RouteFailures? failure,
            RouteFailures? subFailure,
            int selectedIndex)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RequestState getCategoriesState,
            RequestState getSubCategoriesState,
            CategoryEntity? entity,
            CategoryEntity? subEntity,
            RouteFailures? failure,
            RouteFailures? subFailure,
            int selectedIndex)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RequestState getCategoriesState,
            RequestState getSubCategoriesState,
            CategoryEntity? entity,
            CategoryEntity? subEntity,
            RouteFailures? failure,
            RouteFailures? subFailure,
            int selectedIndex)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoriesStateCopyWith<CategoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesStateCopyWith<$Res> {
  factory $CategoriesStateCopyWith(
          CategoriesState value, $Res Function(CategoriesState) then) =
      _$CategoriesStateCopyWithImpl<$Res, CategoriesState>;
  @useResult
  $Res call(
      {RequestState getCategoriesState,
      RequestState getSubCategoriesState,
      CategoryEntity? entity,
      CategoryEntity? subEntity,
      RouteFailures? failure,
      RouteFailures? subFailure,
      int selectedIndex});
}

/// @nodoc
class _$CategoriesStateCopyWithImpl<$Res, $Val extends CategoriesState>
    implements $CategoriesStateCopyWith<$Res> {
  _$CategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getCategoriesState = null,
    Object? getSubCategoriesState = null,
    Object? entity = freezed,
    Object? subEntity = freezed,
    Object? failure = freezed,
    Object? subFailure = freezed,
    Object? selectedIndex = null,
  }) {
    return _then(_value.copyWith(
      getCategoriesState: null == getCategoriesState
          ? _value.getCategoriesState
          : getCategoriesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getSubCategoriesState: null == getSubCategoriesState
          ? _value.getSubCategoriesState
          : getSubCategoriesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      entity: freezed == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as CategoryEntity?,
      subEntity: freezed == subEntity
          ? _value.subEntity
          : subEntity // ignore: cast_nullable_to_non_nullable
              as CategoryEntity?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as RouteFailures?,
      subFailure: freezed == subFailure
          ? _value.subFailure
          : subFailure // ignore: cast_nullable_to_non_nullable
              as RouteFailures?,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CategoriesStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState getCategoriesState,
      RequestState getSubCategoriesState,
      CategoryEntity? entity,
      CategoryEntity? subEntity,
      RouteFailures? failure,
      RouteFailures? subFailure,
      int selectedIndex});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getCategoriesState = null,
    Object? getSubCategoriesState = null,
    Object? entity = freezed,
    Object? subEntity = freezed,
    Object? failure = freezed,
    Object? subFailure = freezed,
    Object? selectedIndex = null,
  }) {
    return _then(_$InitialImpl(
      getCategoriesState: null == getCategoriesState
          ? _value.getCategoriesState
          : getCategoriesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getSubCategoriesState: null == getSubCategoriesState
          ? _value.getSubCategoriesState
          : getSubCategoriesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      entity: freezed == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as CategoryEntity?,
      subEntity: freezed == subEntity
          ? _value.subEntity
          : subEntity // ignore: cast_nullable_to_non_nullable
              as CategoryEntity?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as RouteFailures?,
      subFailure: freezed == subFailure
          ? _value.subFailure
          : subFailure // ignore: cast_nullable_to_non_nullable
              as RouteFailures?,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.getCategoriesState = RequestState.init,
      this.getSubCategoriesState = RequestState.init,
      this.entity,
      this.subEntity,
      this.failure,
      this.subFailure,
      this.selectedIndex = 0});

  @override
  @JsonKey()
  final RequestState getCategoriesState;
  @override
  @JsonKey()
  final RequestState getSubCategoriesState;
  @override
  final CategoryEntity? entity;
  @override
  final CategoryEntity? subEntity;
  @override
  final RouteFailures? failure;
  @override
  final RouteFailures? subFailure;
  @override
  @JsonKey()
  final int selectedIndex;

  @override
  String toString() {
    return 'CategoriesState.initial(getCategoriesState: $getCategoriesState, getSubCategoriesState: $getSubCategoriesState, entity: $entity, subEntity: $subEntity, failure: $failure, subFailure: $subFailure, selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.getCategoriesState, getCategoriesState) ||
                other.getCategoriesState == getCategoriesState) &&
            (identical(other.getSubCategoriesState, getSubCategoriesState) ||
                other.getSubCategoriesState == getSubCategoriesState) &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.subEntity, subEntity) ||
                other.subEntity == subEntity) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.subFailure, subFailure) ||
                other.subFailure == subFailure) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getCategoriesState,
      getSubCategoriesState,
      entity,
      subEntity,
      failure,
      subFailure,
      selectedIndex);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RequestState getCategoriesState,
            RequestState getSubCategoriesState,
            CategoryEntity? entity,
            CategoryEntity? subEntity,
            RouteFailures? failure,
            RouteFailures? subFailure,
            int selectedIndex)
        initial,
  }) {
    return initial(getCategoriesState, getSubCategoriesState, entity, subEntity,
        failure, subFailure, selectedIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RequestState getCategoriesState,
            RequestState getSubCategoriesState,
            CategoryEntity? entity,
            CategoryEntity? subEntity,
            RouteFailures? failure,
            RouteFailures? subFailure,
            int selectedIndex)?
        initial,
  }) {
    return initial?.call(getCategoriesState, getSubCategoriesState, entity,
        subEntity, failure, subFailure, selectedIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RequestState getCategoriesState,
            RequestState getSubCategoriesState,
            CategoryEntity? entity,
            CategoryEntity? subEntity,
            RouteFailures? failure,
            RouteFailures? subFailure,
            int selectedIndex)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(getCategoriesState, getSubCategoriesState, entity,
          subEntity, failure, subFailure, selectedIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CategoriesState {
  const factory _Initial(
      {final RequestState getCategoriesState,
      final RequestState getSubCategoriesState,
      final CategoryEntity? entity,
      final CategoryEntity? subEntity,
      final RouteFailures? failure,
      final RouteFailures? subFailure,
      final int selectedIndex}) = _$InitialImpl;

  @override
  RequestState get getCategoriesState;
  @override
  RequestState get getSubCategoriesState;
  @override
  CategoryEntity? get entity;
  @override
  CategoryEntity? get subEntity;
  @override
  RouteFailures? get failure;
  @override
  RouteFailures? get subFailure;
  @override
  int get selectedIndex;

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
