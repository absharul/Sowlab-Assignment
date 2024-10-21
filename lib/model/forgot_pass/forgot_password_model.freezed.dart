// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForgotPasswordModel _$ForgotPasswordModelFromJson(Map<String, dynamic> json) {
  return _ForgotPasswordModel.fromJson(json);
}

/// @nodoc
mixin _$ForgotPasswordModel {
  String get mobile => throw _privateConstructorUsedError;

  /// Serializes this ForgotPasswordModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForgotPasswordModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForgotPasswordModelCopyWith<ForgotPasswordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordModelCopyWith<$Res> {
  factory $ForgotPasswordModelCopyWith(
          ForgotPasswordModel value, $Res Function(ForgotPasswordModel) then) =
      _$ForgotPasswordModelCopyWithImpl<$Res, ForgotPasswordModel>;
  @useResult
  $Res call({String mobile});
}

/// @nodoc
class _$ForgotPasswordModelCopyWithImpl<$Res, $Val extends ForgotPasswordModel>
    implements $ForgotPasswordModelCopyWith<$Res> {
  _$ForgotPasswordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForgotPasswordModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobile = null,
  }) {
    return _then(_value.copyWith(
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgotPasswordModelImplCopyWith<$Res>
    implements $ForgotPasswordModelCopyWith<$Res> {
  factory _$$ForgotPasswordModelImplCopyWith(_$ForgotPasswordModelImpl value,
          $Res Function(_$ForgotPasswordModelImpl) then) =
      __$$ForgotPasswordModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String mobile});
}

/// @nodoc
class __$$ForgotPasswordModelImplCopyWithImpl<$Res>
    extends _$ForgotPasswordModelCopyWithImpl<$Res, _$ForgotPasswordModelImpl>
    implements _$$ForgotPasswordModelImplCopyWith<$Res> {
  __$$ForgotPasswordModelImplCopyWithImpl(_$ForgotPasswordModelImpl _value,
      $Res Function(_$ForgotPasswordModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForgotPasswordModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobile = null,
  }) {
    return _then(_$ForgotPasswordModelImpl(
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForgotPasswordModelImpl implements _ForgotPasswordModel {
  const _$ForgotPasswordModelImpl({required this.mobile});

  factory _$ForgotPasswordModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForgotPasswordModelImplFromJson(json);

  @override
  final String mobile;

  @override
  String toString() {
    return 'ForgotPasswordModel(mobile: $mobile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordModelImpl &&
            (identical(other.mobile, mobile) || other.mobile == mobile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mobile);

  /// Create a copy of ForgotPasswordModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordModelImplCopyWith<_$ForgotPasswordModelImpl> get copyWith =>
      __$$ForgotPasswordModelImplCopyWithImpl<_$ForgotPasswordModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgotPasswordModelImplToJson(
      this,
    );
  }
}

abstract class _ForgotPasswordModel implements ForgotPasswordModel {
  const factory _ForgotPasswordModel({required final String mobile}) =
      _$ForgotPasswordModelImpl;

  factory _ForgotPasswordModel.fromJson(Map<String, dynamic> json) =
      _$ForgotPasswordModelImpl.fromJson;

  @override
  String get mobile;

  /// Create a copy of ForgotPasswordModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgotPasswordModelImplCopyWith<_$ForgotPasswordModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
