// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeState {
  bool get showBack;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeStateCopyWith<HomeState> get copyWith =>
      _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeState &&
            (identical(other.showBack, showBack) ||
                other.showBack == showBack));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showBack);

  @override
  String toString() {
    return 'HomeState(showBack: $showBack)';
  }
}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) =
      _$HomeStateCopyWithImpl;
  @useResult
  $Res call({bool showBack});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showBack = null,
  }) {
    return _then(_self.copyWith(
      showBack: null == showBack
          ? _self.showBack
          : showBack // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _Loaded implements HomeState {
  const _Loaded({required this.showBack});

  @override
  final bool showBack;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            (identical(other.showBack, showBack) ||
                other.showBack == showBack));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showBack);

  @override
  String toString() {
    return 'HomeState.loaded(showBack: $showBack)';
  }
}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) =
      __$LoadedCopyWithImpl;
  @override
  @useResult
  $Res call({bool showBack});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? showBack = null,
  }) {
    return _then(_Loaded(
      showBack: null == showBack
          ? _self.showBack
          : showBack // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
