// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? catId) getProducts,
    required TResult Function(String prodId) addToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? catId)? getProducts,
    TResult? Function(String prodId)? addToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? catId)? getProducts,
    TResult Function(String prodId)? addToCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetProductsEvent value) getProducts,
    required TResult Function(AddProductToCartEvent value) addToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetProductsEvent value)? getProducts,
    TResult? Function(AddProductToCartEvent value)? addToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetProductsEvent value)? getProducts,
    TResult Function(AddProductToCartEvent value)? addToCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductEvent
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
    extends _$ProductEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ProductEvent.started()';
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
    required TResult Function(String? catId) getProducts,
    required TResult Function(String prodId) addToCart,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? catId)? getProducts,
    TResult? Function(String prodId)? addToCart,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? catId)? getProducts,
    TResult Function(String prodId)? addToCart,
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
    required TResult Function(GetProductsEvent value) getProducts,
    required TResult Function(AddProductToCartEvent value) addToCart,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetProductsEvent value)? getProducts,
    TResult? Function(AddProductToCartEvent value)? addToCart,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetProductsEvent value)? getProducts,
    TResult Function(AddProductToCartEvent value)? addToCart,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProductEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetProductsEventImplCopyWith<$Res> {
  factory _$$GetProductsEventImplCopyWith(_$GetProductsEventImpl value,
          $Res Function(_$GetProductsEventImpl) then) =
      __$$GetProductsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? catId});
}

/// @nodoc
class __$$GetProductsEventImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$GetProductsEventImpl>
    implements _$$GetProductsEventImplCopyWith<$Res> {
  __$$GetProductsEventImplCopyWithImpl(_$GetProductsEventImpl _value,
      $Res Function(_$GetProductsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catId = freezed,
  }) {
    return _then(_$GetProductsEventImpl(
      catId: freezed == catId
          ? _value.catId
          : catId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetProductsEventImpl implements GetProductsEvent {
  const _$GetProductsEventImpl({this.catId});

  @override
  final String? catId;

  @override
  String toString() {
    return 'ProductEvent.getProducts(catId: $catId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductsEventImpl &&
            (identical(other.catId, catId) || other.catId == catId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, catId);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductsEventImplCopyWith<_$GetProductsEventImpl> get copyWith =>
      __$$GetProductsEventImplCopyWithImpl<_$GetProductsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? catId) getProducts,
    required TResult Function(String prodId) addToCart,
  }) {
    return getProducts(catId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? catId)? getProducts,
    TResult? Function(String prodId)? addToCart,
  }) {
    return getProducts?.call(catId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? catId)? getProducts,
    TResult Function(String prodId)? addToCart,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(catId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetProductsEvent value) getProducts,
    required TResult Function(AddProductToCartEvent value) addToCart,
  }) {
    return getProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetProductsEvent value)? getProducts,
    TResult? Function(AddProductToCartEvent value)? addToCart,
  }) {
    return getProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetProductsEvent value)? getProducts,
    TResult Function(AddProductToCartEvent value)? addToCart,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(this);
    }
    return orElse();
  }
}

abstract class GetProductsEvent implements ProductEvent {
  const factory GetProductsEvent({final String? catId}) =
      _$GetProductsEventImpl;

  String? get catId;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProductsEventImplCopyWith<_$GetProductsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddProductToCartEventImplCopyWith<$Res> {
  factory _$$AddProductToCartEventImplCopyWith(
          _$AddProductToCartEventImpl value,
          $Res Function(_$AddProductToCartEventImpl) then) =
      __$$AddProductToCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String prodId});
}

/// @nodoc
class __$$AddProductToCartEventImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$AddProductToCartEventImpl>
    implements _$$AddProductToCartEventImplCopyWith<$Res> {
  __$$AddProductToCartEventImplCopyWithImpl(_$AddProductToCartEventImpl _value,
      $Res Function(_$AddProductToCartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prodId = null,
  }) {
    return _then(_$AddProductToCartEventImpl(
      prodId: null == prodId
          ? _value.prodId
          : prodId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddProductToCartEventImpl implements AddProductToCartEvent {
  const _$AddProductToCartEventImpl({required this.prodId});

  @override
  final String prodId;

  @override
  String toString() {
    return 'ProductEvent.addToCart(prodId: $prodId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductToCartEventImpl &&
            (identical(other.prodId, prodId) || other.prodId == prodId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prodId);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductToCartEventImplCopyWith<_$AddProductToCartEventImpl>
      get copyWith => __$$AddProductToCartEventImplCopyWithImpl<
          _$AddProductToCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? catId) getProducts,
    required TResult Function(String prodId) addToCart,
  }) {
    return addToCart(prodId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? catId)? getProducts,
    TResult? Function(String prodId)? addToCart,
  }) {
    return addToCart?.call(prodId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? catId)? getProducts,
    TResult Function(String prodId)? addToCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(prodId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetProductsEvent value) getProducts,
    required TResult Function(AddProductToCartEvent value) addToCart,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetProductsEvent value)? getProducts,
    TResult? Function(AddProductToCartEvent value)? addToCart,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetProductsEvent value)? getProducts,
    TResult Function(AddProductToCartEvent value)? addToCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class AddProductToCartEvent implements ProductEvent {
  const factory AddProductToCartEvent({required final String prodId}) =
      _$AddProductToCartEventImpl;

  String get prodId;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddProductToCartEventImplCopyWith<_$AddProductToCartEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductState {
  RequestState get getProductsState => throw _privateConstructorUsedError;
  RequestState get addToCartState => throw _privateConstructorUsedError;
  ProductModel? get entity => throw _privateConstructorUsedError;
  CartModel? get cartModel => throw _privateConstructorUsedError;
  RouteFailures? get failure => throw _privateConstructorUsedError;
  RouteFailures? get cartFailure => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RequestState getProductsState,
            RequestState addToCartState,
            ProductModel? entity,
            CartModel? cartModel,
            RouteFailures? failure,
            RouteFailures? cartFailure)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RequestState getProductsState,
            RequestState addToCartState,
            ProductModel? entity,
            CartModel? cartModel,
            RouteFailures? failure,
            RouteFailures? cartFailure)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RequestState getProductsState,
            RequestState addToCartState,
            ProductModel? entity,
            CartModel? cartModel,
            RouteFailures? failure,
            RouteFailures? cartFailure)?
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

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
  @useResult
  $Res call(
      {RequestState getProductsState,
      RequestState addToCartState,
      ProductModel? entity,
      CartModel? cartModel,
      RouteFailures? failure,
      RouteFailures? cartFailure});
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getProductsState = null,
    Object? addToCartState = null,
    Object? entity = freezed,
    Object? cartModel = freezed,
    Object? failure = freezed,
    Object? cartFailure = freezed,
  }) {
    return _then(_value.copyWith(
      getProductsState: null == getProductsState
          ? _value.getProductsState
          : getProductsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      addToCartState: null == addToCartState
          ? _value.addToCartState
          : addToCartState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      entity: freezed == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      cartModel: freezed == cartModel
          ? _value.cartModel
          : cartModel // ignore: cast_nullable_to_non_nullable
              as CartModel?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as RouteFailures?,
      cartFailure: freezed == cartFailure
          ? _value.cartFailure
          : cartFailure // ignore: cast_nullable_to_non_nullable
              as RouteFailures?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState getProductsState,
      RequestState addToCartState,
      ProductModel? entity,
      CartModel? cartModel,
      RouteFailures? failure,
      RouteFailures? cartFailure});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getProductsState = null,
    Object? addToCartState = null,
    Object? entity = freezed,
    Object? cartModel = freezed,
    Object? failure = freezed,
    Object? cartFailure = freezed,
  }) {
    return _then(_$InitialImpl(
      getProductsState: null == getProductsState
          ? _value.getProductsState
          : getProductsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      addToCartState: null == addToCartState
          ? _value.addToCartState
          : addToCartState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      entity: freezed == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
      cartModel: freezed == cartModel
          ? _value.cartModel
          : cartModel // ignore: cast_nullable_to_non_nullable
              as CartModel?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as RouteFailures?,
      cartFailure: freezed == cartFailure
          ? _value.cartFailure
          : cartFailure // ignore: cast_nullable_to_non_nullable
              as RouteFailures?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.getProductsState = RequestState.init,
      this.addToCartState = RequestState.init,
      this.entity,
      this.cartModel,
      this.failure,
      this.cartFailure});

  @override
  @JsonKey()
  final RequestState getProductsState;
  @override
  @JsonKey()
  final RequestState addToCartState;
  @override
  final ProductModel? entity;
  @override
  final CartModel? cartModel;
  @override
  final RouteFailures? failure;
  @override
  final RouteFailures? cartFailure;

  @override
  String toString() {
    return 'ProductState.initial(getProductsState: $getProductsState, addToCartState: $addToCartState, entity: $entity, cartModel: $cartModel, failure: $failure, cartFailure: $cartFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.getProductsState, getProductsState) ||
                other.getProductsState == getProductsState) &&
            (identical(other.addToCartState, addToCartState) ||
                other.addToCartState == addToCartState) &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.cartModel, cartModel) ||
                other.cartModel == cartModel) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.cartFailure, cartFailure) ||
                other.cartFailure == cartFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getProductsState, addToCartState,
      entity, cartModel, failure, cartFailure);

  /// Create a copy of ProductState
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
            RequestState getProductsState,
            RequestState addToCartState,
            ProductModel? entity,
            CartModel? cartModel,
            RouteFailures? failure,
            RouteFailures? cartFailure)
        initial,
  }) {
    return initial(getProductsState, addToCartState, entity, cartModel, failure,
        cartFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RequestState getProductsState,
            RequestState addToCartState,
            ProductModel? entity,
            CartModel? cartModel,
            RouteFailures? failure,
            RouteFailures? cartFailure)?
        initial,
  }) {
    return initial?.call(getProductsState, addToCartState, entity, cartModel,
        failure, cartFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RequestState getProductsState,
            RequestState addToCartState,
            ProductModel? entity,
            CartModel? cartModel,
            RouteFailures? failure,
            RouteFailures? cartFailure)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(getProductsState, addToCartState, entity, cartModel,
          failure, cartFailure);
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

abstract class _Initial implements ProductState {
  const factory _Initial(
      {final RequestState getProductsState,
      final RequestState addToCartState,
      final ProductModel? entity,
      final CartModel? cartModel,
      final RouteFailures? failure,
      final RouteFailures? cartFailure}) = _$InitialImpl;

  @override
  RequestState get getProductsState;
  @override
  RequestState get addToCartState;
  @override
  ProductModel? get entity;
  @override
  CartModel? get cartModel;
  @override
  RouteFailures? get failure;
  @override
  RouteFailures? get cartFailure;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
