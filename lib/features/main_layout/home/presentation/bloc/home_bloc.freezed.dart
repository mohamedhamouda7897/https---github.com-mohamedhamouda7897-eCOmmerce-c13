// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCategories,
    required TResult Function() getCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function()? getCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function()? getCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(HomeGetCategoriesEvent value) getCategories,
    required TResult Function(HomeGetCartEvent value) getCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(HomeGetCategoriesEvent value)? getCategories,
    TResult? Function(HomeGetCartEvent value)? getCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(HomeGetCategoriesEvent value)? getCategories,
    TResult Function(HomeGetCartEvent value)? getCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
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
    extends _$HomeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'HomeEvent.started()';
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
    required TResult Function() getCart,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function()? getCart,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function()? getCart,
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
    required TResult Function(HomeGetCategoriesEvent value) getCategories,
    required TResult Function(HomeGetCartEvent value) getCart,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(HomeGetCategoriesEvent value)? getCategories,
    TResult? Function(HomeGetCartEvent value)? getCart,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(HomeGetCategoriesEvent value)? getCategories,
    TResult Function(HomeGetCartEvent value)? getCart,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$HomeGetCategoriesEventImplCopyWith<$Res> {
  factory _$$HomeGetCategoriesEventImplCopyWith(
          _$HomeGetCategoriesEventImpl value,
          $Res Function(_$HomeGetCategoriesEventImpl) then) =
      __$$HomeGetCategoriesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeGetCategoriesEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeGetCategoriesEventImpl>
    implements _$$HomeGetCategoriesEventImplCopyWith<$Res> {
  __$$HomeGetCategoriesEventImplCopyWithImpl(
      _$HomeGetCategoriesEventImpl _value,
      $Res Function(_$HomeGetCategoriesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomeGetCategoriesEventImpl implements HomeGetCategoriesEvent {
  const _$HomeGetCategoriesEventImpl();

  @override
  String toString() {
    return 'HomeEvent.getCategories()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeGetCategoriesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCategories,
    required TResult Function() getCart,
  }) {
    return getCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function()? getCart,
  }) {
    return getCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function()? getCart,
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
    required TResult Function(HomeGetCategoriesEvent value) getCategories,
    required TResult Function(HomeGetCartEvent value) getCart,
  }) {
    return getCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(HomeGetCategoriesEvent value)? getCategories,
    TResult? Function(HomeGetCartEvent value)? getCart,
  }) {
    return getCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(HomeGetCategoriesEvent value)? getCategories,
    TResult Function(HomeGetCartEvent value)? getCart,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories(this);
    }
    return orElse();
  }
}

abstract class HomeGetCategoriesEvent implements HomeEvent {
  const factory HomeGetCategoriesEvent() = _$HomeGetCategoriesEventImpl;
}

/// @nodoc
abstract class _$$HomeGetCartEventImplCopyWith<$Res> {
  factory _$$HomeGetCartEventImplCopyWith(_$HomeGetCartEventImpl value,
          $Res Function(_$HomeGetCartEventImpl) then) =
      __$$HomeGetCartEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeGetCartEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeGetCartEventImpl>
    implements _$$HomeGetCartEventImplCopyWith<$Res> {
  __$$HomeGetCartEventImplCopyWithImpl(_$HomeGetCartEventImpl _value,
      $Res Function(_$HomeGetCartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomeGetCartEventImpl implements HomeGetCartEvent {
  const _$HomeGetCartEventImpl();

  @override
  String toString() {
    return 'HomeEvent.getCart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeGetCartEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCategories,
    required TResult Function() getCart,
  }) {
    return getCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCategories,
    TResult? Function()? getCart,
  }) {
    return getCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCategories,
    TResult Function()? getCart,
    required TResult orElse(),
  }) {
    if (getCart != null) {
      return getCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(HomeGetCategoriesEvent value) getCategories,
    required TResult Function(HomeGetCartEvent value) getCart,
  }) {
    return getCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(HomeGetCategoriesEvent value)? getCategories,
    TResult? Function(HomeGetCartEvent value)? getCart,
  }) {
    return getCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(HomeGetCategoriesEvent value)? getCategories,
    TResult Function(HomeGetCartEvent value)? getCart,
    required TResult orElse(),
  }) {
    if (getCart != null) {
      return getCart(this);
    }
    return orElse();
  }
}

abstract class HomeGetCartEvent implements HomeEvent {
  const factory HomeGetCartEvent() = _$HomeGetCartEventImpl;
}

/// @nodoc
mixin _$HomeState {
  RequestState get getCategoriesState => throw _privateConstructorUsedError;
  RequestState get getCartState => throw _privateConstructorUsedError;
  CategoriesModel? get model => throw _privateConstructorUsedError;
  CartModel? get cartModel => throw _privateConstructorUsedError;
  RouteFailures? get failures => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RequestState getCategoriesState,
            RequestState getCartState,
            CategoriesModel? model,
            CartModel? cartModel,
            RouteFailures? failures)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RequestState getCategoriesState,
            RequestState getCartState,
            CategoriesModel? model,
            CartModel? cartModel,
            RouteFailures? failures)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RequestState getCategoriesState,
            RequestState getCartState,
            CategoriesModel? model,
            CartModel? cartModel,
            RouteFailures? failures)?
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

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {RequestState getCategoriesState,
      RequestState getCartState,
      CategoriesModel? model,
      CartModel? cartModel,
      RouteFailures? failures});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getCategoriesState = null,
    Object? getCartState = null,
    Object? model = freezed,
    Object? cartModel = freezed,
    Object? failures = freezed,
  }) {
    return _then(_value.copyWith(
      getCategoriesState: null == getCategoriesState
          ? _value.getCategoriesState
          : getCategoriesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getCartState: null == getCartState
          ? _value.getCartState
          : getCartState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CategoriesModel?,
      cartModel: freezed == cartModel
          ? _value.cartModel
          : cartModel // ignore: cast_nullable_to_non_nullable
              as CartModel?,
      failures: freezed == failures
          ? _value.failures
          : failures // ignore: cast_nullable_to_non_nullable
              as RouteFailures?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState getCategoriesState,
      RequestState getCartState,
      CategoriesModel? model,
      CartModel? cartModel,
      RouteFailures? failures});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getCategoriesState = null,
    Object? getCartState = null,
    Object? model = freezed,
    Object? cartModel = freezed,
    Object? failures = freezed,
  }) {
    return _then(_$InitialImpl(
      getCategoriesState: null == getCategoriesState
          ? _value.getCategoriesState
          : getCategoriesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getCartState: null == getCartState
          ? _value.getCartState
          : getCartState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CategoriesModel?,
      cartModel: freezed == cartModel
          ? _value.cartModel
          : cartModel // ignore: cast_nullable_to_non_nullable
              as CartModel?,
      failures: freezed == failures
          ? _value.failures
          : failures // ignore: cast_nullable_to_non_nullable
              as RouteFailures?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.getCategoriesState = RequestState.init,
      this.getCartState = RequestState.init,
      this.model,
      this.cartModel,
      this.failures});

  @override
  @JsonKey()
  final RequestState getCategoriesState;
  @override
  @JsonKey()
  final RequestState getCartState;
  @override
  final CategoriesModel? model;
  @override
  final CartModel? cartModel;
  @override
  final RouteFailures? failures;

  @override
  String toString() {
    return 'HomeState.initial(getCategoriesState: $getCategoriesState, getCartState: $getCartState, model: $model, cartModel: $cartModel, failures: $failures)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.getCategoriesState, getCategoriesState) ||
                other.getCategoriesState == getCategoriesState) &&
            (identical(other.getCartState, getCartState) ||
                other.getCartState == getCartState) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.cartModel, cartModel) ||
                other.cartModel == cartModel) &&
            (identical(other.failures, failures) ||
                other.failures == failures));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getCategoriesState, getCartState,
      model, cartModel, failures);

  /// Create a copy of HomeState
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
            RequestState getCartState,
            CategoriesModel? model,
            CartModel? cartModel,
            RouteFailures? failures)
        initial,
  }) {
    return initial(
        getCategoriesState, getCartState, model, cartModel, failures);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RequestState getCategoriesState,
            RequestState getCartState,
            CategoriesModel? model,
            CartModel? cartModel,
            RouteFailures? failures)?
        initial,
  }) {
    return initial?.call(
        getCategoriesState, getCartState, model, cartModel, failures);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RequestState getCategoriesState,
            RequestState getCartState,
            CategoriesModel? model,
            CartModel? cartModel,
            RouteFailures? failures)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          getCategoriesState, getCartState, model, cartModel, failures);
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

abstract class _Initial implements HomeState {
  const factory _Initial(
      {final RequestState getCategoriesState,
      final RequestState getCartState,
      final CategoriesModel? model,
      final CartModel? cartModel,
      final RouteFailures? failures}) = _$InitialImpl;

  @override
  RequestState get getCategoriesState;
  @override
  RequestState get getCartState;
  @override
  CategoriesModel? get model;
  @override
  CartModel? get cartModel;
  @override
  RouteFailures? get failures;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
