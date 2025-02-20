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
    required TResult Function(String catId) getSubCategories,
    required TResult Function(int index) changeCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function(String catId)? getSubCategories,
    TResult? Function(int index)? changeCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function(String catId)? getSubCategories,
    TResult Function(int index)? changeCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(GetSubCategoriesEvent value) getSubCategories,
    required TResult Function(ChangeCategoryEvent value) changeCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(GetSubCategoriesEvent value)? getSubCategories,
    TResult? Function(ChangeCategoryEvent value)? changeCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(GetSubCategoriesEvent value)? getSubCategories,
    TResult Function(ChangeCategoryEvent value)? changeCategory,
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
    required TResult Function(String catId) getSubCategories,
    required TResult Function(int index) changeCategory,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function(String catId)? getSubCategories,
    TResult? Function(int index)? changeCategory,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function(String catId)? getSubCategories,
    TResult Function(int index)? changeCategory,
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
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(GetSubCategoriesEvent value) getSubCategories,
    required TResult Function(ChangeCategoryEvent value) changeCategory,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(GetSubCategoriesEvent value)? getSubCategories,
    TResult? Function(ChangeCategoryEvent value)? changeCategory,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(GetSubCategoriesEvent value)? getSubCategories,
    TResult Function(ChangeCategoryEvent value)? changeCategory,
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
abstract class _$$GetCategoriesEventImplCopyWith<$Res> {
  factory _$$GetCategoriesEventImplCopyWith(_$GetCategoriesEventImpl value,
          $Res Function(_$GetCategoriesEventImpl) then) =
      __$$GetCategoriesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCategoriesEventImplCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$GetCategoriesEventImpl>
    implements _$$GetCategoriesEventImplCopyWith<$Res> {
  __$$GetCategoriesEventImplCopyWithImpl(_$GetCategoriesEventImpl _value,
      $Res Function(_$GetCategoriesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCategoriesEventImpl implements GetCategoriesEvent {
  const _$GetCategoriesEventImpl();

  @override
  String toString() {
    return 'CategoriesEvent.getCategories()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCategoriesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCategories,
    required TResult Function(String catId) getSubCategories,
    required TResult Function(int index) changeCategory,
  }) {
    return getCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function(String catId)? getSubCategories,
    TResult? Function(int index)? changeCategory,
  }) {
    return getCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function(String catId)? getSubCategories,
    TResult Function(int index)? changeCategory,
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
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(GetSubCategoriesEvent value) getSubCategories,
    required TResult Function(ChangeCategoryEvent value) changeCategory,
  }) {
    return getCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(GetSubCategoriesEvent value)? getSubCategories,
    TResult? Function(ChangeCategoryEvent value)? changeCategory,
  }) {
    return getCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(GetSubCategoriesEvent value)? getSubCategories,
    TResult Function(ChangeCategoryEvent value)? changeCategory,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories(this);
    }
    return orElse();
  }
}

abstract class GetCategoriesEvent implements CategoriesEvent {
  const factory GetCategoriesEvent() = _$GetCategoriesEventImpl;
}

/// @nodoc
abstract class _$$GetSubCategoriesEventImplCopyWith<$Res> {
  factory _$$GetSubCategoriesEventImplCopyWith(
          _$GetSubCategoriesEventImpl value,
          $Res Function(_$GetSubCategoriesEventImpl) then) =
      __$$GetSubCategoriesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String catId});
}

/// @nodoc
class __$$GetSubCategoriesEventImplCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$GetSubCategoriesEventImpl>
    implements _$$GetSubCategoriesEventImplCopyWith<$Res> {
  __$$GetSubCategoriesEventImplCopyWithImpl(_$GetSubCategoriesEventImpl _value,
      $Res Function(_$GetSubCategoriesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catId = null,
  }) {
    return _then(_$GetSubCategoriesEventImpl(
      null == catId
          ? _value.catId
          : catId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSubCategoriesEventImpl implements GetSubCategoriesEvent {
  const _$GetSubCategoriesEventImpl(this.catId);

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
            other is _$GetSubCategoriesEventImpl &&
            (identical(other.catId, catId) || other.catId == catId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, catId);

  /// Create a copy of CategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSubCategoriesEventImplCopyWith<_$GetSubCategoriesEventImpl>
      get copyWith => __$$GetSubCategoriesEventImplCopyWithImpl<
          _$GetSubCategoriesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCategories,
    required TResult Function(String catId) getSubCategories,
    required TResult Function(int index) changeCategory,
  }) {
    return getSubCategories(catId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function(String catId)? getSubCategories,
    TResult? Function(int index)? changeCategory,
  }) {
    return getSubCategories?.call(catId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function(String catId)? getSubCategories,
    TResult Function(int index)? changeCategory,
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
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(GetSubCategoriesEvent value) getSubCategories,
    required TResult Function(ChangeCategoryEvent value) changeCategory,
  }) {
    return getSubCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(GetSubCategoriesEvent value)? getSubCategories,
    TResult? Function(ChangeCategoryEvent value)? changeCategory,
  }) {
    return getSubCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(GetSubCategoriesEvent value)? getSubCategories,
    TResult Function(ChangeCategoryEvent value)? changeCategory,
    required TResult orElse(),
  }) {
    if (getSubCategories != null) {
      return getSubCategories(this);
    }
    return orElse();
  }
}

abstract class GetSubCategoriesEvent implements CategoriesEvent {
  const factory GetSubCategoriesEvent(final String catId) =
      _$GetSubCategoriesEventImpl;

  String get catId;

  /// Create a copy of CategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSubCategoriesEventImplCopyWith<_$GetSubCategoriesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function(String catId) getSubCategories,
    required TResult Function(int index) changeCategory,
  }) {
    return changeCategory(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function(String catId)? getSubCategories,
    TResult? Function(int index)? changeCategory,
  }) {
    return changeCategory?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function(String catId)? getSubCategories,
    TResult Function(int index)? changeCategory,
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
    required TResult Function(GetCategoriesEvent value) getCategories,
    required TResult Function(GetSubCategoriesEvent value) getSubCategories,
    required TResult Function(ChangeCategoryEvent value) changeCategory,
  }) {
    return changeCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetCategoriesEvent value)? getCategories,
    TResult? Function(GetSubCategoriesEvent value)? getSubCategories,
    TResult? Function(ChangeCategoryEvent value)? changeCategory,
  }) {
    return changeCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetCategoriesEvent value)? getCategories,
    TResult Function(GetSubCategoriesEvent value)? getSubCategories,
    TResult Function(ChangeCategoryEvent value)? changeCategory,
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
mixin _$CategoriesState {
  RequestState get getCategoriesState => throw _privateConstructorUsedError;
  RequestState get getSubCategoriesState => throw _privateConstructorUsedError;
  CategoriesModel? get model => throw _privateConstructorUsedError;
  int get selectedIndex => throw _privateConstructorUsedError;
  CategoriesModel? get subModel => throw _privateConstructorUsedError;
  RouteFailures? get fail => throw _privateConstructorUsedError;
  RouteFailures? get subFail => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RequestState getCategoriesState,
            RequestState getSubCategoriesState,
            CategoriesModel? model,
            int selectedIndex,
            CategoriesModel? subModel,
            RouteFailures? fail,
            RouteFailures? subFail)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RequestState getCategoriesState,
            RequestState getSubCategoriesState,
            CategoriesModel? model,
            int selectedIndex,
            CategoriesModel? subModel,
            RouteFailures? fail,
            RouteFailures? subFail)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RequestState getCategoriesState,
            RequestState getSubCategoriesState,
            CategoriesModel? model,
            int selectedIndex,
            CategoriesModel? subModel,
            RouteFailures? fail,
            RouteFailures? subFail)?
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
      CategoriesModel? model,
      int selectedIndex,
      CategoriesModel? subModel,
      RouteFailures? fail,
      RouteFailures? subFail});
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
    Object? model = freezed,
    Object? selectedIndex = null,
    Object? subModel = freezed,
    Object? fail = freezed,
    Object? subFail = freezed,
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
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CategoriesModel?,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      subModel: freezed == subModel
          ? _value.subModel
          : subModel // ignore: cast_nullable_to_non_nullable
              as CategoriesModel?,
      fail: freezed == fail
          ? _value.fail
          : fail // ignore: cast_nullable_to_non_nullable
              as RouteFailures?,
      subFail: freezed == subFail
          ? _value.subFail
          : subFail // ignore: cast_nullable_to_non_nullable
              as RouteFailures?,
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
      CategoriesModel? model,
      int selectedIndex,
      CategoriesModel? subModel,
      RouteFailures? fail,
      RouteFailures? subFail});
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
    Object? model = freezed,
    Object? selectedIndex = null,
    Object? subModel = freezed,
    Object? fail = freezed,
    Object? subFail = freezed,
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
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CategoriesModel?,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      subModel: freezed == subModel
          ? _value.subModel
          : subModel // ignore: cast_nullable_to_non_nullable
              as CategoriesModel?,
      fail: freezed == fail
          ? _value.fail
          : fail // ignore: cast_nullable_to_non_nullable
              as RouteFailures?,
      subFail: freezed == subFail
          ? _value.subFail
          : subFail // ignore: cast_nullable_to_non_nullable
              as RouteFailures?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.getCategoriesState = RequestState.init,
      this.getSubCategoriesState = RequestState.init,
      this.model,
      this.selectedIndex = 0,
      this.subModel,
      this.fail,
      this.subFail});

  @override
  @JsonKey()
  final RequestState getCategoriesState;
  @override
  @JsonKey()
  final RequestState getSubCategoriesState;
  @override
  final CategoriesModel? model;
  @override
  @JsonKey()
  final int selectedIndex;
  @override
  final CategoriesModel? subModel;
  @override
  final RouteFailures? fail;
  @override
  final RouteFailures? subFail;

  @override
  String toString() {
    return 'CategoriesState.initial(getCategoriesState: $getCategoriesState, getSubCategoriesState: $getSubCategoriesState, model: $model, selectedIndex: $selectedIndex, subModel: $subModel, fail: $fail, subFail: $subFail)';
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
            (identical(other.model, model) || other.model == model) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            (identical(other.subModel, subModel) ||
                other.subModel == subModel) &&
            (identical(other.fail, fail) || other.fail == fail) &&
            (identical(other.subFail, subFail) || other.subFail == subFail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getCategoriesState,
      getSubCategoriesState, model, selectedIndex, subModel, fail, subFail);

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
            CategoriesModel? model,
            int selectedIndex,
            CategoriesModel? subModel,
            RouteFailures? fail,
            RouteFailures? subFail)
        initial,
  }) {
    return initial(getCategoriesState, getSubCategoriesState, model,
        selectedIndex, subModel, fail, subFail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RequestState getCategoriesState,
            RequestState getSubCategoriesState,
            CategoriesModel? model,
            int selectedIndex,
            CategoriesModel? subModel,
            RouteFailures? fail,
            RouteFailures? subFail)?
        initial,
  }) {
    return initial?.call(getCategoriesState, getSubCategoriesState, model,
        selectedIndex, subModel, fail, subFail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RequestState getCategoriesState,
            RequestState getSubCategoriesState,
            CategoriesModel? model,
            int selectedIndex,
            CategoriesModel? subModel,
            RouteFailures? fail,
            RouteFailures? subFail)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(getCategoriesState, getSubCategoriesState, model,
          selectedIndex, subModel, fail, subFail);
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
      final CategoriesModel? model,
      final int selectedIndex,
      final CategoriesModel? subModel,
      final RouteFailures? fail,
      final RouteFailures? subFail}) = _$InitialImpl;

  @override
  RequestState get getCategoriesState;
  @override
  RequestState get getSubCategoriesState;
  @override
  CategoriesModel? get model;
  @override
  int get selectedIndex;
  @override
  CategoriesModel? get subModel;
  @override
  RouteFailures? get fail;
  @override
  RouteFailures? get subFail;

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
