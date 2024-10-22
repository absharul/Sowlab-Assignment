// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_register.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String? get fullName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get businessName => throw _privateConstructorUsedError;
  String? get informalName => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError; // Nullable
  String? get city => throw _privateConstructorUsedError; // Nullable
  String? get state => throw _privateConstructorUsedError; // Nullable
  int? get zipCode => throw _privateConstructorUsedError; // Nullable
  String? get registrationProof =>
      throw _privateConstructorUsedError; // Nullable
  BusinessHours? get businessHours =>
      throw _privateConstructorUsedError; // Nullable
  String? get deviceToken => throw _privateConstructorUsedError; // Nullable
  String? get type => throw _privateConstructorUsedError; // Nullable
  String? get socialId => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String? fullName,
      String? email,
      String? phone,
      String? password,
      String? role,
      String? businessName,
      String? informalName,
      String? address,
      String? city,
      String? state,
      int? zipCode,
      String? registrationProof,
      BusinessHours? businessHours,
      String? deviceToken,
      String? type,
      String? socialId});

  $BusinessHoursCopyWith<$Res>? get businessHours;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? role = freezed,
    Object? businessName = freezed,
    Object? informalName = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? zipCode = freezed,
    Object? registrationProof = freezed,
    Object? businessHours = freezed,
    Object? deviceToken = freezed,
    Object? type = freezed,
    Object? socialId = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      businessName: freezed == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String?,
      informalName: freezed == informalName
          ? _value.informalName
          : informalName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as int?,
      registrationProof: freezed == registrationProof
          ? _value.registrationProof
          : registrationProof // ignore: cast_nullable_to_non_nullable
              as String?,
      businessHours: freezed == businessHours
          ? _value.businessHours
          : businessHours // ignore: cast_nullable_to_non_nullable
              as BusinessHours?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      socialId: freezed == socialId
          ? _value.socialId
          : socialId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessHoursCopyWith<$Res>? get businessHours {
    if (_value.businessHours == null) {
      return null;
    }

    return $BusinessHoursCopyWith<$Res>(_value.businessHours!, (value) {
      return _then(_value.copyWith(businessHours: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fullName,
      String? email,
      String? phone,
      String? password,
      String? role,
      String? businessName,
      String? informalName,
      String? address,
      String? city,
      String? state,
      int? zipCode,
      String? registrationProof,
      BusinessHours? businessHours,
      String? deviceToken,
      String? type,
      String? socialId});

  @override
  $BusinessHoursCopyWith<$Res>? get businessHours;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? role = freezed,
    Object? businessName = freezed,
    Object? informalName = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? zipCode = freezed,
    Object? registrationProof = freezed,
    Object? businessHours = freezed,
    Object? deviceToken = freezed,
    Object? type = freezed,
    Object? socialId = freezed,
  }) {
    return _then(_$UserModelImpl(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      businessName: freezed == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String?,
      informalName: freezed == informalName
          ? _value.informalName
          : informalName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as int?,
      registrationProof: freezed == registrationProof
          ? _value.registrationProof
          : registrationProof // ignore: cast_nullable_to_non_nullable
              as String?,
      businessHours: freezed == businessHours
          ? _value.businessHours
          : businessHours // ignore: cast_nullable_to_non_nullable
              as BusinessHours?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      socialId: freezed == socialId
          ? _value.socialId
          : socialId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {this.fullName,
      this.email,
      this.phone,
      this.password,
      this.role,
      this.businessName,
      this.informalName,
      this.address,
      this.city,
      this.state,
      this.zipCode,
      this.registrationProof,
      this.businessHours,
      this.deviceToken,
      this.type,
      this.socialId});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String? fullName;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? password;
  @override
  final String? role;
  @override
  final String? businessName;
  @override
  final String? informalName;
  @override
  final String? address;
// Nullable
  @override
  final String? city;
// Nullable
  @override
  final String? state;
// Nullable
  @override
  final int? zipCode;
// Nullable
  @override
  final String? registrationProof;
// Nullable
  @override
  final BusinessHours? businessHours;
// Nullable
  @override
  final String? deviceToken;
// Nullable
  @override
  final String? type;
// Nullable
  @override
  final String? socialId;

  @override
  String toString() {
    return 'UserModel(fullName: $fullName, email: $email, phone: $phone, password: $password, role: $role, businessName: $businessName, informalName: $informalName, address: $address, city: $city, state: $state, zipCode: $zipCode, registrationProof: $registrationProof, businessHours: $businessHours, deviceToken: $deviceToken, type: $type, socialId: $socialId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.businessName, businessName) ||
                other.businessName == businessName) &&
            (identical(other.informalName, informalName) ||
                other.informalName == informalName) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.registrationProof, registrationProof) ||
                other.registrationProof == registrationProof) &&
            (identical(other.businessHours, businessHours) ||
                other.businessHours == businessHours) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.socialId, socialId) ||
                other.socialId == socialId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fullName,
      email,
      phone,
      password,
      role,
      businessName,
      informalName,
      address,
      city,
      state,
      zipCode,
      registrationProof,
      businessHours,
      deviceToken,
      type,
      socialId);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {final String? fullName,
      final String? email,
      final String? phone,
      final String? password,
      final String? role,
      final String? businessName,
      final String? informalName,
      final String? address,
      final String? city,
      final String? state,
      final int? zipCode,
      final String? registrationProof,
      final BusinessHours? businessHours,
      final String? deviceToken,
      final String? type,
      final String? socialId}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String? get fullName;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get password;
  @override
  String? get role;
  @override
  String? get businessName;
  @override
  String? get informalName;
  @override
  String? get address; // Nullable
  @override
  String? get city; // Nullable
  @override
  String? get state; // Nullable
  @override
  int? get zipCode; // Nullable
  @override
  String? get registrationProof; // Nullable
  @override
  BusinessHours? get businessHours; // Nullable
  @override
  String? get deviceToken; // Nullable
  @override
  String? get type; // Nullable
  @override
  String? get socialId;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BusinessHours _$BusinessHoursFromJson(Map<String, dynamic> json) {
  return _BusinessHours.fromJson(json);
}

/// @nodoc
mixin _$BusinessHours {
  String? get openTime => throw _privateConstructorUsedError; // Nullable
  String? get closeTime => throw _privateConstructorUsedError;

  /// Serializes this BusinessHours to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessHours
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessHoursCopyWith<BusinessHours> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessHoursCopyWith<$Res> {
  factory $BusinessHoursCopyWith(
          BusinessHours value, $Res Function(BusinessHours) then) =
      _$BusinessHoursCopyWithImpl<$Res, BusinessHours>;
  @useResult
  $Res call({String? openTime, String? closeTime});
}

/// @nodoc
class _$BusinessHoursCopyWithImpl<$Res, $Val extends BusinessHours>
    implements $BusinessHoursCopyWith<$Res> {
  _$BusinessHoursCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessHours
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openTime = freezed,
    Object? closeTime = freezed,
  }) {
    return _then(_value.copyWith(
      openTime: freezed == openTime
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as String?,
      closeTime: freezed == closeTime
          ? _value.closeTime
          : closeTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusinessHoursImplCopyWith<$Res>
    implements $BusinessHoursCopyWith<$Res> {
  factory _$$BusinessHoursImplCopyWith(
          _$BusinessHoursImpl value, $Res Function(_$BusinessHoursImpl) then) =
      __$$BusinessHoursImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? openTime, String? closeTime});
}

/// @nodoc
class __$$BusinessHoursImplCopyWithImpl<$Res>
    extends _$BusinessHoursCopyWithImpl<$Res, _$BusinessHoursImpl>
    implements _$$BusinessHoursImplCopyWith<$Res> {
  __$$BusinessHoursImplCopyWithImpl(
      _$BusinessHoursImpl _value, $Res Function(_$BusinessHoursImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessHours
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openTime = freezed,
    Object? closeTime = freezed,
  }) {
    return _then(_$BusinessHoursImpl(
      openTime: freezed == openTime
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as String?,
      closeTime: freezed == closeTime
          ? _value.closeTime
          : closeTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessHoursImpl implements _BusinessHours {
  const _$BusinessHoursImpl({this.openTime, this.closeTime});

  factory _$BusinessHoursImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessHoursImplFromJson(json);

  @override
  final String? openTime;
// Nullable
  @override
  final String? closeTime;

  @override
  String toString() {
    return 'BusinessHours(openTime: $openTime, closeTime: $closeTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessHoursImpl &&
            (identical(other.openTime, openTime) ||
                other.openTime == openTime) &&
            (identical(other.closeTime, closeTime) ||
                other.closeTime == closeTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, openTime, closeTime);

  /// Create a copy of BusinessHours
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessHoursImplCopyWith<_$BusinessHoursImpl> get copyWith =>
      __$$BusinessHoursImplCopyWithImpl<_$BusinessHoursImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessHoursImplToJson(
      this,
    );
  }
}

abstract class _BusinessHours implements BusinessHours {
  const factory _BusinessHours(
      {final String? openTime, final String? closeTime}) = _$BusinessHoursImpl;

  factory _BusinessHours.fromJson(Map<String, dynamic> json) =
      _$BusinessHoursImpl.fromJson;

  @override
  String? get openTime; // Nullable
  @override
  String? get closeTime;

  /// Create a copy of BusinessHours
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessHoursImplCopyWith<_$BusinessHoursImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
