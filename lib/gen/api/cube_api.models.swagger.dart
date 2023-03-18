// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'cube_api.enums.swagger.dart' as enums;

part 'cube_api.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class AccessToken {
  AccessToken({
    required this.accessToken,
    required this.tokenType,
  });

  factory AccessToken.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenFromJson(json);

  @JsonKey(name: 'access_token')
  final String accessToken;
  @JsonKey(name: 'token_type')
  final String tokenType;
  static const fromJsonFactory = _$AccessTokenFromJson;
  static const toJsonFactory = _$AccessTokenToJson;
  Map<String, dynamic> toJson() => _$AccessTokenToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccessToken &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.tokenType, tokenType) ||
                const DeepCollectionEquality()
                    .equals(other.tokenType, tokenType)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(tokenType) ^
      runtimeType.hashCode;
}

extension $AccessTokenExtension on AccessToken {
  AccessToken copyWith({String? accessToken, String? tokenType}) {
    return AccessToken(
        accessToken: accessToken ?? this.accessToken,
        tokenType: tokenType ?? this.tokenType);
  }

  AccessToken copyWithWrapped(
      {Wrapped<String>? accessToken, Wrapped<String>? tokenType}) {
    return AccessToken(
        accessToken:
            (accessToken != null ? accessToken.value : this.accessToken),
        tokenType: (tokenType != null ? tokenType.value : this.tokenType));
  }
}

@JsonSerializable(explicitToJson: true)
class AttendanceSettingsUpdate {
  AttendanceSettingsUpdate({
    this.attendanceLectureTime,
    this.attendancePracticeTime,
  });

  factory AttendanceSettingsUpdate.fromJson(Map<String, dynamic> json) =>
      _$AttendanceSettingsUpdateFromJson(json);

  @JsonKey(name: 'attendance_lecture_time')
  final String? attendanceLectureTime;
  @JsonKey(name: 'attendance_practice_time')
  final String? attendancePracticeTime;
  static const fromJsonFactory = _$AttendanceSettingsUpdateFromJson;
  static const toJsonFactory = _$AttendanceSettingsUpdateToJson;
  Map<String, dynamic> toJson() => _$AttendanceSettingsUpdateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AttendanceSettingsUpdate &&
            (identical(other.attendanceLectureTime, attendanceLectureTime) ||
                const DeepCollectionEquality().equals(
                    other.attendanceLectureTime, attendanceLectureTime)) &&
            (identical(other.attendancePracticeTime, attendancePracticeTime) ||
                const DeepCollectionEquality().equals(
                    other.attendancePracticeTime, attendancePracticeTime)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(attendanceLectureTime) ^
      const DeepCollectionEquality().hash(attendancePracticeTime) ^
      runtimeType.hashCode;
}

extension $AttendanceSettingsUpdateExtension on AttendanceSettingsUpdate {
  AttendanceSettingsUpdate copyWith(
      {String? attendanceLectureTime, String? attendancePracticeTime}) {
    return AttendanceSettingsUpdate(
        attendanceLectureTime:
            attendanceLectureTime ?? this.attendanceLectureTime,
        attendancePracticeTime:
            attendancePracticeTime ?? this.attendancePracticeTime);
  }

  AttendanceSettingsUpdate copyWithWrapped(
      {Wrapped<String?>? attendanceLectureTime,
      Wrapped<String?>? attendancePracticeTime}) {
    return AttendanceSettingsUpdate(
        attendanceLectureTime: (attendanceLectureTime != null
            ? attendanceLectureTime.value
            : this.attendanceLectureTime),
        attendancePracticeTime: (attendancePracticeTime != null
            ? attendancePracticeTime.value
            : this.attendancePracticeTime));
  }
}

@JsonSerializable(explicitToJson: true)
class AuthSettings {
  AuthSettings({
    required this.webAccessTokenExpireMinutes,
    required this.botAccessTokenExpireMinutes,
    required this.mobileAccessTokenExpireMinutes,
    required this.refreshTokenExpireMinutes,
  });

  factory AuthSettings.fromJson(Map<String, dynamic> json) =>
      _$AuthSettingsFromJson(json);

  @JsonKey(name: 'web_access_token_expire_minutes')
  final int webAccessTokenExpireMinutes;
  @JsonKey(name: 'bot_access_token_expire_minutes')
  final int botAccessTokenExpireMinutes;
  @JsonKey(name: 'mobile_access_token_expire_minutes')
  final int mobileAccessTokenExpireMinutes;
  @JsonKey(name: 'refresh_token_expire_minutes')
  final int refreshTokenExpireMinutes;
  static const fromJsonFactory = _$AuthSettingsFromJson;
  static const toJsonFactory = _$AuthSettingsToJson;
  Map<String, dynamic> toJson() => _$AuthSettingsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthSettings &&
            (identical(other.webAccessTokenExpireMinutes,
                    webAccessTokenExpireMinutes) ||
                const DeepCollectionEquality().equals(
                    other.webAccessTokenExpireMinutes,
                    webAccessTokenExpireMinutes)) &&
            (identical(other.botAccessTokenExpireMinutes,
                    botAccessTokenExpireMinutes) ||
                const DeepCollectionEquality().equals(
                    other.botAccessTokenExpireMinutes,
                    botAccessTokenExpireMinutes)) &&
            (identical(other.mobileAccessTokenExpireMinutes,
                    mobileAccessTokenExpireMinutes) ||
                const DeepCollectionEquality().equals(
                    other.mobileAccessTokenExpireMinutes,
                    mobileAccessTokenExpireMinutes)) &&
            (identical(other.refreshTokenExpireMinutes,
                    refreshTokenExpireMinutes) ||
                const DeepCollectionEquality().equals(
                    other.refreshTokenExpireMinutes,
                    refreshTokenExpireMinutes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(webAccessTokenExpireMinutes) ^
      const DeepCollectionEquality().hash(botAccessTokenExpireMinutes) ^
      const DeepCollectionEquality().hash(mobileAccessTokenExpireMinutes) ^
      const DeepCollectionEquality().hash(refreshTokenExpireMinutes) ^
      runtimeType.hashCode;
}

extension $AuthSettingsExtension on AuthSettings {
  AuthSettings copyWith(
      {int? webAccessTokenExpireMinutes,
      int? botAccessTokenExpireMinutes,
      int? mobileAccessTokenExpireMinutes,
      int? refreshTokenExpireMinutes}) {
    return AuthSettings(
        webAccessTokenExpireMinutes:
            webAccessTokenExpireMinutes ?? this.webAccessTokenExpireMinutes,
        botAccessTokenExpireMinutes:
            botAccessTokenExpireMinutes ?? this.botAccessTokenExpireMinutes,
        mobileAccessTokenExpireMinutes: mobileAccessTokenExpireMinutes ??
            this.mobileAccessTokenExpireMinutes,
        refreshTokenExpireMinutes:
            refreshTokenExpireMinutes ?? this.refreshTokenExpireMinutes);
  }

  AuthSettings copyWithWrapped(
      {Wrapped<int>? webAccessTokenExpireMinutes,
      Wrapped<int>? botAccessTokenExpireMinutes,
      Wrapped<int>? mobileAccessTokenExpireMinutes,
      Wrapped<int>? refreshTokenExpireMinutes}) {
    return AuthSettings(
        webAccessTokenExpireMinutes: (webAccessTokenExpireMinutes != null
            ? webAccessTokenExpireMinutes.value
            : this.webAccessTokenExpireMinutes),
        botAccessTokenExpireMinutes: (botAccessTokenExpireMinutes != null
            ? botAccessTokenExpireMinutes.value
            : this.botAccessTokenExpireMinutes),
        mobileAccessTokenExpireMinutes: (mobileAccessTokenExpireMinutes != null
            ? mobileAccessTokenExpireMinutes.value
            : this.mobileAccessTokenExpireMinutes),
        refreshTokenExpireMinutes: (refreshTokenExpireMinutes != null
            ? refreshTokenExpireMinutes.value
            : this.refreshTokenExpireMinutes));
  }
}

@JsonSerializable(explicitToJson: true)
class BellCreate {
  BellCreate({
    required this.number,
    required this.time,
  });

  factory BellCreate.fromJson(Map<String, dynamic> json) =>
      _$BellCreateFromJson(json);

  @JsonKey(name: 'number')
  final int number;
  @JsonKey(name: 'time')
  final String time;
  static const fromJsonFactory = _$BellCreateFromJson;
  static const toJsonFactory = _$BellCreateToJson;
  Map<String, dynamic> toJson() => _$BellCreateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BellCreate &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(time) ^
      runtimeType.hashCode;
}

extension $BellCreateExtension on BellCreate {
  BellCreate copyWith({int? number, String? time}) {
    return BellCreate(number: number ?? this.number, time: time ?? this.time);
  }

  BellCreate copyWithWrapped({Wrapped<int>? number, Wrapped<String>? time}) {
    return BellCreate(
        number: (number != null ? number.value : this.number),
        time: (time != null ? time.value : this.time));
  }
}

@JsonSerializable(explicitToJson: true)
class BellInDb {
  BellInDb({
    required this.id,
    required this.number,
    required this.time,
  });

  factory BellInDb.fromJson(Map<String, dynamic> json) =>
      _$BellInDbFromJson(json);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'number')
  final int number;
  @JsonKey(name: 'time')
  final String time;
  static const fromJsonFactory = _$BellInDbFromJson;
  static const toJsonFactory = _$BellInDbToJson;
  Map<String, dynamic> toJson() => _$BellInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BellInDb &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(time) ^
      runtimeType.hashCode;
}

extension $BellInDbExtension on BellInDb {
  BellInDb copyWith({int? id, int? number, String? time}) {
    return BellInDb(
        id: id ?? this.id,
        number: number ?? this.number,
        time: time ?? this.time);
  }

  BellInDb copyWithWrapped(
      {Wrapped<int>? id, Wrapped<int>? number, Wrapped<String>? time}) {
    return BellInDb(
        id: (id != null ? id.value : this.id),
        number: (number != null ? number.value : this.number),
        time: (time != null ? time.value : this.time));
  }
}

@JsonSerializable(explicitToJson: true)
class BellUpdate {
  BellUpdate({
    required this.number,
    required this.time,
  });

  factory BellUpdate.fromJson(Map<String, dynamic> json) =>
      _$BellUpdateFromJson(json);

  @JsonKey(name: 'number')
  final int number;
  @JsonKey(name: 'time')
  final String time;
  static const fromJsonFactory = _$BellUpdateFromJson;
  static const toJsonFactory = _$BellUpdateToJson;
  Map<String, dynamic> toJson() => _$BellUpdateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BellUpdate &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(time) ^
      runtimeType.hashCode;
}

extension $BellUpdateExtension on BellUpdate {
  BellUpdate copyWith({int? number, String? time}) {
    return BellUpdate(number: number ?? this.number, time: time ?? this.time);
  }

  BellUpdate copyWithWrapped({Wrapped<int>? number, Wrapped<String>? time}) {
    return BellUpdate(
        number: (number != null ? number.value : this.number),
        time: (time != null ? time.value : this.time));
  }
}

@JsonSerializable(explicitToJson: true)
class BodyImportBellsApiBellsImportPost {
  BodyImportBellsApiBellsImportPost({
    required this.file,
  });

  factory BodyImportBellsApiBellsImportPost.fromJson(
          Map<String, dynamic> json) =>
      _$BodyImportBellsApiBellsImportPostFromJson(json);

  @JsonKey(name: 'file')
  final String file;
  static const fromJsonFactory = _$BodyImportBellsApiBellsImportPostFromJson;
  static const toJsonFactory = _$BodyImportBellsApiBellsImportPostToJson;
  Map<String, dynamic> toJson() =>
      _$BodyImportBellsApiBellsImportPostToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BodyImportBellsApiBellsImportPost &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(file) ^ runtimeType.hashCode;
}

extension $BodyImportBellsApiBellsImportPostExtension
    on BodyImportBellsApiBellsImportPost {
  BodyImportBellsApiBellsImportPost copyWith({String? file}) {
    return BodyImportBellsApiBellsImportPost(file: file ?? this.file);
  }

  BodyImportBellsApiBellsImportPost copyWithWrapped({Wrapped<String>? file}) {
    return BodyImportBellsApiBellsImportPost(
        file: (file != null ? file.value : this.file));
  }
}

@JsonSerializable(explicitToJson: true)
class BodyImportDirectionsApiDirectionsImportPost {
  BodyImportDirectionsApiDirectionsImportPost({
    required this.file,
  });

  factory BodyImportDirectionsApiDirectionsImportPost.fromJson(
          Map<String, dynamic> json) =>
      _$BodyImportDirectionsApiDirectionsImportPostFromJson(json);

  @JsonKey(name: 'file')
  final String file;
  static const fromJsonFactory =
      _$BodyImportDirectionsApiDirectionsImportPostFromJson;
  static const toJsonFactory =
      _$BodyImportDirectionsApiDirectionsImportPostToJson;
  Map<String, dynamic> toJson() =>
      _$BodyImportDirectionsApiDirectionsImportPostToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BodyImportDirectionsApiDirectionsImportPost &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(file) ^ runtimeType.hashCode;
}

extension $BodyImportDirectionsApiDirectionsImportPostExtension
    on BodyImportDirectionsApiDirectionsImportPost {
  BodyImportDirectionsApiDirectionsImportPost copyWith({String? file}) {
    return BodyImportDirectionsApiDirectionsImportPost(file: file ?? this.file);
  }

  BodyImportDirectionsApiDirectionsImportPost copyWithWrapped(
      {Wrapped<String>? file}) {
    return BodyImportDirectionsApiDirectionsImportPost(
        file: (file != null ? file.value : this.file));
  }
}

@JsonSerializable(explicitToJson: true)
class BodyImportDisciplinesApiDisciplinesImportPost {
  BodyImportDisciplinesApiDisciplinesImportPost({
    required this.file,
  });

  factory BodyImportDisciplinesApiDisciplinesImportPost.fromJson(
          Map<String, dynamic> json) =>
      _$BodyImportDisciplinesApiDisciplinesImportPostFromJson(json);

  @JsonKey(name: 'file')
  final String file;
  static const fromJsonFactory =
      _$BodyImportDisciplinesApiDisciplinesImportPostFromJson;
  static const toJsonFactory =
      _$BodyImportDisciplinesApiDisciplinesImportPostToJson;
  Map<String, dynamic> toJson() =>
      _$BodyImportDisciplinesApiDisciplinesImportPostToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BodyImportDisciplinesApiDisciplinesImportPost &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(file) ^ runtimeType.hashCode;
}

extension $BodyImportDisciplinesApiDisciplinesImportPostExtension
    on BodyImportDisciplinesApiDisciplinesImportPost {
  BodyImportDisciplinesApiDisciplinesImportPost copyWith({String? file}) {
    return BodyImportDisciplinesApiDisciplinesImportPost(
        file: file ?? this.file);
  }

  BodyImportDisciplinesApiDisciplinesImportPost copyWithWrapped(
      {Wrapped<String>? file}) {
    return BodyImportDisciplinesApiDisciplinesImportPost(
        file: (file != null ? file.value : this.file));
  }
}

@JsonSerializable(explicitToJson: true)
class BodyImportEquipmentsApiEquipmentsImportPost {
  BodyImportEquipmentsApiEquipmentsImportPost({
    required this.file,
  });

  factory BodyImportEquipmentsApiEquipmentsImportPost.fromJson(
          Map<String, dynamic> json) =>
      _$BodyImportEquipmentsApiEquipmentsImportPostFromJson(json);

  @JsonKey(name: 'file')
  final String file;
  static const fromJsonFactory =
      _$BodyImportEquipmentsApiEquipmentsImportPostFromJson;
  static const toJsonFactory =
      _$BodyImportEquipmentsApiEquipmentsImportPostToJson;
  Map<String, dynamic> toJson() =>
      _$BodyImportEquipmentsApiEquipmentsImportPostToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BodyImportEquipmentsApiEquipmentsImportPost &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(file) ^ runtimeType.hashCode;
}

extension $BodyImportEquipmentsApiEquipmentsImportPostExtension
    on BodyImportEquipmentsApiEquipmentsImportPost {
  BodyImportEquipmentsApiEquipmentsImportPost copyWith({String? file}) {
    return BodyImportEquipmentsApiEquipmentsImportPost(file: file ?? this.file);
  }

  BodyImportEquipmentsApiEquipmentsImportPost copyWithWrapped(
      {Wrapped<String>? file}) {
    return BodyImportEquipmentsApiEquipmentsImportPost(
        file: (file != null ? file.value : this.file));
  }
}

@JsonSerializable(explicitToJson: true)
class BodyImportFacultiesApiFacultiesImportPost {
  BodyImportFacultiesApiFacultiesImportPost({
    required this.file,
  });

  factory BodyImportFacultiesApiFacultiesImportPost.fromJson(
          Map<String, dynamic> json) =>
      _$BodyImportFacultiesApiFacultiesImportPostFromJson(json);

  @JsonKey(name: 'file')
  final String file;
  static const fromJsonFactory =
      _$BodyImportFacultiesApiFacultiesImportPostFromJson;
  static const toJsonFactory =
      _$BodyImportFacultiesApiFacultiesImportPostToJson;
  Map<String, dynamic> toJson() =>
      _$BodyImportFacultiesApiFacultiesImportPostToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BodyImportFacultiesApiFacultiesImportPost &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(file) ^ runtimeType.hashCode;
}

extension $BodyImportFacultiesApiFacultiesImportPostExtension
    on BodyImportFacultiesApiFacultiesImportPost {
  BodyImportFacultiesApiFacultiesImportPost copyWith({String? file}) {
    return BodyImportFacultiesApiFacultiesImportPost(file: file ?? this.file);
  }

  BodyImportFacultiesApiFacultiesImportPost copyWithWrapped(
      {Wrapped<String>? file}) {
    return BodyImportFacultiesApiFacultiesImportPost(
        file: (file != null ? file.value : this.file));
  }
}

@JsonSerializable(explicitToJson: true)
class BodyImportGroupsApiGroupsImportPost {
  BodyImportGroupsApiGroupsImportPost({
    required this.file,
  });

  factory BodyImportGroupsApiGroupsImportPost.fromJson(
          Map<String, dynamic> json) =>
      _$BodyImportGroupsApiGroupsImportPostFromJson(json);

  @JsonKey(name: 'file')
  final String file;
  static const fromJsonFactory = _$BodyImportGroupsApiGroupsImportPostFromJson;
  static const toJsonFactory = _$BodyImportGroupsApiGroupsImportPostToJson;
  Map<String, dynamic> toJson() =>
      _$BodyImportGroupsApiGroupsImportPostToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BodyImportGroupsApiGroupsImportPost &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(file) ^ runtimeType.hashCode;
}

extension $BodyImportGroupsApiGroupsImportPostExtension
    on BodyImportGroupsApiGroupsImportPost {
  BodyImportGroupsApiGroupsImportPost copyWith({String? file}) {
    return BodyImportGroupsApiGroupsImportPost(file: file ?? this.file);
  }

  BodyImportGroupsApiGroupsImportPost copyWithWrapped({Wrapped<String>? file}) {
    return BodyImportGroupsApiGroupsImportPost(
        file: (file != null ? file.value : this.file));
  }
}

@JsonSerializable(explicitToJson: true)
class BodyImportPlacesApiPlacesImportPost {
  BodyImportPlacesApiPlacesImportPost({
    required this.file,
  });

  factory BodyImportPlacesApiPlacesImportPost.fromJson(
          Map<String, dynamic> json) =>
      _$BodyImportPlacesApiPlacesImportPostFromJson(json);

  @JsonKey(name: 'file')
  final String file;
  static const fromJsonFactory = _$BodyImportPlacesApiPlacesImportPostFromJson;
  static const toJsonFactory = _$BodyImportPlacesApiPlacesImportPostToJson;
  Map<String, dynamic> toJson() =>
      _$BodyImportPlacesApiPlacesImportPostToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BodyImportPlacesApiPlacesImportPost &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(file) ^ runtimeType.hashCode;
}

extension $BodyImportPlacesApiPlacesImportPostExtension
    on BodyImportPlacesApiPlacesImportPost {
  BodyImportPlacesApiPlacesImportPost copyWith({String? file}) {
    return BodyImportPlacesApiPlacesImportPost(file: file ?? this.file);
  }

  BodyImportPlacesApiPlacesImportPost copyWithWrapped({Wrapped<String>? file}) {
    return BodyImportPlacesApiPlacesImportPost(
        file: (file != null ? file.value : this.file));
  }
}

@JsonSerializable(explicitToJson: true)
class BodyImportProfilesApiProfilesImportPost {
  BodyImportProfilesApiProfilesImportPost({
    required this.file,
  });

  factory BodyImportProfilesApiProfilesImportPost.fromJson(
          Map<String, dynamic> json) =>
      _$BodyImportProfilesApiProfilesImportPostFromJson(json);

  @JsonKey(name: 'file')
  final String file;
  static const fromJsonFactory =
      _$BodyImportProfilesApiProfilesImportPostFromJson;
  static const toJsonFactory = _$BodyImportProfilesApiProfilesImportPostToJson;
  Map<String, dynamic> toJson() =>
      _$BodyImportProfilesApiProfilesImportPostToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BodyImportProfilesApiProfilesImportPost &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(file) ^ runtimeType.hashCode;
}

extension $BodyImportProfilesApiProfilesImportPostExtension
    on BodyImportProfilesApiProfilesImportPost {
  BodyImportProfilesApiProfilesImportPost copyWith({String? file}) {
    return BodyImportProfilesApiProfilesImportPost(file: file ?? this.file);
  }

  BodyImportProfilesApiProfilesImportPost copyWithWrapped(
      {Wrapped<String>? file}) {
    return BodyImportProfilesApiProfilesImportPost(
        file: (file != null ? file.value : this.file));
  }
}

@JsonSerializable(explicitToJson: true)
class BodyImportStudentsApiStudentsImportPost {
  BodyImportStudentsApiStudentsImportPost({
    required this.file,
  });

  factory BodyImportStudentsApiStudentsImportPost.fromJson(
          Map<String, dynamic> json) =>
      _$BodyImportStudentsApiStudentsImportPostFromJson(json);

  @JsonKey(name: 'file')
  final String file;
  static const fromJsonFactory =
      _$BodyImportStudentsApiStudentsImportPostFromJson;
  static const toJsonFactory = _$BodyImportStudentsApiStudentsImportPostToJson;
  Map<String, dynamic> toJson() =>
      _$BodyImportStudentsApiStudentsImportPostToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BodyImportStudentsApiStudentsImportPost &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(file) ^ runtimeType.hashCode;
}

extension $BodyImportStudentsApiStudentsImportPostExtension
    on BodyImportStudentsApiStudentsImportPost {
  BodyImportStudentsApiStudentsImportPost copyWith({String? file}) {
    return BodyImportStudentsApiStudentsImportPost(file: file ?? this.file);
  }

  BodyImportStudentsApiStudentsImportPost copyWithWrapped(
      {Wrapped<String>? file}) {
    return BodyImportStudentsApiStudentsImportPost(
        file: (file != null ? file.value : this.file));
  }
}

@JsonSerializable(explicitToJson: true)
class BodyImportTeachersApiTeachersImportPost {
  BodyImportTeachersApiTeachersImportPost({
    required this.file,
  });

  factory BodyImportTeachersApiTeachersImportPost.fromJson(
          Map<String, dynamic> json) =>
      _$BodyImportTeachersApiTeachersImportPostFromJson(json);

  @JsonKey(name: 'file')
  final String file;
  static const fromJsonFactory =
      _$BodyImportTeachersApiTeachersImportPostFromJson;
  static const toJsonFactory = _$BodyImportTeachersApiTeachersImportPostToJson;
  Map<String, dynamic> toJson() =>
      _$BodyImportTeachersApiTeachersImportPostToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BodyImportTeachersApiTeachersImportPost &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(file) ^ runtimeType.hashCode;
}

extension $BodyImportTeachersApiTeachersImportPostExtension
    on BodyImportTeachersApiTeachersImportPost {
  BodyImportTeachersApiTeachersImportPost copyWith({String? file}) {
    return BodyImportTeachersApiTeachersImportPost(file: file ?? this.file);
  }

  BodyImportTeachersApiTeachersImportPost copyWithWrapped(
      {Wrapped<String>? file}) {
    return BodyImportTeachersApiTeachersImportPost(
        file: (file != null ? file.value : this.file));
  }
}

@JsonSerializable(explicitToJson: true)
class BodyLoginApiAuthLoginPost {
  BodyLoginApiAuthLoginPost({
    this.grantType,
    required this.username,
    required this.password,
    this.scope,
    this.clientId,
    this.clientSecret,
  });

  factory BodyLoginApiAuthLoginPost.fromJson(Map<String, dynamic> json) =>
      _$BodyLoginApiAuthLoginPostFromJson(json);

  @JsonKey(name: 'grant_type')
  final String? grantType;
  @JsonKey(name: 'username')
  final String username;
  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'scope')
  final String? scope;
  @JsonKey(name: 'client_id')
  final String? clientId;
  @JsonKey(name: 'client_secret')
  final String? clientSecret;
  static const fromJsonFactory = _$BodyLoginApiAuthLoginPostFromJson;
  static const toJsonFactory = _$BodyLoginApiAuthLoginPostToJson;
  Map<String, dynamic> toJson() => _$BodyLoginApiAuthLoginPostToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BodyLoginApiAuthLoginPost &&
            (identical(other.grantType, grantType) ||
                const DeepCollectionEquality()
                    .equals(other.grantType, grantType)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.scope, scope) ||
                const DeepCollectionEquality().equals(other.scope, scope)) &&
            (identical(other.clientId, clientId) ||
                const DeepCollectionEquality()
                    .equals(other.clientId, clientId)) &&
            (identical(other.clientSecret, clientSecret) ||
                const DeepCollectionEquality()
                    .equals(other.clientSecret, clientSecret)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(grantType) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(scope) ^
      const DeepCollectionEquality().hash(clientId) ^
      const DeepCollectionEquality().hash(clientSecret) ^
      runtimeType.hashCode;
}

extension $BodyLoginApiAuthLoginPostExtension on BodyLoginApiAuthLoginPost {
  BodyLoginApiAuthLoginPost copyWith(
      {String? grantType,
      String? username,
      String? password,
      String? scope,
      String? clientId,
      String? clientSecret}) {
    return BodyLoginApiAuthLoginPost(
        grantType: grantType ?? this.grantType,
        username: username ?? this.username,
        password: password ?? this.password,
        scope: scope ?? this.scope,
        clientId: clientId ?? this.clientId,
        clientSecret: clientSecret ?? this.clientSecret);
  }

  BodyLoginApiAuthLoginPost copyWithWrapped(
      {Wrapped<String?>? grantType,
      Wrapped<String>? username,
      Wrapped<String>? password,
      Wrapped<String?>? scope,
      Wrapped<String?>? clientId,
      Wrapped<String?>? clientSecret}) {
    return BodyLoginApiAuthLoginPost(
        grantType: (grantType != null ? grantType.value : this.grantType),
        username: (username != null ? username.value : this.username),
        password: (password != null ? password.value : this.password),
        scope: (scope != null ? scope.value : this.scope),
        clientId: (clientId != null ? clientId.value : this.clientId),
        clientSecret:
            (clientSecret != null ? clientSecret.value : this.clientSecret));
  }
}

@JsonSerializable(explicitToJson: true)
class DirectionCreate {
  DirectionCreate({
    required this.name,
    this.shortName,
    required this.cipher,
    required this.degreeStudy,
    required this.facultyId,
    this.placeLoads,
  });

  factory DirectionCreate.fromJson(Map<String, dynamic> json) =>
      _$DirectionCreateFromJson(json);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'short_name')
  final String? shortName;
  @JsonKey(name: 'cipher')
  final String cipher;
  @JsonKey(
    name: 'degree_study',
    toJson: degreeStudyToJson,
    fromJson: degreeStudyFromJson,
  )
  final enums.DegreeStudy degreeStudy;
  @JsonKey(name: 'faculty_id')
  final int facultyId;
  @JsonKey(name: 'place_loads', defaultValue: <DirectionPlaceLoadInfo>[])
  final List<DirectionPlaceLoadInfo>? placeLoads;
  static const fromJsonFactory = _$DirectionCreateFromJson;
  static const toJsonFactory = _$DirectionCreateToJson;
  Map<String, dynamic> toJson() => _$DirectionCreateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DirectionCreate &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.shortName, shortName) ||
                const DeepCollectionEquality()
                    .equals(other.shortName, shortName)) &&
            (identical(other.cipher, cipher) ||
                const DeepCollectionEquality().equals(other.cipher, cipher)) &&
            (identical(other.degreeStudy, degreeStudy) ||
                const DeepCollectionEquality()
                    .equals(other.degreeStudy, degreeStudy)) &&
            (identical(other.facultyId, facultyId) ||
                const DeepCollectionEquality()
                    .equals(other.facultyId, facultyId)) &&
            (identical(other.placeLoads, placeLoads) ||
                const DeepCollectionEquality()
                    .equals(other.placeLoads, placeLoads)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(shortName) ^
      const DeepCollectionEquality().hash(cipher) ^
      const DeepCollectionEquality().hash(degreeStudy) ^
      const DeepCollectionEquality().hash(facultyId) ^
      const DeepCollectionEquality().hash(placeLoads) ^
      runtimeType.hashCode;
}

extension $DirectionCreateExtension on DirectionCreate {
  DirectionCreate copyWith(
      {String? name,
      String? shortName,
      String? cipher,
      enums.DegreeStudy? degreeStudy,
      int? facultyId,
      List<DirectionPlaceLoadInfo>? placeLoads}) {
    return DirectionCreate(
        name: name ?? this.name,
        shortName: shortName ?? this.shortName,
        cipher: cipher ?? this.cipher,
        degreeStudy: degreeStudy ?? this.degreeStudy,
        facultyId: facultyId ?? this.facultyId,
        placeLoads: placeLoads ?? this.placeLoads);
  }

  DirectionCreate copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<String?>? shortName,
      Wrapped<String>? cipher,
      Wrapped<enums.DegreeStudy>? degreeStudy,
      Wrapped<int>? facultyId,
      Wrapped<List<DirectionPlaceLoadInfo>?>? placeLoads}) {
    return DirectionCreate(
        name: (name != null ? name.value : this.name),
        shortName: (shortName != null ? shortName.value : this.shortName),
        cipher: (cipher != null ? cipher.value : this.cipher),
        degreeStudy:
            (degreeStudy != null ? degreeStudy.value : this.degreeStudy),
        facultyId: (facultyId != null ? facultyId.value : this.facultyId),
        placeLoads: (placeLoads != null ? placeLoads.value : this.placeLoads));
  }
}

@JsonSerializable(explicitToJson: true)
class DirectionInDb {
  DirectionInDb({
    required this.name,
    this.shortName,
    this.cipher,
    required this.degreeStudy,
    required this.facultyId,
    this.placeLoads,
    required this.id,
  });

  factory DirectionInDb.fromJson(Map<String, dynamic> json) =>
      _$DirectionInDbFromJson(json);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'short_name')
  final String? shortName;
  @JsonKey(name: 'cipher')
  final String? cipher;
  @JsonKey(
    name: 'degree_study',
    toJson: degreeStudyToJson,
    fromJson: degreeStudyFromJson,
  )
  final enums.DegreeStudy degreeStudy;
  @JsonKey(name: 'faculty_id')
  final int facultyId;
  @JsonKey(name: 'place_loads', defaultValue: <DirectionPlaceLoadInfo>[])
  final List<DirectionPlaceLoadInfo>? placeLoads;
  @JsonKey(name: 'id')
  final int id;
  static const fromJsonFactory = _$DirectionInDbFromJson;
  static const toJsonFactory = _$DirectionInDbToJson;
  Map<String, dynamic> toJson() => _$DirectionInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DirectionInDb &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.shortName, shortName) ||
                const DeepCollectionEquality()
                    .equals(other.shortName, shortName)) &&
            (identical(other.cipher, cipher) ||
                const DeepCollectionEquality().equals(other.cipher, cipher)) &&
            (identical(other.degreeStudy, degreeStudy) ||
                const DeepCollectionEquality()
                    .equals(other.degreeStudy, degreeStudy)) &&
            (identical(other.facultyId, facultyId) ||
                const DeepCollectionEquality()
                    .equals(other.facultyId, facultyId)) &&
            (identical(other.placeLoads, placeLoads) ||
                const DeepCollectionEquality()
                    .equals(other.placeLoads, placeLoads)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(shortName) ^
      const DeepCollectionEquality().hash(cipher) ^
      const DeepCollectionEquality().hash(degreeStudy) ^
      const DeepCollectionEquality().hash(facultyId) ^
      const DeepCollectionEquality().hash(placeLoads) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $DirectionInDbExtension on DirectionInDb {
  DirectionInDb copyWith(
      {String? name,
      String? shortName,
      String? cipher,
      enums.DegreeStudy? degreeStudy,
      int? facultyId,
      List<DirectionPlaceLoadInfo>? placeLoads,
      int? id}) {
    return DirectionInDb(
        name: name ?? this.name,
        shortName: shortName ?? this.shortName,
        cipher: cipher ?? this.cipher,
        degreeStudy: degreeStudy ?? this.degreeStudy,
        facultyId: facultyId ?? this.facultyId,
        placeLoads: placeLoads ?? this.placeLoads,
        id: id ?? this.id);
  }

  DirectionInDb copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<String?>? shortName,
      Wrapped<String?>? cipher,
      Wrapped<enums.DegreeStudy>? degreeStudy,
      Wrapped<int>? facultyId,
      Wrapped<List<DirectionPlaceLoadInfo>?>? placeLoads,
      Wrapped<int>? id}) {
    return DirectionInDb(
        name: (name != null ? name.value : this.name),
        shortName: (shortName != null ? shortName.value : this.shortName),
        cipher: (cipher != null ? cipher.value : this.cipher),
        degreeStudy:
            (degreeStudy != null ? degreeStudy.value : this.degreeStudy),
        facultyId: (facultyId != null ? facultyId.value : this.facultyId),
        placeLoads: (placeLoads != null ? placeLoads.value : this.placeLoads),
        id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class DirectionPlaceLoadInfo {
  DirectionPlaceLoadInfo({
    required this.course,
    required this.minLoad,
    required this.maxLoad,
  });

  factory DirectionPlaceLoadInfo.fromJson(Map<String, dynamic> json) =>
      _$DirectionPlaceLoadInfoFromJson(json);

  @JsonKey(name: 'course')
  final int course;
  @JsonKey(name: 'min_load')
  final int minLoad;
  @JsonKey(name: 'max_load')
  final int maxLoad;
  static const fromJsonFactory = _$DirectionPlaceLoadInfoFromJson;
  static const toJsonFactory = _$DirectionPlaceLoadInfoToJson;
  Map<String, dynamic> toJson() => _$DirectionPlaceLoadInfoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DirectionPlaceLoadInfo &&
            (identical(other.course, course) ||
                const DeepCollectionEquality().equals(other.course, course)) &&
            (identical(other.minLoad, minLoad) ||
                const DeepCollectionEquality()
                    .equals(other.minLoad, minLoad)) &&
            (identical(other.maxLoad, maxLoad) ||
                const DeepCollectionEquality().equals(other.maxLoad, maxLoad)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(course) ^
      const DeepCollectionEquality().hash(minLoad) ^
      const DeepCollectionEquality().hash(maxLoad) ^
      runtimeType.hashCode;
}

extension $DirectionPlaceLoadInfoExtension on DirectionPlaceLoadInfo {
  DirectionPlaceLoadInfo copyWith({int? course, int? minLoad, int? maxLoad}) {
    return DirectionPlaceLoadInfo(
        course: course ?? this.course,
        minLoad: minLoad ?? this.minLoad,
        maxLoad: maxLoad ?? this.maxLoad);
  }

  DirectionPlaceLoadInfo copyWithWrapped(
      {Wrapped<int>? course, Wrapped<int>? minLoad, Wrapped<int>? maxLoad}) {
    return DirectionPlaceLoadInfo(
        course: (course != null ? course.value : this.course),
        minLoad: (minLoad != null ? minLoad.value : this.minLoad),
        maxLoad: (maxLoad != null ? maxLoad.value : this.maxLoad));
  }
}

@JsonSerializable(explicitToJson: true)
class DirectionUpdate {
  DirectionUpdate({
    required this.name,
    this.shortName,
    required this.cipher,
    required this.degreeStudy,
    required this.facultyId,
    this.placeLoads,
  });

  factory DirectionUpdate.fromJson(Map<String, dynamic> json) =>
      _$DirectionUpdateFromJson(json);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'short_name')
  final String? shortName;
  @JsonKey(name: 'cipher')
  final String cipher;
  @JsonKey(
    name: 'degree_study',
    toJson: degreeStudyToJson,
    fromJson: degreeStudyFromJson,
  )
  final enums.DegreeStudy degreeStudy;
  @JsonKey(name: 'faculty_id')
  final int facultyId;
  @JsonKey(name: 'place_loads', defaultValue: <DirectionPlaceLoadInfo>[])
  final List<DirectionPlaceLoadInfo>? placeLoads;
  static const fromJsonFactory = _$DirectionUpdateFromJson;
  static const toJsonFactory = _$DirectionUpdateToJson;
  Map<String, dynamic> toJson() => _$DirectionUpdateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DirectionUpdate &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.shortName, shortName) ||
                const DeepCollectionEquality()
                    .equals(other.shortName, shortName)) &&
            (identical(other.cipher, cipher) ||
                const DeepCollectionEquality().equals(other.cipher, cipher)) &&
            (identical(other.degreeStudy, degreeStudy) ||
                const DeepCollectionEquality()
                    .equals(other.degreeStudy, degreeStudy)) &&
            (identical(other.facultyId, facultyId) ||
                const DeepCollectionEquality()
                    .equals(other.facultyId, facultyId)) &&
            (identical(other.placeLoads, placeLoads) ||
                const DeepCollectionEquality()
                    .equals(other.placeLoads, placeLoads)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(shortName) ^
      const DeepCollectionEquality().hash(cipher) ^
      const DeepCollectionEquality().hash(degreeStudy) ^
      const DeepCollectionEquality().hash(facultyId) ^
      const DeepCollectionEquality().hash(placeLoads) ^
      runtimeType.hashCode;
}

extension $DirectionUpdateExtension on DirectionUpdate {
  DirectionUpdate copyWith(
      {String? name,
      String? shortName,
      String? cipher,
      enums.DegreeStudy? degreeStudy,
      int? facultyId,
      List<DirectionPlaceLoadInfo>? placeLoads}) {
    return DirectionUpdate(
        name: name ?? this.name,
        shortName: shortName ?? this.shortName,
        cipher: cipher ?? this.cipher,
        degreeStudy: degreeStudy ?? this.degreeStudy,
        facultyId: facultyId ?? this.facultyId,
        placeLoads: placeLoads ?? this.placeLoads);
  }

  DirectionUpdate copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<String?>? shortName,
      Wrapped<String>? cipher,
      Wrapped<enums.DegreeStudy>? degreeStudy,
      Wrapped<int>? facultyId,
      Wrapped<List<DirectionPlaceLoadInfo>?>? placeLoads}) {
    return DirectionUpdate(
        name: (name != null ? name.value : this.name),
        shortName: (shortName != null ? shortName.value : this.shortName),
        cipher: (cipher != null ? cipher.value : this.cipher),
        degreeStudy:
            (degreeStudy != null ? degreeStudy.value : this.degreeStudy),
        facultyId: (facultyId != null ? facultyId.value : this.facultyId),
        placeLoads: (placeLoads != null ? placeLoads.value : this.placeLoads));
  }
}

@JsonSerializable(explicitToJson: true)
class DisciplineCreate {
  DisciplineCreate({
    required this.name,
    this.shortName,
    this.facultiesIds,
  });

  factory DisciplineCreate.fromJson(Map<String, dynamic> json) =>
      _$DisciplineCreateFromJson(json);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'short_name')
  final String? shortName;
  @JsonKey(name: 'faculties_ids', defaultValue: <int>[])
  final List<int>? facultiesIds;
  static const fromJsonFactory = _$DisciplineCreateFromJson;
  static const toJsonFactory = _$DisciplineCreateToJson;
  Map<String, dynamic> toJson() => _$DisciplineCreateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DisciplineCreate &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.shortName, shortName) ||
                const DeepCollectionEquality()
                    .equals(other.shortName, shortName)) &&
            (identical(other.facultiesIds, facultiesIds) ||
                const DeepCollectionEquality()
                    .equals(other.facultiesIds, facultiesIds)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(shortName) ^
      const DeepCollectionEquality().hash(facultiesIds) ^
      runtimeType.hashCode;
}

extension $DisciplineCreateExtension on DisciplineCreate {
  DisciplineCreate copyWith(
      {String? name, String? shortName, List<int>? facultiesIds}) {
    return DisciplineCreate(
        name: name ?? this.name,
        shortName: shortName ?? this.shortName,
        facultiesIds: facultiesIds ?? this.facultiesIds);
  }

  DisciplineCreate copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<String?>? shortName,
      Wrapped<List<int>?>? facultiesIds}) {
    return DisciplineCreate(
        name: (name != null ? name.value : this.name),
        shortName: (shortName != null ? shortName.value : this.shortName),
        facultiesIds:
            (facultiesIds != null ? facultiesIds.value : this.facultiesIds));
  }
}

@JsonSerializable(explicitToJson: true)
class DisciplineInDb {
  DisciplineInDb({
    required this.name,
    this.shortName,
    required this.id,
    this.facultiesIds,
  });

  factory DisciplineInDb.fromJson(Map<String, dynamic> json) =>
      _$DisciplineInDbFromJson(json);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'short_name')
  final String? shortName;
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'faculties_ids', defaultValue: <int>[])
  final List<int>? facultiesIds;
  static const fromJsonFactory = _$DisciplineInDbFromJson;
  static const toJsonFactory = _$DisciplineInDbToJson;
  Map<String, dynamic> toJson() => _$DisciplineInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DisciplineInDb &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.shortName, shortName) ||
                const DeepCollectionEquality()
                    .equals(other.shortName, shortName)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.facultiesIds, facultiesIds) ||
                const DeepCollectionEquality()
                    .equals(other.facultiesIds, facultiesIds)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(shortName) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(facultiesIds) ^
      runtimeType.hashCode;
}

extension $DisciplineInDbExtension on DisciplineInDb {
  DisciplineInDb copyWith(
      {String? name, String? shortName, int? id, List<int>? facultiesIds}) {
    return DisciplineInDb(
        name: name ?? this.name,
        shortName: shortName ?? this.shortName,
        id: id ?? this.id,
        facultiesIds: facultiesIds ?? this.facultiesIds);
  }

  DisciplineInDb copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<String?>? shortName,
      Wrapped<int>? id,
      Wrapped<List<int>?>? facultiesIds}) {
    return DisciplineInDb(
        name: (name != null ? name.value : this.name),
        shortName: (shortName != null ? shortName.value : this.shortName),
        id: (id != null ? id.value : this.id),
        facultiesIds:
            (facultiesIds != null ? facultiesIds.value : this.facultiesIds));
  }
}

@JsonSerializable(explicitToJson: true)
class DisciplineUpdate {
  DisciplineUpdate({
    required this.name,
    this.shortName,
    this.facultiesIds,
  });

  factory DisciplineUpdate.fromJson(Map<String, dynamic> json) =>
      _$DisciplineUpdateFromJson(json);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'short_name')
  final String? shortName;
  @JsonKey(name: 'faculties_ids', defaultValue: <int>[])
  final List<int>? facultiesIds;
  static const fromJsonFactory = _$DisciplineUpdateFromJson;
  static const toJsonFactory = _$DisciplineUpdateToJson;
  Map<String, dynamic> toJson() => _$DisciplineUpdateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DisciplineUpdate &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.shortName, shortName) ||
                const DeepCollectionEquality()
                    .equals(other.shortName, shortName)) &&
            (identical(other.facultiesIds, facultiesIds) ||
                const DeepCollectionEquality()
                    .equals(other.facultiesIds, facultiesIds)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(shortName) ^
      const DeepCollectionEquality().hash(facultiesIds) ^
      runtimeType.hashCode;
}

extension $DisciplineUpdateExtension on DisciplineUpdate {
  DisciplineUpdate copyWith(
      {String? name, String? shortName, List<int>? facultiesIds}) {
    return DisciplineUpdate(
        name: name ?? this.name,
        shortName: shortName ?? this.shortName,
        facultiesIds: facultiesIds ?? this.facultiesIds);
  }

  DisciplineUpdate copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<String?>? shortName,
      Wrapped<List<int>?>? facultiesIds}) {
    return DisciplineUpdate(
        name: (name != null ? name.value : this.name),
        shortName: (shortName != null ? shortName.value : this.shortName),
        facultiesIds:
            (facultiesIds != null ? facultiesIds.value : this.facultiesIds));
  }
}

@JsonSerializable(explicitToJson: true)
class EquipmentCreate {
  EquipmentCreate({
    required this.name,
  });

  factory EquipmentCreate.fromJson(Map<String, dynamic> json) =>
      _$EquipmentCreateFromJson(json);

  @JsonKey(name: 'name')
  final String name;
  static const fromJsonFactory = _$EquipmentCreateFromJson;
  static const toJsonFactory = _$EquipmentCreateToJson;
  Map<String, dynamic> toJson() => _$EquipmentCreateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EquipmentCreate &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^ runtimeType.hashCode;
}

extension $EquipmentCreateExtension on EquipmentCreate {
  EquipmentCreate copyWith({String? name}) {
    return EquipmentCreate(name: name ?? this.name);
  }

  EquipmentCreate copyWithWrapped({Wrapped<String>? name}) {
    return EquipmentCreate(name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class EquipmentInDb {
  EquipmentInDb({
    required this.name,
    required this.id,
  });

  factory EquipmentInDb.fromJson(Map<String, dynamic> json) =>
      _$EquipmentInDbFromJson(json);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'id')
  final int id;
  static const fromJsonFactory = _$EquipmentInDbFromJson;
  static const toJsonFactory = _$EquipmentInDbToJson;
  Map<String, dynamic> toJson() => _$EquipmentInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EquipmentInDb &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $EquipmentInDbExtension on EquipmentInDb {
  EquipmentInDb copyWith({String? name, int? id}) {
    return EquipmentInDb(name: name ?? this.name, id: id ?? this.id);
  }

  EquipmentInDb copyWithWrapped({Wrapped<String>? name, Wrapped<int>? id}) {
    return EquipmentInDb(
        name: (name != null ? name.value : this.name),
        id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class EquipmentUpdate {
  EquipmentUpdate({
    required this.name,
  });

  factory EquipmentUpdate.fromJson(Map<String, dynamic> json) =>
      _$EquipmentUpdateFromJson(json);

  @JsonKey(name: 'name')
  final String name;
  static const fromJsonFactory = _$EquipmentUpdateFromJson;
  static const toJsonFactory = _$EquipmentUpdateToJson;
  Map<String, dynamic> toJson() => _$EquipmentUpdateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EquipmentUpdate &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^ runtimeType.hashCode;
}

extension $EquipmentUpdateExtension on EquipmentUpdate {
  EquipmentUpdate copyWith({String? name}) {
    return EquipmentUpdate(name: name ?? this.name);
  }

  EquipmentUpdate copyWithWrapped({Wrapped<String>? name}) {
    return EquipmentUpdate(name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class ExportExtraInfo {
  ExportExtraInfo({
    this.viceRectorName,
    this.headOfUmuName,
    this.deanName,
  });

  factory ExportExtraInfo.fromJson(Map<String, dynamic> json) =>
      _$ExportExtraInfoFromJson(json);

  @JsonKey(name: 'vice_rector_name')
  final String? viceRectorName;
  @JsonKey(name: 'head_of_umu_name')
  final String? headOfUmuName;
  @JsonKey(name: 'dean_name')
  final String? deanName;
  static const fromJsonFactory = _$ExportExtraInfoFromJson;
  static const toJsonFactory = _$ExportExtraInfoToJson;
  Map<String, dynamic> toJson() => _$ExportExtraInfoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExportExtraInfo &&
            (identical(other.viceRectorName, viceRectorName) ||
                const DeepCollectionEquality()
                    .equals(other.viceRectorName, viceRectorName)) &&
            (identical(other.headOfUmuName, headOfUmuName) ||
                const DeepCollectionEquality()
                    .equals(other.headOfUmuName, headOfUmuName)) &&
            (identical(other.deanName, deanName) ||
                const DeepCollectionEquality()
                    .equals(other.deanName, deanName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(viceRectorName) ^
      const DeepCollectionEquality().hash(headOfUmuName) ^
      const DeepCollectionEquality().hash(deanName) ^
      runtimeType.hashCode;
}

extension $ExportExtraInfoExtension on ExportExtraInfo {
  ExportExtraInfo copyWith(
      {String? viceRectorName, String? headOfUmuName, String? deanName}) {
    return ExportExtraInfo(
        viceRectorName: viceRectorName ?? this.viceRectorName,
        headOfUmuName: headOfUmuName ?? this.headOfUmuName,
        deanName: deanName ?? this.deanName);
  }

  ExportExtraInfo copyWithWrapped(
      {Wrapped<String?>? viceRectorName,
      Wrapped<String?>? headOfUmuName,
      Wrapped<String?>? deanName}) {
    return ExportExtraInfo(
        viceRectorName: (viceRectorName != null
            ? viceRectorName.value
            : this.viceRectorName),
        headOfUmuName:
            (headOfUmuName != null ? headOfUmuName.value : this.headOfUmuName),
        deanName: (deanName != null ? deanName.value : this.deanName));
  }
}

@JsonSerializable(explicitToJson: true)
class ExportIcal {
  ExportIcal({
    this.semesterId,
    this.groupId,
    this.teacherId,
  });

  factory ExportIcal.fromJson(Map<String, dynamic> json) =>
      _$ExportIcalFromJson(json);

  @JsonKey(name: 'semester_id')
  final int? semesterId;
  @JsonKey(name: 'group_id')
  final int? groupId;
  @JsonKey(name: 'teacher_id')
  final int? teacherId;
  static const fromJsonFactory = _$ExportIcalFromJson;
  static const toJsonFactory = _$ExportIcalToJson;
  Map<String, dynamic> toJson() => _$ExportIcalToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExportIcal &&
            (identical(other.semesterId, semesterId) ||
                const DeepCollectionEquality()
                    .equals(other.semesterId, semesterId)) &&
            (identical(other.groupId, groupId) ||
                const DeepCollectionEquality()
                    .equals(other.groupId, groupId)) &&
            (identical(other.teacherId, teacherId) ||
                const DeepCollectionEquality()
                    .equals(other.teacherId, teacherId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(semesterId) ^
      const DeepCollectionEquality().hash(groupId) ^
      const DeepCollectionEquality().hash(teacherId) ^
      runtimeType.hashCode;
}

extension $ExportIcalExtension on ExportIcal {
  ExportIcal copyWith({int? semesterId, int? groupId, int? teacherId}) {
    return ExportIcal(
        semesterId: semesterId ?? this.semesterId,
        groupId: groupId ?? this.groupId,
        teacherId: teacherId ?? this.teacherId);
  }

  ExportIcal copyWithWrapped(
      {Wrapped<int?>? semesterId,
      Wrapped<int?>? groupId,
      Wrapped<int?>? teacherId}) {
    return ExportIcal(
        semesterId: (semesterId != null ? semesterId.value : this.semesterId),
        groupId: (groupId != null ? groupId.value : this.groupId),
        teacherId: (teacherId != null ? teacherId.value : this.teacherId));
  }
}

@JsonSerializable(explicitToJson: true)
class FacultyCreate {
  FacultyCreate({
    required this.name,
    required this.shortName,
  });

  factory FacultyCreate.fromJson(Map<String, dynamic> json) =>
      _$FacultyCreateFromJson(json);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'short_name')
  final String shortName;
  static const fromJsonFactory = _$FacultyCreateFromJson;
  static const toJsonFactory = _$FacultyCreateToJson;
  Map<String, dynamic> toJson() => _$FacultyCreateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FacultyCreate &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.shortName, shortName) ||
                const DeepCollectionEquality()
                    .equals(other.shortName, shortName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(shortName) ^
      runtimeType.hashCode;
}

extension $FacultyCreateExtension on FacultyCreate {
  FacultyCreate copyWith({String? name, String? shortName}) {
    return FacultyCreate(
        name: name ?? this.name, shortName: shortName ?? this.shortName);
  }

  FacultyCreate copyWithWrapped(
      {Wrapped<String>? name, Wrapped<String>? shortName}) {
    return FacultyCreate(
        name: (name != null ? name.value : this.name),
        shortName: (shortName != null ? shortName.value : this.shortName));
  }
}

@JsonSerializable(explicitToJson: true)
class FacultyForbidden {
  FacultyForbidden({
    this.facultiesForbidden,
  });

  factory FacultyForbidden.fromJson(Map<String, dynamic> json) =>
      _$FacultyForbiddenFromJson(json);

  @JsonKey(name: 'faculties_forbidden', defaultValue: <int>[])
  final List<int>? facultiesForbidden;
  static const fromJsonFactory = _$FacultyForbiddenFromJson;
  static const toJsonFactory = _$FacultyForbiddenToJson;
  Map<String, dynamic> toJson() => _$FacultyForbiddenToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FacultyForbidden &&
            (identical(other.facultiesForbidden, facultiesForbidden) ||
                const DeepCollectionEquality()
                    .equals(other.facultiesForbidden, facultiesForbidden)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(facultiesForbidden) ^
      runtimeType.hashCode;
}

extension $FacultyForbiddenExtension on FacultyForbidden {
  FacultyForbidden copyWith({List<int>? facultiesForbidden}) {
    return FacultyForbidden(
        facultiesForbidden: facultiesForbidden ?? this.facultiesForbidden);
  }

  FacultyForbidden copyWithWrapped({Wrapped<List<int>?>? facultiesForbidden}) {
    return FacultyForbidden(
        facultiesForbidden: (facultiesForbidden != null
            ? facultiesForbidden.value
            : this.facultiesForbidden));
  }
}

@JsonSerializable(explicitToJson: true)
class FacultyInDb {
  FacultyInDb({
    required this.name,
    required this.shortName,
    required this.id,
  });

  factory FacultyInDb.fromJson(Map<String, dynamic> json) =>
      _$FacultyInDbFromJson(json);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'short_name')
  final String shortName;
  @JsonKey(name: 'id')
  final int id;
  static const fromJsonFactory = _$FacultyInDbFromJson;
  static const toJsonFactory = _$FacultyInDbToJson;
  Map<String, dynamic> toJson() => _$FacultyInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FacultyInDb &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.shortName, shortName) ||
                const DeepCollectionEquality()
                    .equals(other.shortName, shortName)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(shortName) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $FacultyInDbExtension on FacultyInDb {
  FacultyInDb copyWith({String? name, String? shortName, int? id}) {
    return FacultyInDb(
        name: name ?? this.name,
        shortName: shortName ?? this.shortName,
        id: id ?? this.id);
  }

  FacultyInDb copyWithWrapped(
      {Wrapped<String>? name, Wrapped<String>? shortName, Wrapped<int>? id}) {
    return FacultyInDb(
        name: (name != null ? name.value : this.name),
        shortName: (shortName != null ? shortName.value : this.shortName),
        id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class FacultyUpdate {
  FacultyUpdate({
    required this.name,
    required this.shortName,
  });

  factory FacultyUpdate.fromJson(Map<String, dynamic> json) =>
      _$FacultyUpdateFromJson(json);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'short_name')
  final String shortName;
  static const fromJsonFactory = _$FacultyUpdateFromJson;
  static const toJsonFactory = _$FacultyUpdateToJson;
  Map<String, dynamic> toJson() => _$FacultyUpdateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FacultyUpdate &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.shortName, shortName) ||
                const DeepCollectionEquality()
                    .equals(other.shortName, shortName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(shortName) ^
      runtimeType.hashCode;
}

extension $FacultyUpdateExtension on FacultyUpdate {
  FacultyUpdate copyWith({String? name, String? shortName}) {
    return FacultyUpdate(
        name: name ?? this.name, shortName: shortName ?? this.shortName);
  }

  FacultyUpdate copyWithWrapped(
      {Wrapped<String>? name, Wrapped<String>? shortName}) {
    return FacultyUpdate(
        name: (name != null ? name.value : this.name),
        shortName: (shortName != null ? shortName.value : this.shortName));
  }
}

@JsonSerializable(explicitToJson: true)
class GroupCreate {
  GroupCreate({
    required this.name,
    required this.course,
    required this.facultyId,
    required this.directionId,
    this.profileId,
  });

  factory GroupCreate.fromJson(Map<String, dynamic> json) =>
      _$GroupCreateFromJson(json);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'course')
  final int course;
  @JsonKey(name: 'faculty_id')
  final int facultyId;
  @JsonKey(name: 'direction_id')
  final int directionId;
  @JsonKey(name: 'profile_id')
  final int? profileId;
  static const fromJsonFactory = _$GroupCreateFromJson;
  static const toJsonFactory = _$GroupCreateToJson;
  Map<String, dynamic> toJson() => _$GroupCreateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GroupCreate &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.course, course) ||
                const DeepCollectionEquality().equals(other.course, course)) &&
            (identical(other.facultyId, facultyId) ||
                const DeepCollectionEquality()
                    .equals(other.facultyId, facultyId)) &&
            (identical(other.directionId, directionId) ||
                const DeepCollectionEquality()
                    .equals(other.directionId, directionId)) &&
            (identical(other.profileId, profileId) ||
                const DeepCollectionEquality()
                    .equals(other.profileId, profileId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(course) ^
      const DeepCollectionEquality().hash(facultyId) ^
      const DeepCollectionEquality().hash(directionId) ^
      const DeepCollectionEquality().hash(profileId) ^
      runtimeType.hashCode;
}

extension $GroupCreateExtension on GroupCreate {
  GroupCreate copyWith(
      {String? name,
      int? course,
      int? facultyId,
      int? directionId,
      int? profileId}) {
    return GroupCreate(
        name: name ?? this.name,
        course: course ?? this.course,
        facultyId: facultyId ?? this.facultyId,
        directionId: directionId ?? this.directionId,
        profileId: profileId ?? this.profileId);
  }

  GroupCreate copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<int>? course,
      Wrapped<int>? facultyId,
      Wrapped<int>? directionId,
      Wrapped<int?>? profileId}) {
    return GroupCreate(
        name: (name != null ? name.value : this.name),
        course: (course != null ? course.value : this.course),
        facultyId: (facultyId != null ? facultyId.value : this.facultyId),
        directionId:
            (directionId != null ? directionId.value : this.directionId),
        profileId: (profileId != null ? profileId.value : this.profileId));
  }
}

@JsonSerializable(explicitToJson: true)
class GroupFullInDb {
  GroupFullInDb({
    required this.id,
    required this.name,
    required this.course,
    required this.faculty,
    required this.direction,
    this.profile,
    required this.size,
  });

  factory GroupFullInDb.fromJson(Map<String, dynamic> json) =>
      _$GroupFullInDbFromJson(json);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'course')
  final int course;
  @JsonKey(name: 'faculty')
  final FacultyInDb faculty;
  @JsonKey(name: 'direction')
  final DirectionInDb direction;
  @JsonKey(name: 'profile')
  final ProfileInDb? profile;
  @JsonKey(name: 'size')
  final int size;
  static const fromJsonFactory = _$GroupFullInDbFromJson;
  static const toJsonFactory = _$GroupFullInDbToJson;
  Map<String, dynamic> toJson() => _$GroupFullInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GroupFullInDb &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.course, course) ||
                const DeepCollectionEquality().equals(other.course, course)) &&
            (identical(other.faculty, faculty) ||
                const DeepCollectionEquality()
                    .equals(other.faculty, faculty)) &&
            (identical(other.direction, direction) ||
                const DeepCollectionEquality()
                    .equals(other.direction, direction)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(course) ^
      const DeepCollectionEquality().hash(faculty) ^
      const DeepCollectionEquality().hash(direction) ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(size) ^
      runtimeType.hashCode;
}

extension $GroupFullInDbExtension on GroupFullInDb {
  GroupFullInDb copyWith(
      {int? id,
      String? name,
      int? course,
      FacultyInDb? faculty,
      DirectionInDb? direction,
      ProfileInDb? profile,
      int? size}) {
    return GroupFullInDb(
        id: id ?? this.id,
        name: name ?? this.name,
        course: course ?? this.course,
        faculty: faculty ?? this.faculty,
        direction: direction ?? this.direction,
        profile: profile ?? this.profile,
        size: size ?? this.size);
  }

  GroupFullInDb copyWithWrapped(
      {Wrapped<int>? id,
      Wrapped<String>? name,
      Wrapped<int>? course,
      Wrapped<FacultyInDb>? faculty,
      Wrapped<DirectionInDb>? direction,
      Wrapped<ProfileInDb?>? profile,
      Wrapped<int>? size}) {
    return GroupFullInDb(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        course: (course != null ? course.value : this.course),
        faculty: (faculty != null ? faculty.value : this.faculty),
        direction: (direction != null ? direction.value : this.direction),
        profile: (profile != null ? profile.value : this.profile),
        size: (size != null ? size.value : this.size));
  }
}

@JsonSerializable(explicitToJson: true)
class GroupInDb {
  GroupInDb({
    required this.name,
    required this.course,
    required this.facultyId,
    required this.directionId,
    this.profileId,
    required this.size,
    required this.id,
  });

  factory GroupInDb.fromJson(Map<String, dynamic> json) =>
      _$GroupInDbFromJson(json);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'course')
  final int course;
  @JsonKey(name: 'faculty_id')
  final int facultyId;
  @JsonKey(name: 'direction_id')
  final int directionId;
  @JsonKey(name: 'profile_id')
  final int? profileId;
  @JsonKey(name: 'size')
  final int size;
  @JsonKey(name: 'id')
  final int id;
  static const fromJsonFactory = _$GroupInDbFromJson;
  static const toJsonFactory = _$GroupInDbToJson;
  Map<String, dynamic> toJson() => _$GroupInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GroupInDb &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.course, course) ||
                const DeepCollectionEquality().equals(other.course, course)) &&
            (identical(other.facultyId, facultyId) ||
                const DeepCollectionEquality()
                    .equals(other.facultyId, facultyId)) &&
            (identical(other.directionId, directionId) ||
                const DeepCollectionEquality()
                    .equals(other.directionId, directionId)) &&
            (identical(other.profileId, profileId) ||
                const DeepCollectionEquality()
                    .equals(other.profileId, profileId)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(course) ^
      const DeepCollectionEquality().hash(facultyId) ^
      const DeepCollectionEquality().hash(directionId) ^
      const DeepCollectionEquality().hash(profileId) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $GroupInDbExtension on GroupInDb {
  GroupInDb copyWith(
      {String? name,
      int? course,
      int? facultyId,
      int? directionId,
      int? profileId,
      int? size,
      int? id}) {
    return GroupInDb(
        name: name ?? this.name,
        course: course ?? this.course,
        facultyId: facultyId ?? this.facultyId,
        directionId: directionId ?? this.directionId,
        profileId: profileId ?? this.profileId,
        size: size ?? this.size,
        id: id ?? this.id);
  }

  GroupInDb copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<int>? course,
      Wrapped<int>? facultyId,
      Wrapped<int>? directionId,
      Wrapped<int?>? profileId,
      Wrapped<int>? size,
      Wrapped<int>? id}) {
    return GroupInDb(
        name: (name != null ? name.value : this.name),
        course: (course != null ? course.value : this.course),
        facultyId: (facultyId != null ? facultyId.value : this.facultyId),
        directionId:
            (directionId != null ? directionId.value : this.directionId),
        profileId: (profileId != null ? profileId.value : this.profileId),
        size: (size != null ? size.value : this.size),
        id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class GroupShortInDb {
  GroupShortInDb({
    required this.id,
    required this.name,
  });

  factory GroupShortInDb.fromJson(Map<String, dynamic> json) =>
      _$GroupShortInDbFromJson(json);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  static const fromJsonFactory = _$GroupShortInDbFromJson;
  static const toJsonFactory = _$GroupShortInDbToJson;
  Map<String, dynamic> toJson() => _$GroupShortInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GroupShortInDb &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $GroupShortInDbExtension on GroupShortInDb {
  GroupShortInDb copyWith({int? id, String? name}) {
    return GroupShortInDb(id: id ?? this.id, name: name ?? this.name);
  }

  GroupShortInDb copyWithWrapped({Wrapped<int>? id, Wrapped<String>? name}) {
    return GroupShortInDb(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class HTTPValidationError {
  HTTPValidationError({
    this.detail,
  });

  factory HTTPValidationError.fromJson(Map<String, dynamic> json) =>
      _$HTTPValidationErrorFromJson(json);

  @JsonKey(name: 'detail', defaultValue: <ValidationError>[])
  final List<ValidationError>? detail;
  static const fromJsonFactory = _$HTTPValidationErrorFromJson;
  static const toJsonFactory = _$HTTPValidationErrorToJson;
  Map<String, dynamic> toJson() => _$HTTPValidationErrorToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HTTPValidationError &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(detail) ^ runtimeType.hashCode;
}

extension $HTTPValidationErrorExtension on HTTPValidationError {
  HTTPValidationError copyWith({List<ValidationError>? detail}) {
    return HTTPValidationError(detail: detail ?? this.detail);
  }

  HTTPValidationError copyWithWrapped(
      {Wrapped<List<ValidationError>?>? detail}) {
    return HTTPValidationError(
        detail: (detail != null ? detail.value : this.detail));
  }
}

@JsonSerializable(explicitToJson: true)
class HourlyReportSettingsUpdate {
  HourlyReportSettingsUpdate({
    this.setThemeTime,
  });

  factory HourlyReportSettingsUpdate.fromJson(Map<String, dynamic> json) =>
      _$HourlyReportSettingsUpdateFromJson(json);

  @JsonKey(name: 'set_theme_time')
  final String? setThemeTime;
  static const fromJsonFactory = _$HourlyReportSettingsUpdateFromJson;
  static const toJsonFactory = _$HourlyReportSettingsUpdateToJson;
  Map<String, dynamic> toJson() => _$HourlyReportSettingsUpdateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HourlyReportSettingsUpdate &&
            (identical(other.setThemeTime, setThemeTime) ||
                const DeepCollectionEquality()
                    .equals(other.setThemeTime, setThemeTime)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(setThemeTime) ^ runtimeType.hashCode;
}

extension $HourlyReportSettingsUpdateExtension on HourlyReportSettingsUpdate {
  HourlyReportSettingsUpdate copyWith({String? setThemeTime}) {
    return HourlyReportSettingsUpdate(
        setThemeTime: setThemeTime ?? this.setThemeTime);
  }

  HourlyReportSettingsUpdate copyWithWrapped({Wrapped<String?>? setThemeTime}) {
    return HourlyReportSettingsUpdate(
        setThemeTime:
            (setThemeTime != null ? setThemeTime.value : this.setThemeTime));
  }
}

@JsonSerializable(explicitToJson: true)
class JournalCreate {
  JournalCreate({
    required this.data,
    required this.groupId,
    required this.lessonId,
    required this.mainStudentId,
  });

  factory JournalCreate.fromJson(Map<String, dynamic> json) =>
      _$JournalCreateFromJson(json);

  @JsonKey(name: 'data', defaultValue: <JournalStudentReason>[])
  final List<JournalStudentReason> data;
  @JsonKey(name: 'group_id')
  final int groupId;
  @JsonKey(name: 'lesson_id')
  final int lessonId;
  @JsonKey(name: 'main_student_id')
  final int mainStudentId;
  static const fromJsonFactory = _$JournalCreateFromJson;
  static const toJsonFactory = _$JournalCreateToJson;
  Map<String, dynamic> toJson() => _$JournalCreateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is JournalCreate &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.groupId, groupId) ||
                const DeepCollectionEquality()
                    .equals(other.groupId, groupId)) &&
            (identical(other.lessonId, lessonId) ||
                const DeepCollectionEquality()
                    .equals(other.lessonId, lessonId)) &&
            (identical(other.mainStudentId, mainStudentId) ||
                const DeepCollectionEquality()
                    .equals(other.mainStudentId, mainStudentId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(groupId) ^
      const DeepCollectionEquality().hash(lessonId) ^
      const DeepCollectionEquality().hash(mainStudentId) ^
      runtimeType.hashCode;
}

extension $JournalCreateExtension on JournalCreate {
  JournalCreate copyWith(
      {List<JournalStudentReason>? data,
      int? groupId,
      int? lessonId,
      int? mainStudentId}) {
    return JournalCreate(
        data: data ?? this.data,
        groupId: groupId ?? this.groupId,
        lessonId: lessonId ?? this.lessonId,
        mainStudentId: mainStudentId ?? this.mainStudentId);
  }

  JournalCreate copyWithWrapped(
      {Wrapped<List<JournalStudentReason>>? data,
      Wrapped<int>? groupId,
      Wrapped<int>? lessonId,
      Wrapped<int>? mainStudentId}) {
    return JournalCreate(
        data: (data != null ? data.value : this.data),
        groupId: (groupId != null ? groupId.value : this.groupId),
        lessonId: (lessonId != null ? lessonId.value : this.lessonId),
        mainStudentId:
            (mainStudentId != null ? mainStudentId.value : this.mainStudentId));
  }
}

@JsonSerializable(explicitToJson: true)
class JournalStudentReason {
  JournalStudentReason({
    required this.studentId,
    required this.isSeriousReason,
  });

  factory JournalStudentReason.fromJson(Map<String, dynamic> json) =>
      _$JournalStudentReasonFromJson(json);

  @JsonKey(name: 'student_id')
  final int studentId;
  @JsonKey(name: 'is_serious_reason')
  final bool isSeriousReason;
  static const fromJsonFactory = _$JournalStudentReasonFromJson;
  static const toJsonFactory = _$JournalStudentReasonToJson;
  Map<String, dynamic> toJson() => _$JournalStudentReasonToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is JournalStudentReason &&
            (identical(other.studentId, studentId) ||
                const DeepCollectionEquality()
                    .equals(other.studentId, studentId)) &&
            (identical(other.isSeriousReason, isSeriousReason) ||
                const DeepCollectionEquality()
                    .equals(other.isSeriousReason, isSeriousReason)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(studentId) ^
      const DeepCollectionEquality().hash(isSeriousReason) ^
      runtimeType.hashCode;
}

extension $JournalStudentReasonExtension on JournalStudentReason {
  JournalStudentReason copyWith({int? studentId, bool? isSeriousReason}) {
    return JournalStudentReason(
        studentId: studentId ?? this.studentId,
        isSeriousReason: isSeriousReason ?? this.isSeriousReason);
  }

  JournalStudentReason copyWithWrapped(
      {Wrapped<int>? studentId, Wrapped<bool>? isSeriousReason}) {
    return JournalStudentReason(
        studentId: (studentId != null ? studentId.value : this.studentId),
        isSeriousReason: (isSeriousReason != null
            ? isSeriousReason.value
            : this.isSeriousReason));
  }
}

@JsonSerializable(explicitToJson: true)
class LastChange {
  LastChange({
    required this.timestamp,
    required this.user,
  });

  factory LastChange.fromJson(Map<String, dynamic> json) =>
      _$LastChangeFromJson(json);

  @JsonKey(name: 'timestamp')
  final DateTime timestamp;
  @JsonKey(name: 'user')
  final AppSchemasUserUserFullNameInDb user;
  static const fromJsonFactory = _$LastChangeFromJson;
  static const toJsonFactory = _$LastChangeToJson;
  Map<String, dynamic> toJson() => _$LastChangeToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LastChange &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(user) ^
      runtimeType.hashCode;
}

extension $LastChangeExtension on LastChange {
  LastChange copyWith(
      {DateTime? timestamp, AppSchemasUserUserFullNameInDb? user}) {
    return LastChange(
        timestamp: timestamp ?? this.timestamp, user: user ?? this.user);
  }

  LastChange copyWithWrapped(
      {Wrapped<DateTime>? timestamp,
      Wrapped<AppSchemasUserUserFullNameInDb>? user}) {
    return LastChange(
        timestamp: (timestamp != null ? timestamp.value : this.timestamp),
        user: (user != null ? user.value : this.user));
  }
}

@JsonSerializable(explicitToJson: true)
class LessonAutocomplete {
  LessonAutocomplete({
    required this.teachers,
    required this.places,
    required this.groups,
  });

  factory LessonAutocomplete.fromJson(Map<String, dynamic> json) =>
      _$LessonAutocompleteFromJson(json);

  @JsonKey(name: 'teachers', defaultValue: <TeacherShortInDb>[])
  final List<TeacherShortInDb> teachers;
  @JsonKey(name: 'places', defaultValue: <PlaceNameInDb>[])
  final List<PlaceNameInDb> places;
  @JsonKey(name: 'groups', defaultValue: <GroupShortInDb>[])
  final List<GroupShortInDb> groups;
  static const fromJsonFactory = _$LessonAutocompleteFromJson;
  static const toJsonFactory = _$LessonAutocompleteToJson;
  Map<String, dynamic> toJson() => _$LessonAutocompleteToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LessonAutocomplete &&
            (identical(other.teachers, teachers) ||
                const DeepCollectionEquality()
                    .equals(other.teachers, teachers)) &&
            (identical(other.places, places) ||
                const DeepCollectionEquality().equals(other.places, places)) &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(teachers) ^
      const DeepCollectionEquality().hash(places) ^
      const DeepCollectionEquality().hash(groups) ^
      runtimeType.hashCode;
}

extension $LessonAutocompleteExtension on LessonAutocomplete {
  LessonAutocomplete copyWith(
      {List<TeacherShortInDb>? teachers,
      List<PlaceNameInDb>? places,
      List<GroupShortInDb>? groups}) {
    return LessonAutocomplete(
        teachers: teachers ?? this.teachers,
        places: places ?? this.places,
        groups: groups ?? this.groups);
  }

  LessonAutocomplete copyWithWrapped(
      {Wrapped<List<TeacherShortInDb>>? teachers,
      Wrapped<List<PlaceNameInDb>>? places,
      Wrapped<List<GroupShortInDb>>? groups}) {
    return LessonAutocomplete(
        teachers: (teachers != null ? teachers.value : this.teachers),
        places: (places != null ? places.value : this.places),
        groups: (groups != null ? groups.value : this.groups));
  }
}

@JsonSerializable(explicitToJson: true)
class LessonCancelReason {
  LessonCancelReason({
    this.notify,
    this.reason,
    this.showReasonStudents,
  });

  factory LessonCancelReason.fromJson(Map<String, dynamic> json) =>
      _$LessonCancelReasonFromJson(json);

  @JsonKey(name: 'notify', defaultValue: false)
  final bool? notify;
  @JsonKey(name: 'reason')
  final String? reason;
  @JsonKey(name: 'show_reason_students')
  final bool? showReasonStudents;
  static const fromJsonFactory = _$LessonCancelReasonFromJson;
  static const toJsonFactory = _$LessonCancelReasonToJson;
  Map<String, dynamic> toJson() => _$LessonCancelReasonToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LessonCancelReason &&
            (identical(other.notify, notify) ||
                const DeepCollectionEquality().equals(other.notify, notify)) &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)) &&
            (identical(other.showReasonStudents, showReasonStudents) ||
                const DeepCollectionEquality()
                    .equals(other.showReasonStudents, showReasonStudents)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(notify) ^
      const DeepCollectionEquality().hash(reason) ^
      const DeepCollectionEquality().hash(showReasonStudents) ^
      runtimeType.hashCode;
}

extension $LessonCancelReasonExtension on LessonCancelReason {
  LessonCancelReason copyWith(
      {bool? notify, String? reason, bool? showReasonStudents}) {
    return LessonCancelReason(
        notify: notify ?? this.notify,
        reason: reason ?? this.reason,
        showReasonStudents: showReasonStudents ?? this.showReasonStudents);
  }

  LessonCancelReason copyWithWrapped(
      {Wrapped<bool?>? notify,
      Wrapped<String?>? reason,
      Wrapped<bool?>? showReasonStudents}) {
    return LessonCancelReason(
        notify: (notify != null ? notify.value : this.notify),
        reason: (reason != null ? reason.value : this.reason),
        showReasonStudents: (showReasonStudents != null
            ? showReasonStudents.value
            : this.showReasonStudents));
  }
}

@JsonSerializable(explicitToJson: true)
class LessonCollision {
  LessonCollision({
    required this.field,
    required this.data,
  });

  factory LessonCollision.fromJson(Map<String, dynamic> json) =>
      _$LessonCollisionFromJson(json);

  @JsonKey(name: 'field')
  final String field;
  @JsonKey(name: 'data')
  final LessonCollisionInfo data;
  static const fromJsonFactory = _$LessonCollisionFromJson;
  static const toJsonFactory = _$LessonCollisionToJson;
  Map<String, dynamic> toJson() => _$LessonCollisionToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LessonCollision &&
            (identical(other.field, field) ||
                const DeepCollectionEquality().equals(other.field, field)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(field) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $LessonCollisionExtension on LessonCollision {
  LessonCollision copyWith({String? field, LessonCollisionInfo? data}) {
    return LessonCollision(field: field ?? this.field, data: data ?? this.data);
  }

  LessonCollision copyWithWrapped(
      {Wrapped<String>? field, Wrapped<LessonCollisionInfo>? data}) {
    return LessonCollision(
        field: (field != null ? field.value : this.field),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class LessonCollisionInfo {
  LessonCollisionInfo({
    required this.number,
    required this.isRemotely,
    required this.isElective,
    required this.type,
    this.discipline,
    this.place,
    required this.date,
    required this.id,
    this.groupNames,
    this.teacherNames,
  });

  factory LessonCollisionInfo.fromJson(Map<String, dynamic> json) =>
      _$LessonCollisionInfoFromJson(json);

  @JsonKey(name: 'number')
  final int number;
  @JsonKey(name: 'is_remotely')
  final bool isRemotely;
  @JsonKey(name: 'is_elective')
  final bool isElective;
  @JsonKey(name: 'type')
  final LessonTypeInDb type;
  @JsonKey(name: 'discipline')
  final DisciplineInDb? discipline;
  @JsonKey(name: 'place')
  final PlaceInDb? place;
  @JsonKey(name: 'date', toJson: _dateToJson)
  final DateTime date;
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'group_names', defaultValue: <String>[])
  final List<String>? groupNames;
  @JsonKey(name: 'teacher_names', defaultValue: <String>[])
  final List<String>? teacherNames;
  static const fromJsonFactory = _$LessonCollisionInfoFromJson;
  static const toJsonFactory = _$LessonCollisionInfoToJson;
  Map<String, dynamic> toJson() => _$LessonCollisionInfoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LessonCollisionInfo &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.isRemotely, isRemotely) ||
                const DeepCollectionEquality()
                    .equals(other.isRemotely, isRemotely)) &&
            (identical(other.isElective, isElective) ||
                const DeepCollectionEquality()
                    .equals(other.isElective, isElective)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.discipline, discipline) ||
                const DeepCollectionEquality()
                    .equals(other.discipline, discipline)) &&
            (identical(other.place, place) ||
                const DeepCollectionEquality().equals(other.place, place)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.groupNames, groupNames) ||
                const DeepCollectionEquality()
                    .equals(other.groupNames, groupNames)) &&
            (identical(other.teacherNames, teacherNames) ||
                const DeepCollectionEquality()
                    .equals(other.teacherNames, teacherNames)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(isRemotely) ^
      const DeepCollectionEquality().hash(isElective) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(discipline) ^
      const DeepCollectionEquality().hash(place) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(groupNames) ^
      const DeepCollectionEquality().hash(teacherNames) ^
      runtimeType.hashCode;
}

extension $LessonCollisionInfoExtension on LessonCollisionInfo {
  LessonCollisionInfo copyWith(
      {int? number,
      bool? isRemotely,
      bool? isElective,
      LessonTypeInDb? type,
      DisciplineInDb? discipline,
      PlaceInDb? place,
      DateTime? date,
      int? id,
      List<String>? groupNames,
      List<String>? teacherNames}) {
    return LessonCollisionInfo(
        number: number ?? this.number,
        isRemotely: isRemotely ?? this.isRemotely,
        isElective: isElective ?? this.isElective,
        type: type ?? this.type,
        discipline: discipline ?? this.discipline,
        place: place ?? this.place,
        date: date ?? this.date,
        id: id ?? this.id,
        groupNames: groupNames ?? this.groupNames,
        teacherNames: teacherNames ?? this.teacherNames);
  }

  LessonCollisionInfo copyWithWrapped(
      {Wrapped<int>? number,
      Wrapped<bool>? isRemotely,
      Wrapped<bool>? isElective,
      Wrapped<LessonTypeInDb>? type,
      Wrapped<DisciplineInDb?>? discipline,
      Wrapped<PlaceInDb?>? place,
      Wrapped<DateTime>? date,
      Wrapped<int>? id,
      Wrapped<List<String>?>? groupNames,
      Wrapped<List<String>?>? teacherNames}) {
    return LessonCollisionInfo(
        number: (number != null ? number.value : this.number),
        isRemotely: (isRemotely != null ? isRemotely.value : this.isRemotely),
        isElective: (isElective != null ? isElective.value : this.isElective),
        type: (type != null ? type.value : this.type),
        discipline: (discipline != null ? discipline.value : this.discipline),
        place: (place != null ? place.value : this.place),
        date: (date != null ? date.value : this.date),
        id: (id != null ? id.value : this.id),
        groupNames: (groupNames != null ? groupNames.value : this.groupNames),
        teacherNames:
            (teacherNames != null ? teacherNames.value : this.teacherNames));
  }
}

@JsonSerializable(explicitToJson: true)
class LessonCreate {
  LessonCreate({
    required this.number,
    required this.typeId,
    this.disciplineId,
    this.isRemotely,
    this.isElective,
    required this.groups,
    this.teachers,
    this.placeId,
    required this.semesterId,
    required this.date,
  });

  factory LessonCreate.fromJson(Map<String, dynamic> json) =>
      _$LessonCreateFromJson(json);

  @JsonKey(name: 'number')
  final int number;
  @JsonKey(name: 'type_id')
  final int typeId;
  @JsonKey(name: 'discipline_id')
  final int? disciplineId;
  @JsonKey(name: 'is_remotely', defaultValue: false)
  final bool? isRemotely;
  @JsonKey(name: 'is_elective', defaultValue: false)
  final bool? isElective;
  @JsonKey(name: 'groups', defaultValue: <int>[])
  final List<int> groups;
  @JsonKey(name: 'teachers', defaultValue: <int>[])
  final List<int>? teachers;
  @JsonKey(name: 'place_id')
  final int? placeId;
  @JsonKey(name: 'semester_id')
  final int semesterId;
  @JsonKey(name: 'date')
  final String date;
  static const fromJsonFactory = _$LessonCreateFromJson;
  static const toJsonFactory = _$LessonCreateToJson;
  Map<String, dynamic> toJson() => _$LessonCreateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LessonCreate &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.typeId, typeId) ||
                const DeepCollectionEquality().equals(other.typeId, typeId)) &&
            (identical(other.disciplineId, disciplineId) ||
                const DeepCollectionEquality()
                    .equals(other.disciplineId, disciplineId)) &&
            (identical(other.isRemotely, isRemotely) ||
                const DeepCollectionEquality()
                    .equals(other.isRemotely, isRemotely)) &&
            (identical(other.isElective, isElective) ||
                const DeepCollectionEquality()
                    .equals(other.isElective, isElective)) &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)) &&
            (identical(other.teachers, teachers) ||
                const DeepCollectionEquality()
                    .equals(other.teachers, teachers)) &&
            (identical(other.placeId, placeId) ||
                const DeepCollectionEquality()
                    .equals(other.placeId, placeId)) &&
            (identical(other.semesterId, semesterId) ||
                const DeepCollectionEquality()
                    .equals(other.semesterId, semesterId)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(typeId) ^
      const DeepCollectionEquality().hash(disciplineId) ^
      const DeepCollectionEquality().hash(isRemotely) ^
      const DeepCollectionEquality().hash(isElective) ^
      const DeepCollectionEquality().hash(groups) ^
      const DeepCollectionEquality().hash(teachers) ^
      const DeepCollectionEquality().hash(placeId) ^
      const DeepCollectionEquality().hash(semesterId) ^
      const DeepCollectionEquality().hash(date) ^
      runtimeType.hashCode;
}

extension $LessonCreateExtension on LessonCreate {
  LessonCreate copyWith(
      {int? number,
      int? typeId,
      int? disciplineId,
      bool? isRemotely,
      bool? isElective,
      List<int>? groups,
      List<int>? teachers,
      int? placeId,
      int? semesterId,
      String? date}) {
    return LessonCreate(
        number: number ?? this.number,
        typeId: typeId ?? this.typeId,
        disciplineId: disciplineId ?? this.disciplineId,
        isRemotely: isRemotely ?? this.isRemotely,
        isElective: isElective ?? this.isElective,
        groups: groups ?? this.groups,
        teachers: teachers ?? this.teachers,
        placeId: placeId ?? this.placeId,
        semesterId: semesterId ?? this.semesterId,
        date: date ?? this.date);
  }

  LessonCreate copyWithWrapped(
      {Wrapped<int>? number,
      Wrapped<int>? typeId,
      Wrapped<int?>? disciplineId,
      Wrapped<bool?>? isRemotely,
      Wrapped<bool?>? isElective,
      Wrapped<List<int>>? groups,
      Wrapped<List<int>?>? teachers,
      Wrapped<int?>? placeId,
      Wrapped<int>? semesterId,
      Wrapped<String>? date}) {
    return LessonCreate(
        number: (number != null ? number.value : this.number),
        typeId: (typeId != null ? typeId.value : this.typeId),
        disciplineId:
            (disciplineId != null ? disciplineId.value : this.disciplineId),
        isRemotely: (isRemotely != null ? isRemotely.value : this.isRemotely),
        isElective: (isElective != null ? isElective.value : this.isElective),
        groups: (groups != null ? groups.value : this.groups),
        teachers: (teachers != null ? teachers.value : this.teachers),
        placeId: (placeId != null ? placeId.value : this.placeId),
        semesterId: (semesterId != null ? semesterId.value : this.semesterId),
        date: (date != null ? date.value : this.date));
  }
}

@JsonSerializable(explicitToJson: true)
class LessonCreateWithParams {
  LessonCreateWithParams({
    this.ignoreCollisions,
    this.notify,
    required this.lesson,
  });

  factory LessonCreateWithParams.fromJson(Map<String, dynamic> json) =>
      _$LessonCreateWithParamsFromJson(json);

  @JsonKey(name: 'ignore_collisions', defaultValue: false)
  final bool? ignoreCollisions;
  @JsonKey(name: 'notify', defaultValue: false)
  final bool? notify;
  @JsonKey(name: 'lesson')
  final LessonCreate lesson;
  static const fromJsonFactory = _$LessonCreateWithParamsFromJson;
  static const toJsonFactory = _$LessonCreateWithParamsToJson;
  Map<String, dynamic> toJson() => _$LessonCreateWithParamsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LessonCreateWithParams &&
            (identical(other.ignoreCollisions, ignoreCollisions) ||
                const DeepCollectionEquality()
                    .equals(other.ignoreCollisions, ignoreCollisions)) &&
            (identical(other.notify, notify) ||
                const DeepCollectionEquality().equals(other.notify, notify)) &&
            (identical(other.lesson, lesson) ||
                const DeepCollectionEquality().equals(other.lesson, lesson)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ignoreCollisions) ^
      const DeepCollectionEquality().hash(notify) ^
      const DeepCollectionEquality().hash(lesson) ^
      runtimeType.hashCode;
}

extension $LessonCreateWithParamsExtension on LessonCreateWithParams {
  LessonCreateWithParams copyWith(
      {bool? ignoreCollisions, bool? notify, LessonCreate? lesson}) {
    return LessonCreateWithParams(
        ignoreCollisions: ignoreCollisions ?? this.ignoreCollisions,
        notify: notify ?? this.notify,
        lesson: lesson ?? this.lesson);
  }

  LessonCreateWithParams copyWithWrapped(
      {Wrapped<bool?>? ignoreCollisions,
      Wrapped<bool?>? notify,
      Wrapped<LessonCreate>? lesson}) {
    return LessonCreateWithParams(
        ignoreCollisions: (ignoreCollisions != null
            ? ignoreCollisions.value
            : this.ignoreCollisions),
        notify: (notify != null ? notify.value : this.notify),
        lesson: (lesson != null ? lesson.value : this.lesson));
  }
}

@JsonSerializable(explicitToJson: true)
class LessonFullInDb {
  LessonFullInDb({
    required this.id,
    this.theme,
    required this.status,
    required this.groups,
    required this.teachers,
    required this.number,
    required this.isRemotely,
    required this.isElective,
    required this.type,
    this.discipline,
    this.place,
    required this.date,
  });

  factory LessonFullInDb.fromJson(Map<String, dynamic> json) =>
      _$LessonFullInDbFromJson(json);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'theme')
  final String? theme;
  @JsonKey(
    name: 'status',
    toJson: lessonStatusToJson,
    fromJson: lessonStatusFromJson,
  )
  final enums.LessonStatus status;
  @JsonKey(name: 'groups', defaultValue: <int>[])
  final List<int> groups;
  @JsonKey(name: 'teachers', defaultValue: <int>[])
  final List<int> teachers;
  @JsonKey(name: 'number')
  final int number;
  @JsonKey(name: 'is_remotely')
  final bool isRemotely;
  @JsonKey(name: 'is_elective')
  final bool isElective;
  @JsonKey(name: 'type')
  final LessonTypeInDb type;
  @JsonKey(name: 'discipline')
  final DisciplineInDb? discipline;
  @JsonKey(name: 'place')
  final PlaceInDb? place;
  @JsonKey(name: 'date', toJson: _dateToJson)
  final DateTime date;
  static const fromJsonFactory = _$LessonFullInDbFromJson;
  static const toJsonFactory = _$LessonFullInDbToJson;
  Map<String, dynamic> toJson() => _$LessonFullInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LessonFullInDb &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.theme, theme) ||
                const DeepCollectionEquality().equals(other.theme, theme)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)) &&
            (identical(other.teachers, teachers) ||
                const DeepCollectionEquality()
                    .equals(other.teachers, teachers)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.isRemotely, isRemotely) ||
                const DeepCollectionEquality()
                    .equals(other.isRemotely, isRemotely)) &&
            (identical(other.isElective, isElective) ||
                const DeepCollectionEquality()
                    .equals(other.isElective, isElective)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.discipline, discipline) ||
                const DeepCollectionEquality()
                    .equals(other.discipline, discipline)) &&
            (identical(other.place, place) ||
                const DeepCollectionEquality().equals(other.place, place)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(theme) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(groups) ^
      const DeepCollectionEquality().hash(teachers) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(isRemotely) ^
      const DeepCollectionEquality().hash(isElective) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(discipline) ^
      const DeepCollectionEquality().hash(place) ^
      const DeepCollectionEquality().hash(date) ^
      runtimeType.hashCode;
}

extension $LessonFullInDbExtension on LessonFullInDb {
  LessonFullInDb copyWith(
      {int? id,
      String? theme,
      enums.LessonStatus? status,
      List<int>? groups,
      List<int>? teachers,
      int? number,
      bool? isRemotely,
      bool? isElective,
      LessonTypeInDb? type,
      DisciplineInDb? discipline,
      PlaceInDb? place,
      DateTime? date}) {
    return LessonFullInDb(
        id: id ?? this.id,
        theme: theme ?? this.theme,
        status: status ?? this.status,
        groups: groups ?? this.groups,
        teachers: teachers ?? this.teachers,
        number: number ?? this.number,
        isRemotely: isRemotely ?? this.isRemotely,
        isElective: isElective ?? this.isElective,
        type: type ?? this.type,
        discipline: discipline ?? this.discipline,
        place: place ?? this.place,
        date: date ?? this.date);
  }

  LessonFullInDb copyWithWrapped(
      {Wrapped<int>? id,
      Wrapped<String?>? theme,
      Wrapped<enums.LessonStatus>? status,
      Wrapped<List<int>>? groups,
      Wrapped<List<int>>? teachers,
      Wrapped<int>? number,
      Wrapped<bool>? isRemotely,
      Wrapped<bool>? isElective,
      Wrapped<LessonTypeInDb>? type,
      Wrapped<DisciplineInDb?>? discipline,
      Wrapped<PlaceInDb?>? place,
      Wrapped<DateTime>? date}) {
    return LessonFullInDb(
        id: (id != null ? id.value : this.id),
        theme: (theme != null ? theme.value : this.theme),
        status: (status != null ? status.value : this.status),
        groups: (groups != null ? groups.value : this.groups),
        teachers: (teachers != null ? teachers.value : this.teachers),
        number: (number != null ? number.value : this.number),
        isRemotely: (isRemotely != null ? isRemotely.value : this.isRemotely),
        isElective: (isElective != null ? isElective.value : this.isElective),
        type: (type != null ? type.value : this.type),
        discipline: (discipline != null ? discipline.value : this.discipline),
        place: (place != null ? place.value : this.place),
        date: (date != null ? date.value : this.date));
  }
}

@JsonSerializable(explicitToJson: true)
class LessonFullNamesInDb {
  LessonFullNamesInDb({
    required this.id,
    this.theme,
    required this.status,
    this.groupNames,
    this.teacherNames,
    required this.number,
    required this.isRemotely,
    required this.isElective,
    required this.type,
    this.discipline,
    this.place,
    required this.date,
  });

  factory LessonFullNamesInDb.fromJson(Map<String, dynamic> json) =>
      _$LessonFullNamesInDbFromJson(json);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'theme')
  final String? theme;
  @JsonKey(
    name: 'status',
    toJson: lessonStatusToJson,
    fromJson: lessonStatusFromJson,
  )
  final enums.LessonStatus status;
  @JsonKey(name: 'group_names', defaultValue: <String>[])
  final List<String>? groupNames;
  @JsonKey(name: 'teacher_names', defaultValue: <String>[])
  final List<String>? teacherNames;
  @JsonKey(name: 'number')
  final int number;
  @JsonKey(name: 'is_remotely')
  final bool isRemotely;
  @JsonKey(name: 'is_elective')
  final bool isElective;
  @JsonKey(name: 'type')
  final LessonTypeInDb type;
  @JsonKey(name: 'discipline')
  final DisciplineInDb? discipline;
  @JsonKey(name: 'place')
  final PlaceInDb? place;
  @JsonKey(name: 'date', toJson: _dateToJson)
  final DateTime date;
  static const fromJsonFactory = _$LessonFullNamesInDbFromJson;
  static const toJsonFactory = _$LessonFullNamesInDbToJson;
  Map<String, dynamic> toJson() => _$LessonFullNamesInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LessonFullNamesInDb &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.theme, theme) ||
                const DeepCollectionEquality().equals(other.theme, theme)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.groupNames, groupNames) ||
                const DeepCollectionEquality()
                    .equals(other.groupNames, groupNames)) &&
            (identical(other.teacherNames, teacherNames) ||
                const DeepCollectionEquality()
                    .equals(other.teacherNames, teacherNames)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.isRemotely, isRemotely) ||
                const DeepCollectionEquality()
                    .equals(other.isRemotely, isRemotely)) &&
            (identical(other.isElective, isElective) ||
                const DeepCollectionEquality()
                    .equals(other.isElective, isElective)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.discipline, discipline) ||
                const DeepCollectionEquality()
                    .equals(other.discipline, discipline)) &&
            (identical(other.place, place) ||
                const DeepCollectionEquality().equals(other.place, place)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(theme) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(groupNames) ^
      const DeepCollectionEquality().hash(teacherNames) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(isRemotely) ^
      const DeepCollectionEquality().hash(isElective) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(discipline) ^
      const DeepCollectionEquality().hash(place) ^
      const DeepCollectionEquality().hash(date) ^
      runtimeType.hashCode;
}

extension $LessonFullNamesInDbExtension on LessonFullNamesInDb {
  LessonFullNamesInDb copyWith(
      {int? id,
      String? theme,
      enums.LessonStatus? status,
      List<String>? groupNames,
      List<String>? teacherNames,
      int? number,
      bool? isRemotely,
      bool? isElective,
      LessonTypeInDb? type,
      DisciplineInDb? discipline,
      PlaceInDb? place,
      DateTime? date}) {
    return LessonFullNamesInDb(
        id: id ?? this.id,
        theme: theme ?? this.theme,
        status: status ?? this.status,
        groupNames: groupNames ?? this.groupNames,
        teacherNames: teacherNames ?? this.teacherNames,
        number: number ?? this.number,
        isRemotely: isRemotely ?? this.isRemotely,
        isElective: isElective ?? this.isElective,
        type: type ?? this.type,
        discipline: discipline ?? this.discipline,
        place: place ?? this.place,
        date: date ?? this.date);
  }

  LessonFullNamesInDb copyWithWrapped(
      {Wrapped<int>? id,
      Wrapped<String?>? theme,
      Wrapped<enums.LessonStatus>? status,
      Wrapped<List<String>?>? groupNames,
      Wrapped<List<String>?>? teacherNames,
      Wrapped<int>? number,
      Wrapped<bool>? isRemotely,
      Wrapped<bool>? isElective,
      Wrapped<LessonTypeInDb>? type,
      Wrapped<DisciplineInDb?>? discipline,
      Wrapped<PlaceInDb?>? place,
      Wrapped<DateTime>? date}) {
    return LessonFullNamesInDb(
        id: (id != null ? id.value : this.id),
        theme: (theme != null ? theme.value : this.theme),
        status: (status != null ? status.value : this.status),
        groupNames: (groupNames != null ? groupNames.value : this.groupNames),
        teacherNames:
            (teacherNames != null ? teacherNames.value : this.teacherNames),
        number: (number != null ? number.value : this.number),
        isRemotely: (isRemotely != null ? isRemotely.value : this.isRemotely),
        isElective: (isElective != null ? isElective.value : this.isElective),
        type: (type != null ? type.value : this.type),
        discipline: (discipline != null ? discipline.value : this.discipline),
        place: (place != null ? place.value : this.place),
        date: (date != null ? date.value : this.date));
  }
}

@JsonSerializable(explicitToJson: true)
class LessonHistory {
  LessonHistory({
    required this.id,
    required this.user,
    required this.changes,
    required this.timestamp,
  });

  factory LessonHistory.fromJson(Map<String, dynamic> json) =>
      _$LessonHistoryFromJson(json);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'user')
  final AppSchemasUserUserFullNameInDb user;
  @JsonKey(name: 'changes', defaultValue: <LessonHistoryField>[])
  final List<LessonHistoryField> changes;
  @JsonKey(name: 'timestamp')
  final DateTime timestamp;
  static const fromJsonFactory = _$LessonHistoryFromJson;
  static const toJsonFactory = _$LessonHistoryToJson;
  Map<String, dynamic> toJson() => _$LessonHistoryToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LessonHistory &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.changes, changes) ||
                const DeepCollectionEquality()
                    .equals(other.changes, changes)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(changes) ^
      const DeepCollectionEquality().hash(timestamp) ^
      runtimeType.hashCode;
}

extension $LessonHistoryExtension on LessonHistory {
  LessonHistory copyWith(
      {int? id,
      AppSchemasUserUserFullNameInDb? user,
      List<LessonHistoryField>? changes,
      DateTime? timestamp}) {
    return LessonHistory(
        id: id ?? this.id,
        user: user ?? this.user,
        changes: changes ?? this.changes,
        timestamp: timestamp ?? this.timestamp);
  }

  LessonHistory copyWithWrapped(
      {Wrapped<int>? id,
      Wrapped<AppSchemasUserUserFullNameInDb>? user,
      Wrapped<List<LessonHistoryField>>? changes,
      Wrapped<DateTime>? timestamp}) {
    return LessonHistory(
        id: (id != null ? id.value : this.id),
        user: (user != null ? user.value : this.user),
        changes: (changes != null ? changes.value : this.changes),
        timestamp: (timestamp != null ? timestamp.value : this.timestamp));
  }
}

@JsonSerializable(explicitToJson: true)
class LessonHistoryField {
  LessonHistoryField({
    required this.field,
    this.newValue,
    this.oldValue,
  });

  factory LessonHistoryField.fromJson(Map<String, dynamic> json) =>
      _$LessonHistoryFieldFromJson(json);

  @JsonKey(
    name: 'field',
    toJson: historyFieldToJson,
    fromJson: historyFieldFromJson,
  )
  final enums.HistoryField field;
  @JsonKey(name: 'new_value')
  final String? newValue;
  @JsonKey(name: 'old_value')
  final String? oldValue;
  static const fromJsonFactory = _$LessonHistoryFieldFromJson;
  static const toJsonFactory = _$LessonHistoryFieldToJson;
  Map<String, dynamic> toJson() => _$LessonHistoryFieldToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LessonHistoryField &&
            (identical(other.field, field) ||
                const DeepCollectionEquality().equals(other.field, field)) &&
            (identical(other.newValue, newValue) ||
                const DeepCollectionEquality()
                    .equals(other.newValue, newValue)) &&
            (identical(other.oldValue, oldValue) ||
                const DeepCollectionEquality()
                    .equals(other.oldValue, oldValue)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(field) ^
      const DeepCollectionEquality().hash(newValue) ^
      const DeepCollectionEquality().hash(oldValue) ^
      runtimeType.hashCode;
}

extension $LessonHistoryFieldExtension on LessonHistoryField {
  LessonHistoryField copyWith(
      {enums.HistoryField? field, String? newValue, String? oldValue}) {
    return LessonHistoryField(
        field: field ?? this.field,
        newValue: newValue ?? this.newValue,
        oldValue: oldValue ?? this.oldValue);
  }

  LessonHistoryField copyWithWrapped(
      {Wrapped<enums.HistoryField>? field,
      Wrapped<String?>? newValue,
      Wrapped<String?>? oldValue}) {
    return LessonHistoryField(
        field: (field != null ? field.value : this.field),
        newValue: (newValue != null ? newValue.value : this.newValue),
        oldValue: (oldValue != null ? oldValue.value : this.oldValue));
  }
}

@JsonSerializable(explicitToJson: true)
class LessonInDb {
  LessonInDb({
    required this.id,
    this.theme,
    required this.status,
    required this.groups,
    required this.teachers,
    required this.number,
    required this.isRemotely,
    required this.isElective,
    required this.typeId,
    this.disciplineId,
    this.placeId,
    required this.date,
  });

  factory LessonInDb.fromJson(Map<String, dynamic> json) =>
      _$LessonInDbFromJson(json);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'theme')
  final String? theme;
  @JsonKey(
    name: 'status',
    toJson: lessonStatusToJson,
    fromJson: lessonStatusFromJson,
  )
  final enums.LessonStatus status;
  @JsonKey(name: 'groups', defaultValue: <int>[])
  final List<int> groups;
  @JsonKey(name: 'teachers', defaultValue: <int>[])
  final List<int> teachers;
  @JsonKey(name: 'number')
  final int number;
  @JsonKey(name: 'is_remotely')
  final bool isRemotely;
  @JsonKey(name: 'is_elective')
  final bool isElective;
  @JsonKey(name: 'type_id')
  final int typeId;
  @JsonKey(name: 'discipline_id')
  final int? disciplineId;
  @JsonKey(name: 'place_id')
  final int? placeId;
  @JsonKey(name: 'date', toJson: _dateToJson)
  final DateTime date;
  static const fromJsonFactory = _$LessonInDbFromJson;
  static const toJsonFactory = _$LessonInDbToJson;
  Map<String, dynamic> toJson() => _$LessonInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LessonInDb &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.theme, theme) ||
                const DeepCollectionEquality().equals(other.theme, theme)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)) &&
            (identical(other.teachers, teachers) ||
                const DeepCollectionEquality()
                    .equals(other.teachers, teachers)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.isRemotely, isRemotely) ||
                const DeepCollectionEquality()
                    .equals(other.isRemotely, isRemotely)) &&
            (identical(other.isElective, isElective) ||
                const DeepCollectionEquality()
                    .equals(other.isElective, isElective)) &&
            (identical(other.typeId, typeId) ||
                const DeepCollectionEquality().equals(other.typeId, typeId)) &&
            (identical(other.disciplineId, disciplineId) ||
                const DeepCollectionEquality()
                    .equals(other.disciplineId, disciplineId)) &&
            (identical(other.placeId, placeId) ||
                const DeepCollectionEquality()
                    .equals(other.placeId, placeId)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(theme) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(groups) ^
      const DeepCollectionEquality().hash(teachers) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(isRemotely) ^
      const DeepCollectionEquality().hash(isElective) ^
      const DeepCollectionEquality().hash(typeId) ^
      const DeepCollectionEquality().hash(disciplineId) ^
      const DeepCollectionEquality().hash(placeId) ^
      const DeepCollectionEquality().hash(date) ^
      runtimeType.hashCode;
}

extension $LessonInDbExtension on LessonInDb {
  LessonInDb copyWith(
      {int? id,
      String? theme,
      enums.LessonStatus? status,
      List<int>? groups,
      List<int>? teachers,
      int? number,
      bool? isRemotely,
      bool? isElective,
      int? typeId,
      int? disciplineId,
      int? placeId,
      DateTime? date}) {
    return LessonInDb(
        id: id ?? this.id,
        theme: theme ?? this.theme,
        status: status ?? this.status,
        groups: groups ?? this.groups,
        teachers: teachers ?? this.teachers,
        number: number ?? this.number,
        isRemotely: isRemotely ?? this.isRemotely,
        isElective: isElective ?? this.isElective,
        typeId: typeId ?? this.typeId,
        disciplineId: disciplineId ?? this.disciplineId,
        placeId: placeId ?? this.placeId,
        date: date ?? this.date);
  }

  LessonInDb copyWithWrapped(
      {Wrapped<int>? id,
      Wrapped<String?>? theme,
      Wrapped<enums.LessonStatus>? status,
      Wrapped<List<int>>? groups,
      Wrapped<List<int>>? teachers,
      Wrapped<int>? number,
      Wrapped<bool>? isRemotely,
      Wrapped<bool>? isElective,
      Wrapped<int>? typeId,
      Wrapped<int?>? disciplineId,
      Wrapped<int?>? placeId,
      Wrapped<DateTime>? date}) {
    return LessonInDb(
        id: (id != null ? id.value : this.id),
        theme: (theme != null ? theme.value : this.theme),
        status: (status != null ? status.value : this.status),
        groups: (groups != null ? groups.value : this.groups),
        teachers: (teachers != null ? teachers.value : this.teachers),
        number: (number != null ? number.value : this.number),
        isRemotely: (isRemotely != null ? isRemotely.value : this.isRemotely),
        isElective: (isElective != null ? isElective.value : this.isElective),
        typeId: (typeId != null ? typeId.value : this.typeId),
        disciplineId:
            (disciplineId != null ? disciplineId.value : this.disciplineId),
        placeId: (placeId != null ? placeId.value : this.placeId),
        date: (date != null ? date.value : this.date));
  }
}

@JsonSerializable(explicitToJson: true)
class LessonRelated {
  LessonRelated({
    required this.id,
    required this.date,
  });

  factory LessonRelated.fromJson(Map<String, dynamic> json) =>
      _$LessonRelatedFromJson(json);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'date', toJson: _dateToJson)
  final DateTime date;
  static const fromJsonFactory = _$LessonRelatedFromJson;
  static const toJsonFactory = _$LessonRelatedToJson;
  Map<String, dynamic> toJson() => _$LessonRelatedToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LessonRelated &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(date) ^
      runtimeType.hashCode;
}

extension $LessonRelatedExtension on LessonRelated {
  LessonRelated copyWith({int? id, DateTime? date}) {
    return LessonRelated(id: id ?? this.id, date: date ?? this.date);
  }

  LessonRelated copyWithWrapped({Wrapped<int>? id, Wrapped<DateTime>? date}) {
    return LessonRelated(
        id: (id != null ? id.value : this.id),
        date: (date != null ? date.value : this.date));
  }
}

@JsonSerializable(explicitToJson: true)
class LessonResults {
  LessonResults({
    required this.headerIds,
    required this.lessons,
    this.mode,
    this.lastChange,
  });

  factory LessonResults.fromJson(Map<String, dynamic> json) =>
      _$LessonResultsFromJson(json);

  @JsonKey(name: 'header_ids', defaultValue: <int>[])
  final List<int> headerIds;
  @JsonKey(name: 'lessons', defaultValue: <LessonInDb>[])
  final List<LessonInDb> lessons;
  @JsonKey(
    name: 'mode',
    toJson: viewModeToJson,
    fromJson: viewModeFromJson,
  )
  final enums.ViewMode? mode;
  @JsonKey(name: 'last_change')
  final LastChange? lastChange;
  static const fromJsonFactory = _$LessonResultsFromJson;
  static const toJsonFactory = _$LessonResultsToJson;
  Map<String, dynamic> toJson() => _$LessonResultsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LessonResults &&
            (identical(other.headerIds, headerIds) ||
                const DeepCollectionEquality()
                    .equals(other.headerIds, headerIds)) &&
            (identical(other.lessons, lessons) ||
                const DeepCollectionEquality()
                    .equals(other.lessons, lessons)) &&
            (identical(other.mode, mode) ||
                const DeepCollectionEquality().equals(other.mode, mode)) &&
            (identical(other.lastChange, lastChange) ||
                const DeepCollectionEquality()
                    .equals(other.lastChange, lastChange)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(headerIds) ^
      const DeepCollectionEquality().hash(lessons) ^
      const DeepCollectionEquality().hash(mode) ^
      const DeepCollectionEquality().hash(lastChange) ^
      runtimeType.hashCode;
}

extension $LessonResultsExtension on LessonResults {
  LessonResults copyWith(
      {List<int>? headerIds,
      List<LessonInDb>? lessons,
      enums.ViewMode? mode,
      LastChange? lastChange}) {
    return LessonResults(
        headerIds: headerIds ?? this.headerIds,
        lessons: lessons ?? this.lessons,
        mode: mode ?? this.mode,
        lastChange: lastChange ?? this.lastChange);
  }

  LessonResults copyWithWrapped(
      {Wrapped<List<int>>? headerIds,
      Wrapped<List<LessonInDb>>? lessons,
      Wrapped<enums.ViewMode?>? mode,
      Wrapped<LastChange?>? lastChange}) {
    return LessonResults(
        headerIds: (headerIds != null ? headerIds.value : this.headerIds),
        lessons: (lessons != null ? lessons.value : this.lessons),
        mode: (mode != null ? mode.value : this.mode),
        lastChange: (lastChange != null ? lastChange.value : this.lastChange));
  }
}

@JsonSerializable(explicitToJson: true)
class LessonTypeInDb {
  LessonTypeInDb({
    required this.name,
    required this.shortName,
    required this.color,
    required this.id,
  });

  factory LessonTypeInDb.fromJson(Map<String, dynamic> json) =>
      _$LessonTypeInDbFromJson(json);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'short_name')
  final String shortName;
  @JsonKey(name: 'color')
  final String color;
  @JsonKey(name: 'id')
  final int id;
  static const fromJsonFactory = _$LessonTypeInDbFromJson;
  static const toJsonFactory = _$LessonTypeInDbToJson;
  Map<String, dynamic> toJson() => _$LessonTypeInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LessonTypeInDb &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.shortName, shortName) ||
                const DeepCollectionEquality()
                    .equals(other.shortName, shortName)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(shortName) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $LessonTypeInDbExtension on LessonTypeInDb {
  LessonTypeInDb copyWith(
      {String? name, String? shortName, String? color, int? id}) {
    return LessonTypeInDb(
        name: name ?? this.name,
        shortName: shortName ?? this.shortName,
        color: color ?? this.color,
        id: id ?? this.id);
  }

  LessonTypeInDb copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<String>? shortName,
      Wrapped<String>? color,
      Wrapped<int>? id}) {
    return LessonTypeInDb(
        name: (name != null ? name.value : this.name),
        shortName: (shortName != null ? shortName.value : this.shortName),
        color: (color != null ? color.value : this.color),
        id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class LessonUpdate {
  LessonUpdate({
    this.disciplineId,
    this.number,
    this.typeId,
    this.isRemotely,
    this.isElective,
    this.groups,
    this.teachers,
    this.placeId,
    this.date,
  });

  factory LessonUpdate.fromJson(Map<String, dynamic> json) =>
      _$LessonUpdateFromJson(json);

  @JsonKey(name: 'discipline_id')
  final int? disciplineId;
  @JsonKey(name: 'number')
  final int? number;
  @JsonKey(name: 'type_id')
  final int? typeId;
  @JsonKey(name: 'is_remotely', defaultValue: false)
  final bool? isRemotely;
  @JsonKey(name: 'is_elective', defaultValue: false)
  final bool? isElective;
  @JsonKey(name: 'groups', defaultValue: <int>[])
  final List<int>? groups;
  @JsonKey(name: 'teachers', defaultValue: <int>[])
  final List<int>? teachers;
  @JsonKey(name: 'place_id')
  final int? placeId;
  @JsonKey(name: 'date')
  final String? date;
  static const fromJsonFactory = _$LessonUpdateFromJson;
  static const toJsonFactory = _$LessonUpdateToJson;
  Map<String, dynamic> toJson() => _$LessonUpdateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LessonUpdate &&
            (identical(other.disciplineId, disciplineId) ||
                const DeepCollectionEquality()
                    .equals(other.disciplineId, disciplineId)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.typeId, typeId) ||
                const DeepCollectionEquality().equals(other.typeId, typeId)) &&
            (identical(other.isRemotely, isRemotely) ||
                const DeepCollectionEquality()
                    .equals(other.isRemotely, isRemotely)) &&
            (identical(other.isElective, isElective) ||
                const DeepCollectionEquality()
                    .equals(other.isElective, isElective)) &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)) &&
            (identical(other.teachers, teachers) ||
                const DeepCollectionEquality()
                    .equals(other.teachers, teachers)) &&
            (identical(other.placeId, placeId) ||
                const DeepCollectionEquality()
                    .equals(other.placeId, placeId)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(disciplineId) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(typeId) ^
      const DeepCollectionEquality().hash(isRemotely) ^
      const DeepCollectionEquality().hash(isElective) ^
      const DeepCollectionEquality().hash(groups) ^
      const DeepCollectionEquality().hash(teachers) ^
      const DeepCollectionEquality().hash(placeId) ^
      const DeepCollectionEquality().hash(date) ^
      runtimeType.hashCode;
}

extension $LessonUpdateExtension on LessonUpdate {
  LessonUpdate copyWith(
      {int? disciplineId,
      int? number,
      int? typeId,
      bool? isRemotely,
      bool? isElective,
      List<int>? groups,
      List<int>? teachers,
      int? placeId,
      String? date}) {
    return LessonUpdate(
        disciplineId: disciplineId ?? this.disciplineId,
        number: number ?? this.number,
        typeId: typeId ?? this.typeId,
        isRemotely: isRemotely ?? this.isRemotely,
        isElective: isElective ?? this.isElective,
        groups: groups ?? this.groups,
        teachers: teachers ?? this.teachers,
        placeId: placeId ?? this.placeId,
        date: date ?? this.date);
  }

  LessonUpdate copyWithWrapped(
      {Wrapped<int?>? disciplineId,
      Wrapped<int?>? number,
      Wrapped<int?>? typeId,
      Wrapped<bool?>? isRemotely,
      Wrapped<bool?>? isElective,
      Wrapped<List<int>?>? groups,
      Wrapped<List<int>?>? teachers,
      Wrapped<int?>? placeId,
      Wrapped<String?>? date}) {
    return LessonUpdate(
        disciplineId:
            (disciplineId != null ? disciplineId.value : this.disciplineId),
        number: (number != null ? number.value : this.number),
        typeId: (typeId != null ? typeId.value : this.typeId),
        isRemotely: (isRemotely != null ? isRemotely.value : this.isRemotely),
        isElective: (isElective != null ? isElective.value : this.isElective),
        groups: (groups != null ? groups.value : this.groups),
        teachers: (teachers != null ? teachers.value : this.teachers),
        placeId: (placeId != null ? placeId.value : this.placeId),
        date: (date != null ? date.value : this.date));
  }
}

@JsonSerializable(explicitToJson: true)
class LessonUpdateWithParams {
  LessonUpdateWithParams({
    this.ignoreCollisions,
    this.notify,
    required this.lesson,
  });

  factory LessonUpdateWithParams.fromJson(Map<String, dynamic> json) =>
      _$LessonUpdateWithParamsFromJson(json);

  @JsonKey(name: 'ignore_collisions', defaultValue: false)
  final bool? ignoreCollisions;
  @JsonKey(name: 'notify', defaultValue: false)
  final bool? notify;
  @JsonKey(name: 'lesson')
  final LessonUpdate lesson;
  static const fromJsonFactory = _$LessonUpdateWithParamsFromJson;
  static const toJsonFactory = _$LessonUpdateWithParamsToJson;
  Map<String, dynamic> toJson() => _$LessonUpdateWithParamsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LessonUpdateWithParams &&
            (identical(other.ignoreCollisions, ignoreCollisions) ||
                const DeepCollectionEquality()
                    .equals(other.ignoreCollisions, ignoreCollisions)) &&
            (identical(other.notify, notify) ||
                const DeepCollectionEquality().equals(other.notify, notify)) &&
            (identical(other.lesson, lesson) ||
                const DeepCollectionEquality().equals(other.lesson, lesson)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ignoreCollisions) ^
      const DeepCollectionEquality().hash(notify) ^
      const DeepCollectionEquality().hash(lesson) ^
      runtimeType.hashCode;
}

extension $LessonUpdateWithParamsExtension on LessonUpdateWithParams {
  LessonUpdateWithParams copyWith(
      {bool? ignoreCollisions, bool? notify, LessonUpdate? lesson}) {
    return LessonUpdateWithParams(
        ignoreCollisions: ignoreCollisions ?? this.ignoreCollisions,
        notify: notify ?? this.notify,
        lesson: lesson ?? this.lesson);
  }

  LessonUpdateWithParams copyWithWrapped(
      {Wrapped<bool?>? ignoreCollisions,
      Wrapped<bool?>? notify,
      Wrapped<LessonUpdate>? lesson}) {
    return LessonUpdateWithParams(
        ignoreCollisions: (ignoreCollisions != null
            ? ignoreCollisions.value
            : this.ignoreCollisions),
        notify: (notify != null ? notify.value : this.notify),
        lesson: (lesson != null ? lesson.value : this.lesson));
  }
}

@JsonSerializable(explicitToJson: true)
class LessonsSettings {
  LessonsSettings({
    required this.durationMinutes,
  });

  factory LessonsSettings.fromJson(Map<String, dynamic> json) =>
      _$LessonsSettingsFromJson(json);

  @JsonKey(name: 'duration_minutes')
  final int durationMinutes;
  static const fromJsonFactory = _$LessonsSettingsFromJson;
  static const toJsonFactory = _$LessonsSettingsToJson;
  Map<String, dynamic> toJson() => _$LessonsSettingsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LessonsSettings &&
            (identical(other.durationMinutes, durationMinutes) ||
                const DeepCollectionEquality()
                    .equals(other.durationMinutes, durationMinutes)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(durationMinutes) ^
      runtimeType.hashCode;
}

extension $LessonsSettingsExtension on LessonsSettings {
  LessonsSettings copyWith({int? durationMinutes}) {
    return LessonsSettings(
        durationMinutes: durationMinutes ?? this.durationMinutes);
  }

  LessonsSettings copyWithWrapped({Wrapped<int>? durationMinutes}) {
    return LessonsSettings(
        durationMinutes: (durationMinutes != null
            ? durationMinutes.value
            : this.durationMinutes));
  }
}

@JsonSerializable(explicitToJson: true)
class Log {
  Log({
    required this.id,
    required this.message,
    this.data,
    required this.status,
    required this.date,
    required this.time,
    required this.module,
    this.entity,
    required this.action,
    this.user,
  });

  factory Log.fromJson(Map<String, dynamic> json) => _$LogFromJson(json);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final Object? data;
  @JsonKey(
    name: 'status',
    toJson: logStatusAttrToJson,
    fromJson: logStatusAttrFromJson,
  )
  final enums.LogStatusAttr status;
  @JsonKey(name: 'date', toJson: _dateToJson)
  final DateTime date;
  @JsonKey(name: 'time')
  final String time;
  @JsonKey(name: 'module')
  final LogModule module;
  @JsonKey(name: 'entity')
  final LogEntity? entity;
  @JsonKey(name: 'action')
  final LogAction action;
  @JsonKey(name: 'user')
  final AppSchemasUserUserFullNameInDb? user;
  static const fromJsonFactory = _$LogFromJson;
  static const toJsonFactory = _$LogToJson;
  Map<String, dynamic> toJson() => _$LogToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Log &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.module, module) ||
                const DeepCollectionEquality().equals(other.module, module)) &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(module) ^
      const DeepCollectionEquality().hash(entity) ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(user) ^
      runtimeType.hashCode;
}

extension $LogExtension on Log {
  Log copyWith(
      {int? id,
      String? message,
      Object? data,
      enums.LogStatusAttr? status,
      DateTime? date,
      String? time,
      LogModule? module,
      LogEntity? entity,
      LogAction? action,
      AppSchemasUserUserFullNameInDb? user}) {
    return Log(
        id: id ?? this.id,
        message: message ?? this.message,
        data: data ?? this.data,
        status: status ?? this.status,
        date: date ?? this.date,
        time: time ?? this.time,
        module: module ?? this.module,
        entity: entity ?? this.entity,
        action: action ?? this.action,
        user: user ?? this.user);
  }

  Log copyWithWrapped(
      {Wrapped<int>? id,
      Wrapped<String>? message,
      Wrapped<Object?>? data,
      Wrapped<enums.LogStatusAttr>? status,
      Wrapped<DateTime>? date,
      Wrapped<String>? time,
      Wrapped<LogModule>? module,
      Wrapped<LogEntity?>? entity,
      Wrapped<LogAction>? action,
      Wrapped<AppSchemasUserUserFullNameInDb?>? user}) {
    return Log(
        id: (id != null ? id.value : this.id),
        message: (message != null ? message.value : this.message),
        data: (data != null ? data.value : this.data),
        status: (status != null ? status.value : this.status),
        date: (date != null ? date.value : this.date),
        time: (time != null ? time.value : this.time),
        module: (module != null ? module.value : this.module),
        entity: (entity != null ? entity.value : this.entity),
        action: (action != null ? action.value : this.action),
        user: (user != null ? user.value : this.user));
  }
}

@JsonSerializable(explicitToJson: true)
class LogAction {
  LogAction({
    required this.id,
    required this.name,
  });

  factory LogAction.fromJson(Map<String, dynamic> json) =>
      _$LogActionFromJson(json);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  static const fromJsonFactory = _$LogActionFromJson;
  static const toJsonFactory = _$LogActionToJson;
  Map<String, dynamic> toJson() => _$LogActionToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LogAction &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $LogActionExtension on LogAction {
  LogAction copyWith({int? id, String? name}) {
    return LogAction(id: id ?? this.id, name: name ?? this.name);
  }

  LogAction copyWithWrapped({Wrapped<int>? id, Wrapped<String>? name}) {
    return LogAction(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class LogEntity {
  LogEntity({
    required this.id,
    required this.name,
  });

  factory LogEntity.fromJson(Map<String, dynamic> json) =>
      _$LogEntityFromJson(json);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  static const fromJsonFactory = _$LogEntityFromJson;
  static const toJsonFactory = _$LogEntityToJson;
  Map<String, dynamic> toJson() => _$LogEntityToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LogEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $LogEntityExtension on LogEntity {
  LogEntity copyWith({int? id, String? name}) {
    return LogEntity(id: id ?? this.id, name: name ?? this.name);
  }

  LogEntity copyWithWrapped({Wrapped<int>? id, Wrapped<String>? name}) {
    return LogEntity(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class LogModule {
  LogModule({
    required this.id,
    required this.name,
  });

  factory LogModule.fromJson(Map<String, dynamic> json) =>
      _$LogModuleFromJson(json);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  static const fromJsonFactory = _$LogModuleFromJson;
  static const toJsonFactory = _$LogModuleToJson;
  Map<String, dynamic> toJson() => _$LogModuleToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LogModule &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $LogModuleExtension on LogModule {
  LogModule copyWith({int? id, String? name}) {
    return LogModule(id: id ?? this.id, name: name ?? this.name);
  }

  LogModule copyWithWrapped({Wrapped<int>? id, Wrapped<String>? name}) {
    return LogModule(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class MainLessonCollision {
  MainLessonCollision({
    required this.field,
    required this.data,
  });

  factory MainLessonCollision.fromJson(Map<String, dynamic> json) =>
      _$MainLessonCollisionFromJson(json);

  @JsonKey(name: 'field')
  final String field;
  @JsonKey(name: 'data')
  final MainLessonCollisionInfo data;
  static const fromJsonFactory = _$MainLessonCollisionFromJson;
  static const toJsonFactory = _$MainLessonCollisionToJson;
  Map<String, dynamic> toJson() => _$MainLessonCollisionToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MainLessonCollision &&
            (identical(other.field, field) ||
                const DeepCollectionEquality().equals(other.field, field)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(field) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $MainLessonCollisionExtension on MainLessonCollision {
  MainLessonCollision copyWith({String? field, MainLessonCollisionInfo? data}) {
    return MainLessonCollision(
        field: field ?? this.field, data: data ?? this.data);
  }

  MainLessonCollision copyWithWrapped(
      {Wrapped<String>? field, Wrapped<MainLessonCollisionInfo>? data}) {
    return MainLessonCollision(
        field: (field != null ? field.value : this.field),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class MainLessonCollisionInfo {
  MainLessonCollisionInfo({
    required this.number,
    required this.isRemotely,
    required this.isElective,
    required this.type,
    this.discipline,
    this.place,
    required this.id,
    required this.weekday,
    this.parity,
    this.groupNames,
    this.teacherNames,
  });

  factory MainLessonCollisionInfo.fromJson(Map<String, dynamic> json) =>
      _$MainLessonCollisionInfoFromJson(json);

  @JsonKey(name: 'number')
  final int number;
  @JsonKey(name: 'is_remotely')
  final bool isRemotely;
  @JsonKey(name: 'is_elective')
  final bool isElective;
  @JsonKey(name: 'type')
  final LessonTypeInDb type;
  @JsonKey(name: 'discipline')
  final DisciplineInDb? discipline;
  @JsonKey(name: 'place')
  final PlaceInDb? place;
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'weekday')
  final int weekday;
  @JsonKey(name: 'parity')
  final int? parity;
  @JsonKey(name: 'group_names', defaultValue: <String>[])
  final List<String>? groupNames;
  @JsonKey(name: 'teacher_names', defaultValue: <String>[])
  final List<String>? teacherNames;
  static const fromJsonFactory = _$MainLessonCollisionInfoFromJson;
  static const toJsonFactory = _$MainLessonCollisionInfoToJson;
  Map<String, dynamic> toJson() => _$MainLessonCollisionInfoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MainLessonCollisionInfo &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.isRemotely, isRemotely) ||
                const DeepCollectionEquality()
                    .equals(other.isRemotely, isRemotely)) &&
            (identical(other.isElective, isElective) ||
                const DeepCollectionEquality()
                    .equals(other.isElective, isElective)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.discipline, discipline) ||
                const DeepCollectionEquality()
                    .equals(other.discipline, discipline)) &&
            (identical(other.place, place) ||
                const DeepCollectionEquality().equals(other.place, place)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.weekday, weekday) ||
                const DeepCollectionEquality()
                    .equals(other.weekday, weekday)) &&
            (identical(other.parity, parity) ||
                const DeepCollectionEquality().equals(other.parity, parity)) &&
            (identical(other.groupNames, groupNames) ||
                const DeepCollectionEquality()
                    .equals(other.groupNames, groupNames)) &&
            (identical(other.teacherNames, teacherNames) ||
                const DeepCollectionEquality()
                    .equals(other.teacherNames, teacherNames)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(isRemotely) ^
      const DeepCollectionEquality().hash(isElective) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(discipline) ^
      const DeepCollectionEquality().hash(place) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(weekday) ^
      const DeepCollectionEquality().hash(parity) ^
      const DeepCollectionEquality().hash(groupNames) ^
      const DeepCollectionEquality().hash(teacherNames) ^
      runtimeType.hashCode;
}

extension $MainLessonCollisionInfoExtension on MainLessonCollisionInfo {
  MainLessonCollisionInfo copyWith(
      {int? number,
      bool? isRemotely,
      bool? isElective,
      LessonTypeInDb? type,
      DisciplineInDb? discipline,
      PlaceInDb? place,
      int? id,
      int? weekday,
      int? parity,
      List<String>? groupNames,
      List<String>? teacherNames}) {
    return MainLessonCollisionInfo(
        number: number ?? this.number,
        isRemotely: isRemotely ?? this.isRemotely,
        isElective: isElective ?? this.isElective,
        type: type ?? this.type,
        discipline: discipline ?? this.discipline,
        place: place ?? this.place,
        id: id ?? this.id,
        weekday: weekday ?? this.weekday,
        parity: parity ?? this.parity,
        groupNames: groupNames ?? this.groupNames,
        teacherNames: teacherNames ?? this.teacherNames);
  }

  MainLessonCollisionInfo copyWithWrapped(
      {Wrapped<int>? number,
      Wrapped<bool>? isRemotely,
      Wrapped<bool>? isElective,
      Wrapped<LessonTypeInDb>? type,
      Wrapped<DisciplineInDb?>? discipline,
      Wrapped<PlaceInDb?>? place,
      Wrapped<int>? id,
      Wrapped<int>? weekday,
      Wrapped<int?>? parity,
      Wrapped<List<String>?>? groupNames,
      Wrapped<List<String>?>? teacherNames}) {
    return MainLessonCollisionInfo(
        number: (number != null ? number.value : this.number),
        isRemotely: (isRemotely != null ? isRemotely.value : this.isRemotely),
        isElective: (isElective != null ? isElective.value : this.isElective),
        type: (type != null ? type.value : this.type),
        discipline: (discipline != null ? discipline.value : this.discipline),
        place: (place != null ? place.value : this.place),
        id: (id != null ? id.value : this.id),
        weekday: (weekday != null ? weekday.value : this.weekday),
        parity: (parity != null ? parity.value : this.parity),
        groupNames: (groupNames != null ? groupNames.value : this.groupNames),
        teacherNames:
            (teacherNames != null ? teacherNames.value : this.teacherNames));
  }
}

@JsonSerializable(explicitToJson: true)
class MainLessonCreate {
  MainLessonCreate({
    required this.number,
    required this.typeId,
    this.disciplineId,
    this.isRemotely,
    this.isElective,
    required this.groups,
    this.teachers,
    this.placeId,
    required this.semesterId,
    required this.weekday,
    this.parity,
    this.startDate,
    this.endDate,
  });

  factory MainLessonCreate.fromJson(Map<String, dynamic> json) =>
      _$MainLessonCreateFromJson(json);

  @JsonKey(name: 'number')
  final int number;
  @JsonKey(name: 'type_id')
  final int typeId;
  @JsonKey(name: 'discipline_id')
  final int? disciplineId;
  @JsonKey(name: 'is_remotely', defaultValue: false)
  final bool? isRemotely;
  @JsonKey(name: 'is_elective', defaultValue: false)
  final bool? isElective;
  @JsonKey(name: 'groups', defaultValue: <int>[])
  final List<int> groups;
  @JsonKey(name: 'teachers', defaultValue: <int>[])
  final List<int>? teachers;
  @JsonKey(name: 'place_id')
  final int? placeId;
  @JsonKey(name: 'semester_id')
  final int semesterId;
  @JsonKey(name: 'weekday')
  final int weekday;
  @JsonKey(name: 'parity')
  final int? parity;
  @JsonKey(name: 'start_date', toJson: _dateToJson)
  final DateTime? startDate;
  @JsonKey(name: 'end_date', toJson: _dateToJson)
  final DateTime? endDate;
  static const fromJsonFactory = _$MainLessonCreateFromJson;
  static const toJsonFactory = _$MainLessonCreateToJson;
  Map<String, dynamic> toJson() => _$MainLessonCreateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MainLessonCreate &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.typeId, typeId) ||
                const DeepCollectionEquality().equals(other.typeId, typeId)) &&
            (identical(other.disciplineId, disciplineId) ||
                const DeepCollectionEquality()
                    .equals(other.disciplineId, disciplineId)) &&
            (identical(other.isRemotely, isRemotely) ||
                const DeepCollectionEquality()
                    .equals(other.isRemotely, isRemotely)) &&
            (identical(other.isElective, isElective) ||
                const DeepCollectionEquality()
                    .equals(other.isElective, isElective)) &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)) &&
            (identical(other.teachers, teachers) ||
                const DeepCollectionEquality()
                    .equals(other.teachers, teachers)) &&
            (identical(other.placeId, placeId) ||
                const DeepCollectionEquality()
                    .equals(other.placeId, placeId)) &&
            (identical(other.semesterId, semesterId) ||
                const DeepCollectionEquality()
                    .equals(other.semesterId, semesterId)) &&
            (identical(other.weekday, weekday) ||
                const DeepCollectionEquality()
                    .equals(other.weekday, weekday)) &&
            (identical(other.parity, parity) ||
                const DeepCollectionEquality().equals(other.parity, parity)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality().equals(other.endDate, endDate)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(typeId) ^
      const DeepCollectionEquality().hash(disciplineId) ^
      const DeepCollectionEquality().hash(isRemotely) ^
      const DeepCollectionEquality().hash(isElective) ^
      const DeepCollectionEquality().hash(groups) ^
      const DeepCollectionEquality().hash(teachers) ^
      const DeepCollectionEquality().hash(placeId) ^
      const DeepCollectionEquality().hash(semesterId) ^
      const DeepCollectionEquality().hash(weekday) ^
      const DeepCollectionEquality().hash(parity) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      runtimeType.hashCode;
}

extension $MainLessonCreateExtension on MainLessonCreate {
  MainLessonCreate copyWith(
      {int? number,
      int? typeId,
      int? disciplineId,
      bool? isRemotely,
      bool? isElective,
      List<int>? groups,
      List<int>? teachers,
      int? placeId,
      int? semesterId,
      int? weekday,
      int? parity,
      DateTime? startDate,
      DateTime? endDate}) {
    return MainLessonCreate(
        number: number ?? this.number,
        typeId: typeId ?? this.typeId,
        disciplineId: disciplineId ?? this.disciplineId,
        isRemotely: isRemotely ?? this.isRemotely,
        isElective: isElective ?? this.isElective,
        groups: groups ?? this.groups,
        teachers: teachers ?? this.teachers,
        placeId: placeId ?? this.placeId,
        semesterId: semesterId ?? this.semesterId,
        weekday: weekday ?? this.weekday,
        parity: parity ?? this.parity,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate);
  }

  MainLessonCreate copyWithWrapped(
      {Wrapped<int>? number,
      Wrapped<int>? typeId,
      Wrapped<int?>? disciplineId,
      Wrapped<bool?>? isRemotely,
      Wrapped<bool?>? isElective,
      Wrapped<List<int>>? groups,
      Wrapped<List<int>?>? teachers,
      Wrapped<int?>? placeId,
      Wrapped<int>? semesterId,
      Wrapped<int>? weekday,
      Wrapped<int?>? parity,
      Wrapped<DateTime?>? startDate,
      Wrapped<DateTime?>? endDate}) {
    return MainLessonCreate(
        number: (number != null ? number.value : this.number),
        typeId: (typeId != null ? typeId.value : this.typeId),
        disciplineId:
            (disciplineId != null ? disciplineId.value : this.disciplineId),
        isRemotely: (isRemotely != null ? isRemotely.value : this.isRemotely),
        isElective: (isElective != null ? isElective.value : this.isElective),
        groups: (groups != null ? groups.value : this.groups),
        teachers: (teachers != null ? teachers.value : this.teachers),
        placeId: (placeId != null ? placeId.value : this.placeId),
        semesterId: (semesterId != null ? semesterId.value : this.semesterId),
        weekday: (weekday != null ? weekday.value : this.weekday),
        parity: (parity != null ? parity.value : this.parity),
        startDate: (startDate != null ? startDate.value : this.startDate),
        endDate: (endDate != null ? endDate.value : this.endDate));
  }
}

@JsonSerializable(explicitToJson: true)
class MainLessonCreateWithParams {
  MainLessonCreateWithParams({
    this.ignoreCollisions,
    this.notify,
    required this.lesson,
  });

  factory MainLessonCreateWithParams.fromJson(Map<String, dynamic> json) =>
      _$MainLessonCreateWithParamsFromJson(json);

  @JsonKey(name: 'ignore_collisions', defaultValue: false)
  final bool? ignoreCollisions;
  @JsonKey(name: 'notify', defaultValue: false)
  final bool? notify;
  @JsonKey(name: 'lesson')
  final MainLessonCreate lesson;
  static const fromJsonFactory = _$MainLessonCreateWithParamsFromJson;
  static const toJsonFactory = _$MainLessonCreateWithParamsToJson;
  Map<String, dynamic> toJson() => _$MainLessonCreateWithParamsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MainLessonCreateWithParams &&
            (identical(other.ignoreCollisions, ignoreCollisions) ||
                const DeepCollectionEquality()
                    .equals(other.ignoreCollisions, ignoreCollisions)) &&
            (identical(other.notify, notify) ||
                const DeepCollectionEquality().equals(other.notify, notify)) &&
            (identical(other.lesson, lesson) ||
                const DeepCollectionEquality().equals(other.lesson, lesson)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ignoreCollisions) ^
      const DeepCollectionEquality().hash(notify) ^
      const DeepCollectionEquality().hash(lesson) ^
      runtimeType.hashCode;
}

extension $MainLessonCreateWithParamsExtension on MainLessonCreateWithParams {
  MainLessonCreateWithParams copyWith(
      {bool? ignoreCollisions, bool? notify, MainLessonCreate? lesson}) {
    return MainLessonCreateWithParams(
        ignoreCollisions: ignoreCollisions ?? this.ignoreCollisions,
        notify: notify ?? this.notify,
        lesson: lesson ?? this.lesson);
  }

  MainLessonCreateWithParams copyWithWrapped(
      {Wrapped<bool?>? ignoreCollisions,
      Wrapped<bool?>? notify,
      Wrapped<MainLessonCreate>? lesson}) {
    return MainLessonCreateWithParams(
        ignoreCollisions: (ignoreCollisions != null
            ? ignoreCollisions.value
            : this.ignoreCollisions),
        notify: (notify != null ? notify.value : this.notify),
        lesson: (lesson != null ? lesson.value : this.lesson));
  }
}

@JsonSerializable(explicitToJson: true)
class MainLessonExport {
  MainLessonExport({
    required this.facultyId,
    this.semesterId,
    this.directions,
    this.profiles,
    this.courses,
    this.groups,
    this.extra,
  });

  factory MainLessonExport.fromJson(Map<String, dynamic> json) =>
      _$MainLessonExportFromJson(json);

  @JsonKey(name: 'faculty_id')
  final int facultyId;
  @JsonKey(name: 'semester_id')
  final int? semesterId;
  @JsonKey(name: 'directions', defaultValue: <int>[])
  final List<int>? directions;
  @JsonKey(name: 'profiles', defaultValue: <int>[])
  final List<int>? profiles;
  @JsonKey(name: 'courses', defaultValue: <int>[])
  final List<int>? courses;
  @JsonKey(name: 'groups', defaultValue: <int>[])
  final List<int>? groups;
  @JsonKey(name: 'extra')
  final ExportExtraInfo? extra;
  static const fromJsonFactory = _$MainLessonExportFromJson;
  static const toJsonFactory = _$MainLessonExportToJson;
  Map<String, dynamic> toJson() => _$MainLessonExportToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MainLessonExport &&
            (identical(other.facultyId, facultyId) ||
                const DeepCollectionEquality()
                    .equals(other.facultyId, facultyId)) &&
            (identical(other.semesterId, semesterId) ||
                const DeepCollectionEquality()
                    .equals(other.semesterId, semesterId)) &&
            (identical(other.directions, directions) ||
                const DeepCollectionEquality()
                    .equals(other.directions, directions)) &&
            (identical(other.profiles, profiles) ||
                const DeepCollectionEquality()
                    .equals(other.profiles, profiles)) &&
            (identical(other.courses, courses) ||
                const DeepCollectionEquality()
                    .equals(other.courses, courses)) &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)) &&
            (identical(other.extra, extra) ||
                const DeepCollectionEquality().equals(other.extra, extra)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(facultyId) ^
      const DeepCollectionEquality().hash(semesterId) ^
      const DeepCollectionEquality().hash(directions) ^
      const DeepCollectionEquality().hash(profiles) ^
      const DeepCollectionEquality().hash(courses) ^
      const DeepCollectionEquality().hash(groups) ^
      const DeepCollectionEquality().hash(extra) ^
      runtimeType.hashCode;
}

extension $MainLessonExportExtension on MainLessonExport {
  MainLessonExport copyWith(
      {int? facultyId,
      int? semesterId,
      List<int>? directions,
      List<int>? profiles,
      List<int>? courses,
      List<int>? groups,
      ExportExtraInfo? extra}) {
    return MainLessonExport(
        facultyId: facultyId ?? this.facultyId,
        semesterId: semesterId ?? this.semesterId,
        directions: directions ?? this.directions,
        profiles: profiles ?? this.profiles,
        courses: courses ?? this.courses,
        groups: groups ?? this.groups,
        extra: extra ?? this.extra);
  }

  MainLessonExport copyWithWrapped(
      {Wrapped<int>? facultyId,
      Wrapped<int?>? semesterId,
      Wrapped<List<int>?>? directions,
      Wrapped<List<int>?>? profiles,
      Wrapped<List<int>?>? courses,
      Wrapped<List<int>?>? groups,
      Wrapped<ExportExtraInfo?>? extra}) {
    return MainLessonExport(
        facultyId: (facultyId != null ? facultyId.value : this.facultyId),
        semesterId: (semesterId != null ? semesterId.value : this.semesterId),
        directions: (directions != null ? directions.value : this.directions),
        profiles: (profiles != null ? profiles.value : this.profiles),
        courses: (courses != null ? courses.value : this.courses),
        groups: (groups != null ? groups.value : this.groups),
        extra: (extra != null ? extra.value : this.extra));
  }
}

@JsonSerializable(explicitToJson: true)
class MainLessonFullWithRelated {
  MainLessonFullWithRelated({
    required this.number,
    required this.isRemotely,
    required this.isElective,
    required this.type,
    this.discipline,
    this.place,
    required this.id,
    required this.weekday,
    this.parity,
    this.startDate,
    this.endDate,
    this.groups,
    this.teachers,
    this.relatedLessons,
  });

  factory MainLessonFullWithRelated.fromJson(Map<String, dynamic> json) =>
      _$MainLessonFullWithRelatedFromJson(json);

  @JsonKey(name: 'number')
  final int number;
  @JsonKey(name: 'is_remotely')
  final bool isRemotely;
  @JsonKey(name: 'is_elective')
  final bool isElective;
  @JsonKey(name: 'type')
  final LessonTypeInDb type;
  @JsonKey(name: 'discipline')
  final DisciplineInDb? discipline;
  @JsonKey(name: 'place')
  final PlaceInDb? place;
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'weekday')
  final int weekday;
  @JsonKey(name: 'parity')
  final int? parity;
  @JsonKey(name: 'start_date', toJson: _dateToJson)
  final DateTime? startDate;
  @JsonKey(name: 'end_date', toJson: _dateToJson)
  final DateTime? endDate;
  @JsonKey(name: 'groups', defaultValue: <int>[])
  final List<int>? groups;
  @JsonKey(name: 'teachers', defaultValue: <int>[])
  final List<int>? teachers;
  @JsonKey(name: 'related_lessons', defaultValue: <LessonRelated>[])
  final List<LessonRelated>? relatedLessons;
  static const fromJsonFactory = _$MainLessonFullWithRelatedFromJson;
  static const toJsonFactory = _$MainLessonFullWithRelatedToJson;
  Map<String, dynamic> toJson() => _$MainLessonFullWithRelatedToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MainLessonFullWithRelated &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.isRemotely, isRemotely) ||
                const DeepCollectionEquality()
                    .equals(other.isRemotely, isRemotely)) &&
            (identical(other.isElective, isElective) ||
                const DeepCollectionEquality()
                    .equals(other.isElective, isElective)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.discipline, discipline) ||
                const DeepCollectionEquality()
                    .equals(other.discipline, discipline)) &&
            (identical(other.place, place) ||
                const DeepCollectionEquality().equals(other.place, place)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.weekday, weekday) ||
                const DeepCollectionEquality()
                    .equals(other.weekday, weekday)) &&
            (identical(other.parity, parity) ||
                const DeepCollectionEquality().equals(other.parity, parity)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)) &&
            (identical(other.teachers, teachers) ||
                const DeepCollectionEquality()
                    .equals(other.teachers, teachers)) &&
            (identical(other.relatedLessons, relatedLessons) ||
                const DeepCollectionEquality()
                    .equals(other.relatedLessons, relatedLessons)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(isRemotely) ^
      const DeepCollectionEquality().hash(isElective) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(discipline) ^
      const DeepCollectionEquality().hash(place) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(weekday) ^
      const DeepCollectionEquality().hash(parity) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(groups) ^
      const DeepCollectionEquality().hash(teachers) ^
      const DeepCollectionEquality().hash(relatedLessons) ^
      runtimeType.hashCode;
}

extension $MainLessonFullWithRelatedExtension on MainLessonFullWithRelated {
  MainLessonFullWithRelated copyWith(
      {int? number,
      bool? isRemotely,
      bool? isElective,
      LessonTypeInDb? type,
      DisciplineInDb? discipline,
      PlaceInDb? place,
      int? id,
      int? weekday,
      int? parity,
      DateTime? startDate,
      DateTime? endDate,
      List<int>? groups,
      List<int>? teachers,
      List<LessonRelated>? relatedLessons}) {
    return MainLessonFullWithRelated(
        number: number ?? this.number,
        isRemotely: isRemotely ?? this.isRemotely,
        isElective: isElective ?? this.isElective,
        type: type ?? this.type,
        discipline: discipline ?? this.discipline,
        place: place ?? this.place,
        id: id ?? this.id,
        weekday: weekday ?? this.weekday,
        parity: parity ?? this.parity,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        groups: groups ?? this.groups,
        teachers: teachers ?? this.teachers,
        relatedLessons: relatedLessons ?? this.relatedLessons);
  }

  MainLessonFullWithRelated copyWithWrapped(
      {Wrapped<int>? number,
      Wrapped<bool>? isRemotely,
      Wrapped<bool>? isElective,
      Wrapped<LessonTypeInDb>? type,
      Wrapped<DisciplineInDb?>? discipline,
      Wrapped<PlaceInDb?>? place,
      Wrapped<int>? id,
      Wrapped<int>? weekday,
      Wrapped<int?>? parity,
      Wrapped<DateTime?>? startDate,
      Wrapped<DateTime?>? endDate,
      Wrapped<List<int>?>? groups,
      Wrapped<List<int>?>? teachers,
      Wrapped<List<LessonRelated>?>? relatedLessons}) {
    return MainLessonFullWithRelated(
        number: (number != null ? number.value : this.number),
        isRemotely: (isRemotely != null ? isRemotely.value : this.isRemotely),
        isElective: (isElective != null ? isElective.value : this.isElective),
        type: (type != null ? type.value : this.type),
        discipline: (discipline != null ? discipline.value : this.discipline),
        place: (place != null ? place.value : this.place),
        id: (id != null ? id.value : this.id),
        weekday: (weekday != null ? weekday.value : this.weekday),
        parity: (parity != null ? parity.value : this.parity),
        startDate: (startDate != null ? startDate.value : this.startDate),
        endDate: (endDate != null ? endDate.value : this.endDate),
        groups: (groups != null ? groups.value : this.groups),
        teachers: (teachers != null ? teachers.value : this.teachers),
        relatedLessons: (relatedLessons != null
            ? relatedLessons.value
            : this.relatedLessons));
  }
}

@JsonSerializable(explicitToJson: true)
class MainLessonHistory {
  MainLessonHistory({
    required this.id,
    required this.user,
    required this.changes,
    required this.timestamp,
  });

  factory MainLessonHistory.fromJson(Map<String, dynamic> json) =>
      _$MainLessonHistoryFromJson(json);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'user')
  final AppSchemasUserUserFullNameInDb user;
  @JsonKey(name: 'changes', defaultValue: <MainLessonHistoryField>[])
  final List<MainLessonHistoryField> changes;
  @JsonKey(name: 'timestamp')
  final DateTime timestamp;
  static const fromJsonFactory = _$MainLessonHistoryFromJson;
  static const toJsonFactory = _$MainLessonHistoryToJson;
  Map<String, dynamic> toJson() => _$MainLessonHistoryToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MainLessonHistory &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.changes, changes) ||
                const DeepCollectionEquality()
                    .equals(other.changes, changes)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(changes) ^
      const DeepCollectionEquality().hash(timestamp) ^
      runtimeType.hashCode;
}

extension $MainLessonHistoryExtension on MainLessonHistory {
  MainLessonHistory copyWith(
      {int? id,
      AppSchemasUserUserFullNameInDb? user,
      List<MainLessonHistoryField>? changes,
      DateTime? timestamp}) {
    return MainLessonHistory(
        id: id ?? this.id,
        user: user ?? this.user,
        changes: changes ?? this.changes,
        timestamp: timestamp ?? this.timestamp);
  }

  MainLessonHistory copyWithWrapped(
      {Wrapped<int>? id,
      Wrapped<AppSchemasUserUserFullNameInDb>? user,
      Wrapped<List<MainLessonHistoryField>>? changes,
      Wrapped<DateTime>? timestamp}) {
    return MainLessonHistory(
        id: (id != null ? id.value : this.id),
        user: (user != null ? user.value : this.user),
        changes: (changes != null ? changes.value : this.changes),
        timestamp: (timestamp != null ? timestamp.value : this.timestamp));
  }
}

@JsonSerializable(explicitToJson: true)
class MainLessonHistoryField {
  MainLessonHistoryField({
    required this.field,
    this.newValue,
    this.oldValue,
  });

  factory MainLessonHistoryField.fromJson(Map<String, dynamic> json) =>
      _$MainLessonHistoryFieldFromJson(json);

  @JsonKey(
    name: 'field',
    toJson: historyFieldToJson,
    fromJson: historyFieldFromJson,
  )
  final enums.HistoryField field;
  @JsonKey(name: 'new_value')
  final String? newValue;
  @JsonKey(name: 'old_value')
  final String? oldValue;
  static const fromJsonFactory = _$MainLessonHistoryFieldFromJson;
  static const toJsonFactory = _$MainLessonHistoryFieldToJson;
  Map<String, dynamic> toJson() => _$MainLessonHistoryFieldToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MainLessonHistoryField &&
            (identical(other.field, field) ||
                const DeepCollectionEquality().equals(other.field, field)) &&
            (identical(other.newValue, newValue) ||
                const DeepCollectionEquality()
                    .equals(other.newValue, newValue)) &&
            (identical(other.oldValue, oldValue) ||
                const DeepCollectionEquality()
                    .equals(other.oldValue, oldValue)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(field) ^
      const DeepCollectionEquality().hash(newValue) ^
      const DeepCollectionEquality().hash(oldValue) ^
      runtimeType.hashCode;
}

extension $MainLessonHistoryFieldExtension on MainLessonHistoryField {
  MainLessonHistoryField copyWith(
      {enums.HistoryField? field, String? newValue, String? oldValue}) {
    return MainLessonHistoryField(
        field: field ?? this.field,
        newValue: newValue ?? this.newValue,
        oldValue: oldValue ?? this.oldValue);
  }

  MainLessonHistoryField copyWithWrapped(
      {Wrapped<enums.HistoryField>? field,
      Wrapped<String?>? newValue,
      Wrapped<String?>? oldValue}) {
    return MainLessonHistoryField(
        field: (field != null ? field.value : this.field),
        newValue: (newValue != null ? newValue.value : this.newValue),
        oldValue: (oldValue != null ? oldValue.value : this.oldValue));
  }
}

@JsonSerializable(explicitToJson: true)
class MainLessonInfo {
  MainLessonInfo({
    required this.number,
    required this.isRemotely,
    required this.isElective,
    required this.typeId,
    this.disciplineId,
    this.placeId,
    required this.id,
    required this.weekday,
    this.parity,
    this.startDate,
    this.endDate,
    this.groups,
    this.teachers,
  });

  factory MainLessonInfo.fromJson(Map<String, dynamic> json) =>
      _$MainLessonInfoFromJson(json);

  @JsonKey(name: 'number')
  final int number;
  @JsonKey(name: 'is_remotely')
  final bool isRemotely;
  @JsonKey(name: 'is_elective')
  final bool isElective;
  @JsonKey(name: 'type_id')
  final int typeId;
  @JsonKey(name: 'discipline_id')
  final int? disciplineId;
  @JsonKey(name: 'place_id')
  final int? placeId;
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'weekday')
  final int weekday;
  @JsonKey(name: 'parity')
  final int? parity;
  @JsonKey(name: 'start_date', toJson: _dateToJson)
  final DateTime? startDate;
  @JsonKey(name: 'end_date', toJson: _dateToJson)
  final DateTime? endDate;
  @JsonKey(name: 'groups', defaultValue: <int>[])
  final List<int>? groups;
  @JsonKey(name: 'teachers', defaultValue: <int>[])
  final List<int>? teachers;
  static const fromJsonFactory = _$MainLessonInfoFromJson;
  static const toJsonFactory = _$MainLessonInfoToJson;
  Map<String, dynamic> toJson() => _$MainLessonInfoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MainLessonInfo &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.isRemotely, isRemotely) ||
                const DeepCollectionEquality()
                    .equals(other.isRemotely, isRemotely)) &&
            (identical(other.isElective, isElective) ||
                const DeepCollectionEquality()
                    .equals(other.isElective, isElective)) &&
            (identical(other.typeId, typeId) ||
                const DeepCollectionEquality().equals(other.typeId, typeId)) &&
            (identical(other.disciplineId, disciplineId) ||
                const DeepCollectionEquality()
                    .equals(other.disciplineId, disciplineId)) &&
            (identical(other.placeId, placeId) ||
                const DeepCollectionEquality()
                    .equals(other.placeId, placeId)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.weekday, weekday) ||
                const DeepCollectionEquality()
                    .equals(other.weekday, weekday)) &&
            (identical(other.parity, parity) ||
                const DeepCollectionEquality().equals(other.parity, parity)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)) &&
            (identical(other.teachers, teachers) ||
                const DeepCollectionEquality()
                    .equals(other.teachers, teachers)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(isRemotely) ^
      const DeepCollectionEquality().hash(isElective) ^
      const DeepCollectionEquality().hash(typeId) ^
      const DeepCollectionEquality().hash(disciplineId) ^
      const DeepCollectionEquality().hash(placeId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(weekday) ^
      const DeepCollectionEquality().hash(parity) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(groups) ^
      const DeepCollectionEquality().hash(teachers) ^
      runtimeType.hashCode;
}

extension $MainLessonInfoExtension on MainLessonInfo {
  MainLessonInfo copyWith(
      {int? number,
      bool? isRemotely,
      bool? isElective,
      int? typeId,
      int? disciplineId,
      int? placeId,
      int? id,
      int? weekday,
      int? parity,
      DateTime? startDate,
      DateTime? endDate,
      List<int>? groups,
      List<int>? teachers}) {
    return MainLessonInfo(
        number: number ?? this.number,
        isRemotely: isRemotely ?? this.isRemotely,
        isElective: isElective ?? this.isElective,
        typeId: typeId ?? this.typeId,
        disciplineId: disciplineId ?? this.disciplineId,
        placeId: placeId ?? this.placeId,
        id: id ?? this.id,
        weekday: weekday ?? this.weekday,
        parity: parity ?? this.parity,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        groups: groups ?? this.groups,
        teachers: teachers ?? this.teachers);
  }

  MainLessonInfo copyWithWrapped(
      {Wrapped<int>? number,
      Wrapped<bool>? isRemotely,
      Wrapped<bool>? isElective,
      Wrapped<int>? typeId,
      Wrapped<int?>? disciplineId,
      Wrapped<int?>? placeId,
      Wrapped<int>? id,
      Wrapped<int>? weekday,
      Wrapped<int?>? parity,
      Wrapped<DateTime?>? startDate,
      Wrapped<DateTime?>? endDate,
      Wrapped<List<int>?>? groups,
      Wrapped<List<int>?>? teachers}) {
    return MainLessonInfo(
        number: (number != null ? number.value : this.number),
        isRemotely: (isRemotely != null ? isRemotely.value : this.isRemotely),
        isElective: (isElective != null ? isElective.value : this.isElective),
        typeId: (typeId != null ? typeId.value : this.typeId),
        disciplineId:
            (disciplineId != null ? disciplineId.value : this.disciplineId),
        placeId: (placeId != null ? placeId.value : this.placeId),
        id: (id != null ? id.value : this.id),
        weekday: (weekday != null ? weekday.value : this.weekday),
        parity: (parity != null ? parity.value : this.parity),
        startDate: (startDate != null ? startDate.value : this.startDate),
        endDate: (endDate != null ? endDate.value : this.endDate),
        groups: (groups != null ? groups.value : this.groups),
        teachers: (teachers != null ? teachers.value : this.teachers));
  }
}

@JsonSerializable(explicitToJson: true)
class MainLessonResults {
  MainLessonResults({
    required this.headerIds,
    required this.lessons,
    this.lastChange,
    this.mode,
  });

  factory MainLessonResults.fromJson(Map<String, dynamic> json) =>
      _$MainLessonResultsFromJson(json);

  @JsonKey(name: 'header_ids', defaultValue: <int>[])
  final List<int> headerIds;
  @JsonKey(name: 'lessons', defaultValue: <MainLessonInfo>[])
  final List<MainLessonInfo> lessons;
  @JsonKey(name: 'last_change')
  final LastChange? lastChange;
  @JsonKey(
    name: 'mode',
    toJson: viewModeToJson,
    fromJson: viewModeFromJson,
  )
  final enums.ViewMode? mode;
  static const fromJsonFactory = _$MainLessonResultsFromJson;
  static const toJsonFactory = _$MainLessonResultsToJson;
  Map<String, dynamic> toJson() => _$MainLessonResultsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MainLessonResults &&
            (identical(other.headerIds, headerIds) ||
                const DeepCollectionEquality()
                    .equals(other.headerIds, headerIds)) &&
            (identical(other.lessons, lessons) ||
                const DeepCollectionEquality()
                    .equals(other.lessons, lessons)) &&
            (identical(other.lastChange, lastChange) ||
                const DeepCollectionEquality()
                    .equals(other.lastChange, lastChange)) &&
            (identical(other.mode, mode) ||
                const DeepCollectionEquality().equals(other.mode, mode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(headerIds) ^
      const DeepCollectionEquality().hash(lessons) ^
      const DeepCollectionEquality().hash(lastChange) ^
      const DeepCollectionEquality().hash(mode) ^
      runtimeType.hashCode;
}

extension $MainLessonResultsExtension on MainLessonResults {
  MainLessonResults copyWith(
      {List<int>? headerIds,
      List<MainLessonInfo>? lessons,
      LastChange? lastChange,
      enums.ViewMode? mode}) {
    return MainLessonResults(
        headerIds: headerIds ?? this.headerIds,
        lessons: lessons ?? this.lessons,
        lastChange: lastChange ?? this.lastChange,
        mode: mode ?? this.mode);
  }

  MainLessonResults copyWithWrapped(
      {Wrapped<List<int>>? headerIds,
      Wrapped<List<MainLessonInfo>>? lessons,
      Wrapped<LastChange?>? lastChange,
      Wrapped<enums.ViewMode?>? mode}) {
    return MainLessonResults(
        headerIds: (headerIds != null ? headerIds.value : this.headerIds),
        lessons: (lessons != null ? lessons.value : this.lessons),
        lastChange: (lastChange != null ? lastChange.value : this.lastChange),
        mode: (mode != null ? mode.value : this.mode));
  }
}

@JsonSerializable(explicitToJson: true)
class MainLessonUpdate {
  MainLessonUpdate({
    this.disciplineId,
    this.number,
    this.typeId,
    this.isRemotely,
    this.isElective,
    this.groups,
    this.teachers,
    this.placeId,
    this.weekday,
    this.parity,
    this.startDate,
    this.endDate,
  });

  factory MainLessonUpdate.fromJson(Map<String, dynamic> json) =>
      _$MainLessonUpdateFromJson(json);

  @JsonKey(name: 'discipline_id')
  final int? disciplineId;
  @JsonKey(name: 'number')
  final int? number;
  @JsonKey(name: 'type_id')
  final int? typeId;
  @JsonKey(name: 'is_remotely', defaultValue: false)
  final bool? isRemotely;
  @JsonKey(name: 'is_elective', defaultValue: false)
  final bool? isElective;
  @JsonKey(name: 'groups', defaultValue: <int>[])
  final List<int>? groups;
  @JsonKey(name: 'teachers', defaultValue: <int>[])
  final List<int>? teachers;
  @JsonKey(name: 'place_id')
  final int? placeId;
  @JsonKey(name: 'weekday')
  final int? weekday;
  @JsonKey(name: 'parity')
  final int? parity;
  @JsonKey(name: 'start_date', toJson: _dateToJson)
  final DateTime? startDate;
  @JsonKey(name: 'end_date', toJson: _dateToJson)
  final DateTime? endDate;
  static const fromJsonFactory = _$MainLessonUpdateFromJson;
  static const toJsonFactory = _$MainLessonUpdateToJson;
  Map<String, dynamic> toJson() => _$MainLessonUpdateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MainLessonUpdate &&
            (identical(other.disciplineId, disciplineId) ||
                const DeepCollectionEquality()
                    .equals(other.disciplineId, disciplineId)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.typeId, typeId) ||
                const DeepCollectionEquality().equals(other.typeId, typeId)) &&
            (identical(other.isRemotely, isRemotely) ||
                const DeepCollectionEquality()
                    .equals(other.isRemotely, isRemotely)) &&
            (identical(other.isElective, isElective) ||
                const DeepCollectionEquality()
                    .equals(other.isElective, isElective)) &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)) &&
            (identical(other.teachers, teachers) ||
                const DeepCollectionEquality()
                    .equals(other.teachers, teachers)) &&
            (identical(other.placeId, placeId) ||
                const DeepCollectionEquality()
                    .equals(other.placeId, placeId)) &&
            (identical(other.weekday, weekday) ||
                const DeepCollectionEquality()
                    .equals(other.weekday, weekday)) &&
            (identical(other.parity, parity) ||
                const DeepCollectionEquality().equals(other.parity, parity)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality().equals(other.endDate, endDate)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(disciplineId) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(typeId) ^
      const DeepCollectionEquality().hash(isRemotely) ^
      const DeepCollectionEquality().hash(isElective) ^
      const DeepCollectionEquality().hash(groups) ^
      const DeepCollectionEquality().hash(teachers) ^
      const DeepCollectionEquality().hash(placeId) ^
      const DeepCollectionEquality().hash(weekday) ^
      const DeepCollectionEquality().hash(parity) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      runtimeType.hashCode;
}

extension $MainLessonUpdateExtension on MainLessonUpdate {
  MainLessonUpdate copyWith(
      {int? disciplineId,
      int? number,
      int? typeId,
      bool? isRemotely,
      bool? isElective,
      List<int>? groups,
      List<int>? teachers,
      int? placeId,
      int? weekday,
      int? parity,
      DateTime? startDate,
      DateTime? endDate}) {
    return MainLessonUpdate(
        disciplineId: disciplineId ?? this.disciplineId,
        number: number ?? this.number,
        typeId: typeId ?? this.typeId,
        isRemotely: isRemotely ?? this.isRemotely,
        isElective: isElective ?? this.isElective,
        groups: groups ?? this.groups,
        teachers: teachers ?? this.teachers,
        placeId: placeId ?? this.placeId,
        weekday: weekday ?? this.weekday,
        parity: parity ?? this.parity,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate);
  }

  MainLessonUpdate copyWithWrapped(
      {Wrapped<int?>? disciplineId,
      Wrapped<int?>? number,
      Wrapped<int?>? typeId,
      Wrapped<bool?>? isRemotely,
      Wrapped<bool?>? isElective,
      Wrapped<List<int>?>? groups,
      Wrapped<List<int>?>? teachers,
      Wrapped<int?>? placeId,
      Wrapped<int?>? weekday,
      Wrapped<int?>? parity,
      Wrapped<DateTime?>? startDate,
      Wrapped<DateTime?>? endDate}) {
    return MainLessonUpdate(
        disciplineId:
            (disciplineId != null ? disciplineId.value : this.disciplineId),
        number: (number != null ? number.value : this.number),
        typeId: (typeId != null ? typeId.value : this.typeId),
        isRemotely: (isRemotely != null ? isRemotely.value : this.isRemotely),
        isElective: (isElective != null ? isElective.value : this.isElective),
        groups: (groups != null ? groups.value : this.groups),
        teachers: (teachers != null ? teachers.value : this.teachers),
        placeId: (placeId != null ? placeId.value : this.placeId),
        weekday: (weekday != null ? weekday.value : this.weekday),
        parity: (parity != null ? parity.value : this.parity),
        startDate: (startDate != null ? startDate.value : this.startDate),
        endDate: (endDate != null ? endDate.value : this.endDate));
  }
}

@JsonSerializable(explicitToJson: true)
class MainLessonUpdateWithParams {
  MainLessonUpdateWithParams({
    this.ignoreCollisions,
    this.notify,
    required this.lesson,
  });

  factory MainLessonUpdateWithParams.fromJson(Map<String, dynamic> json) =>
      _$MainLessonUpdateWithParamsFromJson(json);

  @JsonKey(name: 'ignore_collisions', defaultValue: false)
  final bool? ignoreCollisions;
  @JsonKey(name: 'notify', defaultValue: false)
  final bool? notify;
  @JsonKey(name: 'lesson')
  final MainLessonUpdate lesson;
  static const fromJsonFactory = _$MainLessonUpdateWithParamsFromJson;
  static const toJsonFactory = _$MainLessonUpdateWithParamsToJson;
  Map<String, dynamic> toJson() => _$MainLessonUpdateWithParamsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MainLessonUpdateWithParams &&
            (identical(other.ignoreCollisions, ignoreCollisions) ||
                const DeepCollectionEquality()
                    .equals(other.ignoreCollisions, ignoreCollisions)) &&
            (identical(other.notify, notify) ||
                const DeepCollectionEquality().equals(other.notify, notify)) &&
            (identical(other.lesson, lesson) ||
                const DeepCollectionEquality().equals(other.lesson, lesson)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ignoreCollisions) ^
      const DeepCollectionEquality().hash(notify) ^
      const DeepCollectionEquality().hash(lesson) ^
      runtimeType.hashCode;
}

extension $MainLessonUpdateWithParamsExtension on MainLessonUpdateWithParams {
  MainLessonUpdateWithParams copyWith(
      {bool? ignoreCollisions, bool? notify, MainLessonUpdate? lesson}) {
    return MainLessonUpdateWithParams(
        ignoreCollisions: ignoreCollisions ?? this.ignoreCollisions,
        notify: notify ?? this.notify,
        lesson: lesson ?? this.lesson);
  }

  MainLessonUpdateWithParams copyWithWrapped(
      {Wrapped<bool?>? ignoreCollisions,
      Wrapped<bool?>? notify,
      Wrapped<MainLessonUpdate>? lesson}) {
    return MainLessonUpdateWithParams(
        ignoreCollisions: (ignoreCollisions != null
            ? ignoreCollisions.value
            : this.ignoreCollisions),
        notify: (notify != null ? notify.value : this.notify),
        lesson: (lesson != null ? lesson.value : this.lesson));
  }
}

@JsonSerializable(explicitToJson: true)
class MainLessonWithRelated {
  MainLessonWithRelated({
    required this.number,
    required this.isRemotely,
    required this.isElective,
    required this.typeId,
    this.disciplineId,
    this.placeId,
    required this.id,
    required this.weekday,
    this.parity,
    this.startDate,
    this.endDate,
    this.groups,
    this.teachers,
    this.relatedLessons,
  });

  factory MainLessonWithRelated.fromJson(Map<String, dynamic> json) =>
      _$MainLessonWithRelatedFromJson(json);

  @JsonKey(name: 'number')
  final int number;
  @JsonKey(name: 'is_remotely')
  final bool isRemotely;
  @JsonKey(name: 'is_elective')
  final bool isElective;
  @JsonKey(name: 'type_id')
  final int typeId;
  @JsonKey(name: 'discipline_id')
  final int? disciplineId;
  @JsonKey(name: 'place_id')
  final int? placeId;
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'weekday')
  final int weekday;
  @JsonKey(name: 'parity')
  final int? parity;
  @JsonKey(name: 'start_date', toJson: _dateToJson)
  final DateTime? startDate;
  @JsonKey(name: 'end_date', toJson: _dateToJson)
  final DateTime? endDate;
  @JsonKey(name: 'groups', defaultValue: <int>[])
  final List<int>? groups;
  @JsonKey(name: 'teachers', defaultValue: <int>[])
  final List<int>? teachers;
  @JsonKey(name: 'related_lessons', defaultValue: <LessonRelated>[])
  final List<LessonRelated>? relatedLessons;
  static const fromJsonFactory = _$MainLessonWithRelatedFromJson;
  static const toJsonFactory = _$MainLessonWithRelatedToJson;
  Map<String, dynamic> toJson() => _$MainLessonWithRelatedToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MainLessonWithRelated &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.isRemotely, isRemotely) ||
                const DeepCollectionEquality()
                    .equals(other.isRemotely, isRemotely)) &&
            (identical(other.isElective, isElective) ||
                const DeepCollectionEquality()
                    .equals(other.isElective, isElective)) &&
            (identical(other.typeId, typeId) ||
                const DeepCollectionEquality().equals(other.typeId, typeId)) &&
            (identical(other.disciplineId, disciplineId) ||
                const DeepCollectionEquality()
                    .equals(other.disciplineId, disciplineId)) &&
            (identical(other.placeId, placeId) ||
                const DeepCollectionEquality()
                    .equals(other.placeId, placeId)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.weekday, weekday) ||
                const DeepCollectionEquality()
                    .equals(other.weekday, weekday)) &&
            (identical(other.parity, parity) ||
                const DeepCollectionEquality().equals(other.parity, parity)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)) &&
            (identical(other.teachers, teachers) ||
                const DeepCollectionEquality()
                    .equals(other.teachers, teachers)) &&
            (identical(other.relatedLessons, relatedLessons) ||
                const DeepCollectionEquality()
                    .equals(other.relatedLessons, relatedLessons)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(isRemotely) ^
      const DeepCollectionEquality().hash(isElective) ^
      const DeepCollectionEquality().hash(typeId) ^
      const DeepCollectionEquality().hash(disciplineId) ^
      const DeepCollectionEquality().hash(placeId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(weekday) ^
      const DeepCollectionEquality().hash(parity) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(groups) ^
      const DeepCollectionEquality().hash(teachers) ^
      const DeepCollectionEquality().hash(relatedLessons) ^
      runtimeType.hashCode;
}

extension $MainLessonWithRelatedExtension on MainLessonWithRelated {
  MainLessonWithRelated copyWith(
      {int? number,
      bool? isRemotely,
      bool? isElective,
      int? typeId,
      int? disciplineId,
      int? placeId,
      int? id,
      int? weekday,
      int? parity,
      DateTime? startDate,
      DateTime? endDate,
      List<int>? groups,
      List<int>? teachers,
      List<LessonRelated>? relatedLessons}) {
    return MainLessonWithRelated(
        number: number ?? this.number,
        isRemotely: isRemotely ?? this.isRemotely,
        isElective: isElective ?? this.isElective,
        typeId: typeId ?? this.typeId,
        disciplineId: disciplineId ?? this.disciplineId,
        placeId: placeId ?? this.placeId,
        id: id ?? this.id,
        weekday: weekday ?? this.weekday,
        parity: parity ?? this.parity,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        groups: groups ?? this.groups,
        teachers: teachers ?? this.teachers,
        relatedLessons: relatedLessons ?? this.relatedLessons);
  }

  MainLessonWithRelated copyWithWrapped(
      {Wrapped<int>? number,
      Wrapped<bool>? isRemotely,
      Wrapped<bool>? isElective,
      Wrapped<int>? typeId,
      Wrapped<int?>? disciplineId,
      Wrapped<int?>? placeId,
      Wrapped<int>? id,
      Wrapped<int>? weekday,
      Wrapped<int?>? parity,
      Wrapped<DateTime?>? startDate,
      Wrapped<DateTime?>? endDate,
      Wrapped<List<int>?>? groups,
      Wrapped<List<int>?>? teachers,
      Wrapped<List<LessonRelated>?>? relatedLessons}) {
    return MainLessonWithRelated(
        number: (number != null ? number.value : this.number),
        isRemotely: (isRemotely != null ? isRemotely.value : this.isRemotely),
        isElective: (isElective != null ? isElective.value : this.isElective),
        typeId: (typeId != null ? typeId.value : this.typeId),
        disciplineId:
            (disciplineId != null ? disciplineId.value : this.disciplineId),
        placeId: (placeId != null ? placeId.value : this.placeId),
        id: (id != null ? id.value : this.id),
        weekday: (weekday != null ? weekday.value : this.weekday),
        parity: (parity != null ? parity.value : this.parity),
        startDate: (startDate != null ? startDate.value : this.startDate),
        endDate: (endDate != null ? endDate.value : this.endDate),
        groups: (groups != null ? groups.value : this.groups),
        teachers: (teachers != null ? teachers.value : this.teachers),
        relatedLessons: (relatedLessons != null
            ? relatedLessons.value
            : this.relatedLessons));
  }
}

@JsonSerializable(explicitToJson: true)
class PageLog {
  PageLog({
    required this.items,
    required this.total,
    required this.page,
    required this.size,
  });

  factory PageLog.fromJson(Map<String, dynamic> json) =>
      _$PageLogFromJson(json);

  @JsonKey(name: 'items', defaultValue: <Log>[])
  final List<Log> items;
  @JsonKey(name: 'total')
  final int total;
  @JsonKey(name: 'page')
  final int page;
  @JsonKey(name: 'size')
  final int size;
  static const fromJsonFactory = _$PageLogFromJson;
  static const toJsonFactory = _$PageLogToJson;
  Map<String, dynamic> toJson() => _$PageLogToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PageLog &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(size) ^
      runtimeType.hashCode;
}

extension $PageLogExtension on PageLog {
  PageLog copyWith({List<Log>? items, int? total, int? page, int? size}) {
    return PageLog(
        items: items ?? this.items,
        total: total ?? this.total,
        page: page ?? this.page,
        size: size ?? this.size);
  }

  PageLog copyWithWrapped(
      {Wrapped<List<Log>>? items,
      Wrapped<int>? total,
      Wrapped<int>? page,
      Wrapped<int>? size}) {
    return PageLog(
        items: (items != null ? items.value : this.items),
        total: (total != null ? total.value : this.total),
        page: (page != null ? page.value : this.page),
        size: (size != null ? size.value : this.size));
  }
}

@JsonSerializable(explicitToJson: true)
class PageStudentShortInDb {
  PageStudentShortInDb({
    required this.items,
    required this.total,
    required this.page,
    required this.size,
  });

  factory PageStudentShortInDb.fromJson(Map<String, dynamic> json) =>
      _$PageStudentShortInDbFromJson(json);

  @JsonKey(name: 'items', defaultValue: <StudentShortInDb>[])
  final List<StudentShortInDb> items;
  @JsonKey(name: 'total')
  final int total;
  @JsonKey(name: 'page')
  final int page;
  @JsonKey(name: 'size')
  final int size;
  static const fromJsonFactory = _$PageStudentShortInDbFromJson;
  static const toJsonFactory = _$PageStudentShortInDbToJson;
  Map<String, dynamic> toJson() => _$PageStudentShortInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PageStudentShortInDb &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(size) ^
      runtimeType.hashCode;
}

extension $PageStudentShortInDbExtension on PageStudentShortInDb {
  PageStudentShortInDb copyWith(
      {List<StudentShortInDb>? items, int? total, int? page, int? size}) {
    return PageStudentShortInDb(
        items: items ?? this.items,
        total: total ?? this.total,
        page: page ?? this.page,
        size: size ?? this.size);
  }

  PageStudentShortInDb copyWithWrapped(
      {Wrapped<List<StudentShortInDb>>? items,
      Wrapped<int>? total,
      Wrapped<int>? page,
      Wrapped<int>? size}) {
    return PageStudentShortInDb(
        items: (items != null ? items.value : this.items),
        total: (total != null ? total.value : this.total),
        page: (page != null ? page.value : this.page),
        size: (size != null ? size.value : this.size));
  }
}

@JsonSerializable(explicitToJson: true)
class PageUserFullInDb {
  PageUserFullInDb({
    required this.items,
    required this.total,
    required this.page,
    required this.size,
  });

  factory PageUserFullInDb.fromJson(Map<String, dynamic> json) =>
      _$PageUserFullInDbFromJson(json);

  @JsonKey(name: 'items', defaultValue: <UserFullInDb>[])
  final List<UserFullInDb> items;
  @JsonKey(name: 'total')
  final int total;
  @JsonKey(name: 'page')
  final int page;
  @JsonKey(name: 'size')
  final int size;
  static const fromJsonFactory = _$PageUserFullInDbFromJson;
  static const toJsonFactory = _$PageUserFullInDbToJson;
  Map<String, dynamic> toJson() => _$PageUserFullInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PageUserFullInDb &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(size) ^
      runtimeType.hashCode;
}

extension $PageUserFullInDbExtension on PageUserFullInDb {
  PageUserFullInDb copyWith(
      {List<UserFullInDb>? items, int? total, int? page, int? size}) {
    return PageUserFullInDb(
        items: items ?? this.items,
        total: total ?? this.total,
        page: page ?? this.page,
        size: size ?? this.size);
  }

  PageUserFullInDb copyWithWrapped(
      {Wrapped<List<UserFullInDb>>? items,
      Wrapped<int>? total,
      Wrapped<int>? page,
      Wrapped<int>? size}) {
    return PageUserFullInDb(
        items: (items != null ? items.value : this.items),
        total: (total != null ? total.value : this.total),
        page: (page != null ? page.value : this.page),
        size: (size != null ? size.value : this.size));
  }
}

@JsonSerializable(explicitToJson: true)
class PersonCreate {
  PersonCreate({
    this.middleName,
    this.gender,
    this.birthday,
    required this.firstName,
    required this.lastName,
  });

  factory PersonCreate.fromJson(Map<String, dynamic> json) =>
      _$PersonCreateFromJson(json);

  @JsonKey(name: 'middle_name')
  final String? middleName;
  @JsonKey(name: 'gender')
  final bool? gender;
  @JsonKey(name: 'birthday', toJson: _dateToJson)
  final DateTime? birthday;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  static const fromJsonFactory = _$PersonCreateFromJson;
  static const toJsonFactory = _$PersonCreateToJson;
  Map<String, dynamic> toJson() => _$PersonCreateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PersonCreate &&
            (identical(other.middleName, middleName) ||
                const DeepCollectionEquality()
                    .equals(other.middleName, middleName)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.birthday, birthday) ||
                const DeepCollectionEquality()
                    .equals(other.birthday, birthday)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(middleName) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(birthday) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      runtimeType.hashCode;
}

extension $PersonCreateExtension on PersonCreate {
  PersonCreate copyWith(
      {String? middleName,
      bool? gender,
      DateTime? birthday,
      String? firstName,
      String? lastName}) {
    return PersonCreate(
        middleName: middleName ?? this.middleName,
        gender: gender ?? this.gender,
        birthday: birthday ?? this.birthday,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName);
  }

  PersonCreate copyWithWrapped(
      {Wrapped<String?>? middleName,
      Wrapped<bool?>? gender,
      Wrapped<DateTime?>? birthday,
      Wrapped<String>? firstName,
      Wrapped<String>? lastName}) {
    return PersonCreate(
        middleName: (middleName != null ? middleName.value : this.middleName),
        gender: (gender != null ? gender.value : this.gender),
        birthday: (birthday != null ? birthday.value : this.birthday),
        firstName: (firstName != null ? firstName.value : this.firstName),
        lastName: (lastName != null ? lastName.value : this.lastName));
  }
}

@JsonSerializable(explicitToJson: true)
class PersonFullName {
  PersonFullName({
    required this.fullName,
  });

  factory PersonFullName.fromJson(Map<String, dynamic> json) =>
      _$PersonFullNameFromJson(json);

  @JsonKey(name: 'full_name')
  final String fullName;
  static const fromJsonFactory = _$PersonFullNameFromJson;
  static const toJsonFactory = _$PersonFullNameToJson;
  Map<String, dynamic> toJson() => _$PersonFullNameToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PersonFullName &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(fullName) ^ runtimeType.hashCode;
}

extension $PersonFullNameExtension on PersonFullName {
  PersonFullName copyWith({String? fullName}) {
    return PersonFullName(fullName: fullName ?? this.fullName);
  }

  PersonFullName copyWithWrapped({Wrapped<String>? fullName}) {
    return PersonFullName(
        fullName: (fullName != null ? fullName.value : this.fullName));
  }
}

@JsonSerializable(explicitToJson: true)
class PersonInDb {
  PersonInDb({
    required this.fullName,
    required this.firstName,
    required this.lastName,
    this.middleName,
    required this.type,
    this.gender,
    this.birthday,
    required this.id,
  });

  factory PersonInDb.fromJson(Map<String, dynamic> json) =>
      _$PersonInDbFromJson(json);

  @JsonKey(name: 'full_name')
  final String fullName;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  @JsonKey(name: 'middle_name')
  final String? middleName;
  @JsonKey(
    name: 'type',
    toJson: personTypeToJson,
    fromJson: personTypeFromJson,
  )
  final enums.PersonType type;
  @JsonKey(name: 'gender')
  final bool? gender;
  @JsonKey(name: 'birthday', toJson: _dateToJson)
  final DateTime? birthday;
  @JsonKey(name: 'id')
  final int id;
  static const fromJsonFactory = _$PersonInDbFromJson;
  static const toJsonFactory = _$PersonInDbToJson;
  Map<String, dynamic> toJson() => _$PersonInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PersonInDb &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.middleName, middleName) ||
                const DeepCollectionEquality()
                    .equals(other.middleName, middleName)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.birthday, birthday) ||
                const DeepCollectionEquality()
                    .equals(other.birthday, birthday)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(middleName) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(birthday) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $PersonInDbExtension on PersonInDb {
  PersonInDb copyWith(
      {String? fullName,
      String? firstName,
      String? lastName,
      String? middleName,
      enums.PersonType? type,
      bool? gender,
      DateTime? birthday,
      int? id}) {
    return PersonInDb(
        fullName: fullName ?? this.fullName,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        middleName: middleName ?? this.middleName,
        type: type ?? this.type,
        gender: gender ?? this.gender,
        birthday: birthday ?? this.birthday,
        id: id ?? this.id);
  }

  PersonInDb copyWithWrapped(
      {Wrapped<String>? fullName,
      Wrapped<String>? firstName,
      Wrapped<String>? lastName,
      Wrapped<String?>? middleName,
      Wrapped<enums.PersonType>? type,
      Wrapped<bool?>? gender,
      Wrapped<DateTime?>? birthday,
      Wrapped<int>? id}) {
    return PersonInDb(
        fullName: (fullName != null ? fullName.value : this.fullName),
        firstName: (firstName != null ? firstName.value : this.firstName),
        lastName: (lastName != null ? lastName.value : this.lastName),
        middleName: (middleName != null ? middleName.value : this.middleName),
        type: (type != null ? type.value : this.type),
        gender: (gender != null ? gender.value : this.gender),
        birthday: (birthday != null ? birthday.value : this.birthday),
        id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class PersonShortInDb {
  PersonShortInDb({
    required this.firstName,
    required this.lastName,
    this.middleName,
    required this.id,
  });

  factory PersonShortInDb.fromJson(Map<String, dynamic> json) =>
      _$PersonShortInDbFromJson(json);

  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  @JsonKey(name: 'middle_name')
  final String? middleName;
  @JsonKey(name: 'id')
  final int id;
  static const fromJsonFactory = _$PersonShortInDbFromJson;
  static const toJsonFactory = _$PersonShortInDbToJson;
  Map<String, dynamic> toJson() => _$PersonShortInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PersonShortInDb &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.middleName, middleName) ||
                const DeepCollectionEquality()
                    .equals(other.middleName, middleName)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(middleName) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $PersonShortInDbExtension on PersonShortInDb {
  PersonShortInDb copyWith(
      {String? firstName, String? lastName, String? middleName, int? id}) {
    return PersonShortInDb(
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        middleName: middleName ?? this.middleName,
        id: id ?? this.id);
  }

  PersonShortInDb copyWithWrapped(
      {Wrapped<String>? firstName,
      Wrapped<String>? lastName,
      Wrapped<String?>? middleName,
      Wrapped<int>? id}) {
    return PersonShortInDb(
        firstName: (firstName != null ? firstName.value : this.firstName),
        lastName: (lastName != null ? lastName.value : this.lastName),
        middleName: (middleName != null ? middleName.value : this.middleName),
        id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class PersonUpdate {
  PersonUpdate({
    this.middleName,
    this.gender,
    this.birthday,
    this.firstName,
    this.lastName,
  });

  factory PersonUpdate.fromJson(Map<String, dynamic> json) =>
      _$PersonUpdateFromJson(json);

  @JsonKey(name: 'middle_name')
  final String? middleName;
  @JsonKey(name: 'gender')
  final bool? gender;
  @JsonKey(name: 'birthday', toJson: _dateToJson)
  final DateTime? birthday;
  @JsonKey(name: 'first_name')
  final String? firstName;
  @JsonKey(name: 'last_name')
  final String? lastName;
  static const fromJsonFactory = _$PersonUpdateFromJson;
  static const toJsonFactory = _$PersonUpdateToJson;
  Map<String, dynamic> toJson() => _$PersonUpdateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PersonUpdate &&
            (identical(other.middleName, middleName) ||
                const DeepCollectionEquality()
                    .equals(other.middleName, middleName)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.birthday, birthday) ||
                const DeepCollectionEquality()
                    .equals(other.birthday, birthday)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(middleName) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(birthday) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      runtimeType.hashCode;
}

extension $PersonUpdateExtension on PersonUpdate {
  PersonUpdate copyWith(
      {String? middleName,
      bool? gender,
      DateTime? birthday,
      String? firstName,
      String? lastName}) {
    return PersonUpdate(
        middleName: middleName ?? this.middleName,
        gender: gender ?? this.gender,
        birthday: birthday ?? this.birthday,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName);
  }

  PersonUpdate copyWithWrapped(
      {Wrapped<String?>? middleName,
      Wrapped<bool?>? gender,
      Wrapped<DateTime?>? birthday,
      Wrapped<String?>? firstName,
      Wrapped<String?>? lastName}) {
    return PersonUpdate(
        middleName: (middleName != null ? middleName.value : this.middleName),
        gender: (gender != null ? gender.value : this.gender),
        birthday: (birthday != null ? birthday.value : this.birthday),
        firstName: (firstName != null ? firstName.value : this.firstName),
        lastName: (lastName != null ? lastName.value : this.lastName));
  }
}

@JsonSerializable(explicitToJson: true)
class PlaceCreate {
  PlaceCreate({
    required this.address,
    required this.name,
    this.size,
    this.facultyId,
    this.equipments,
  });

  factory PlaceCreate.fromJson(Map<String, dynamic> json) =>
      _$PlaceCreateFromJson(json);

  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'size')
  final int? size;
  @JsonKey(name: 'faculty_id')
  final int? facultyId;
  @JsonKey(name: 'equipments', defaultValue: <PlaceEquipmentShortInfo>[])
  final List<PlaceEquipmentShortInfo>? equipments;
  static const fromJsonFactory = _$PlaceCreateFromJson;
  static const toJsonFactory = _$PlaceCreateToJson;
  Map<String, dynamic> toJson() => _$PlaceCreateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlaceCreate &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.facultyId, facultyId) ||
                const DeepCollectionEquality()
                    .equals(other.facultyId, facultyId)) &&
            (identical(other.equipments, equipments) ||
                const DeepCollectionEquality()
                    .equals(other.equipments, equipments)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(facultyId) ^
      const DeepCollectionEquality().hash(equipments) ^
      runtimeType.hashCode;
}

extension $PlaceCreateExtension on PlaceCreate {
  PlaceCreate copyWith(
      {String? address,
      String? name,
      int? size,
      int? facultyId,
      List<PlaceEquipmentShortInfo>? equipments}) {
    return PlaceCreate(
        address: address ?? this.address,
        name: name ?? this.name,
        size: size ?? this.size,
        facultyId: facultyId ?? this.facultyId,
        equipments: equipments ?? this.equipments);
  }

  PlaceCreate copyWithWrapped(
      {Wrapped<String>? address,
      Wrapped<String>? name,
      Wrapped<int?>? size,
      Wrapped<int?>? facultyId,
      Wrapped<List<PlaceEquipmentShortInfo>?>? equipments}) {
    return PlaceCreate(
        address: (address != null ? address.value : this.address),
        name: (name != null ? name.value : this.name),
        size: (size != null ? size.value : this.size),
        facultyId: (facultyId != null ? facultyId.value : this.facultyId),
        equipments: (equipments != null ? equipments.value : this.equipments));
  }
}

@JsonSerializable(explicitToJson: true)
class PlaceEquipmentInfo {
  PlaceEquipmentInfo({
    required this.equipment,
    this.amount,
  });

  factory PlaceEquipmentInfo.fromJson(Map<String, dynamic> json) =>
      _$PlaceEquipmentInfoFromJson(json);

  @JsonKey(name: 'equipment')
  final EquipmentInDb equipment;
  @JsonKey(name: 'amount')
  final int? amount;
  static const fromJsonFactory = _$PlaceEquipmentInfoFromJson;
  static const toJsonFactory = _$PlaceEquipmentInfoToJson;
  Map<String, dynamic> toJson() => _$PlaceEquipmentInfoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlaceEquipmentInfo &&
            (identical(other.equipment, equipment) ||
                const DeepCollectionEquality()
                    .equals(other.equipment, equipment)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(equipment) ^
      const DeepCollectionEquality().hash(amount) ^
      runtimeType.hashCode;
}

extension $PlaceEquipmentInfoExtension on PlaceEquipmentInfo {
  PlaceEquipmentInfo copyWith({EquipmentInDb? equipment, int? amount}) {
    return PlaceEquipmentInfo(
        equipment: equipment ?? this.equipment, amount: amount ?? this.amount);
  }

  PlaceEquipmentInfo copyWithWrapped(
      {Wrapped<EquipmentInDb>? equipment, Wrapped<int?>? amount}) {
    return PlaceEquipmentInfo(
        equipment: (equipment != null ? equipment.value : this.equipment),
        amount: (amount != null ? amount.value : this.amount));
  }
}

@JsonSerializable(explicitToJson: true)
class PlaceEquipmentShortInfo {
  PlaceEquipmentShortInfo({
    required this.equipmentId,
    this.amount,
  });

  factory PlaceEquipmentShortInfo.fromJson(Map<String, dynamic> json) =>
      _$PlaceEquipmentShortInfoFromJson(json);

  @JsonKey(name: 'equipment_id')
  final int equipmentId;
  @JsonKey(name: 'amount')
  final int? amount;
  static const fromJsonFactory = _$PlaceEquipmentShortInfoFromJson;
  static const toJsonFactory = _$PlaceEquipmentShortInfoToJson;
  Map<String, dynamic> toJson() => _$PlaceEquipmentShortInfoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlaceEquipmentShortInfo &&
            (identical(other.equipmentId, equipmentId) ||
                const DeepCollectionEquality()
                    .equals(other.equipmentId, equipmentId)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(equipmentId) ^
      const DeepCollectionEquality().hash(amount) ^
      runtimeType.hashCode;
}

extension $PlaceEquipmentShortInfoExtension on PlaceEquipmentShortInfo {
  PlaceEquipmentShortInfo copyWith({int? equipmentId, int? amount}) {
    return PlaceEquipmentShortInfo(
        equipmentId: equipmentId ?? this.equipmentId,
        amount: amount ?? this.amount);
  }

  PlaceEquipmentShortInfo copyWithWrapped(
      {Wrapped<int>? equipmentId, Wrapped<int?>? amount}) {
    return PlaceEquipmentShortInfo(
        equipmentId:
            (equipmentId != null ? equipmentId.value : this.equipmentId),
        amount: (amount != null ? amount.value : this.amount));
  }
}

@JsonSerializable(explicitToJson: true)
class PlaceExport {
  PlaceExport({
    this.facultyId,
  });

  factory PlaceExport.fromJson(Map<String, dynamic> json) =>
      _$PlaceExportFromJson(json);

  @JsonKey(name: 'faculty_id')
  final int? facultyId;
  static const fromJsonFactory = _$PlaceExportFromJson;
  static const toJsonFactory = _$PlaceExportToJson;
  Map<String, dynamic> toJson() => _$PlaceExportToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlaceExport &&
            (identical(other.facultyId, facultyId) ||
                const DeepCollectionEquality()
                    .equals(other.facultyId, facultyId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(facultyId) ^ runtimeType.hashCode;
}

extension $PlaceExportExtension on PlaceExport {
  PlaceExport copyWith({int? facultyId}) {
    return PlaceExport(facultyId: facultyId ?? this.facultyId);
  }

  PlaceExport copyWithWrapped({Wrapped<int?>? facultyId}) {
    return PlaceExport(
        facultyId: (facultyId != null ? facultyId.value : this.facultyId));
  }
}

@JsonSerializable(explicitToJson: true)
class PlaceInDb {
  PlaceInDb({
    required this.address,
    required this.name,
    this.facultyId,
    this.size,
    this.placeEquipments,
    required this.id,
  });

  factory PlaceInDb.fromJson(Map<String, dynamic> json) =>
      _$PlaceInDbFromJson(json);

  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'faculty_id')
  final int? facultyId;
  @JsonKey(name: 'size')
  final int? size;
  @JsonKey(name: 'place_equipments', defaultValue: <PlaceEquipmentInfo>[])
  final List<PlaceEquipmentInfo>? placeEquipments;
  @JsonKey(name: 'id')
  final int id;
  static const fromJsonFactory = _$PlaceInDbFromJson;
  static const toJsonFactory = _$PlaceInDbToJson;
  Map<String, dynamic> toJson() => _$PlaceInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlaceInDb &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.facultyId, facultyId) ||
                const DeepCollectionEquality()
                    .equals(other.facultyId, facultyId)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.placeEquipments, placeEquipments) ||
                const DeepCollectionEquality()
                    .equals(other.placeEquipments, placeEquipments)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(facultyId) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(placeEquipments) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $PlaceInDbExtension on PlaceInDb {
  PlaceInDb copyWith(
      {String? address,
      String? name,
      int? facultyId,
      int? size,
      List<PlaceEquipmentInfo>? placeEquipments,
      int? id}) {
    return PlaceInDb(
        address: address ?? this.address,
        name: name ?? this.name,
        facultyId: facultyId ?? this.facultyId,
        size: size ?? this.size,
        placeEquipments: placeEquipments ?? this.placeEquipments,
        id: id ?? this.id);
  }

  PlaceInDb copyWithWrapped(
      {Wrapped<String>? address,
      Wrapped<String>? name,
      Wrapped<int?>? facultyId,
      Wrapped<int?>? size,
      Wrapped<List<PlaceEquipmentInfo>?>? placeEquipments,
      Wrapped<int>? id}) {
    return PlaceInDb(
        address: (address != null ? address.value : this.address),
        name: (name != null ? name.value : this.name),
        facultyId: (facultyId != null ? facultyId.value : this.facultyId),
        size: (size != null ? size.value : this.size),
        placeEquipments: (placeEquipments != null
            ? placeEquipments.value
            : this.placeEquipments),
        id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class PlaceNameInDb {
  PlaceNameInDb({
    required this.id,
    required this.name,
  });

  factory PlaceNameInDb.fromJson(Map<String, dynamic> json) =>
      _$PlaceNameInDbFromJson(json);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  static const fromJsonFactory = _$PlaceNameInDbFromJson;
  static const toJsonFactory = _$PlaceNameInDbToJson;
  Map<String, dynamic> toJson() => _$PlaceNameInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlaceNameInDb &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $PlaceNameInDbExtension on PlaceNameInDb {
  PlaceNameInDb copyWith({int? id, String? name}) {
    return PlaceNameInDb(id: id ?? this.id, name: name ?? this.name);
  }

  PlaceNameInDb copyWithWrapped({Wrapped<int>? id, Wrapped<String>? name}) {
    return PlaceNameInDb(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class PlaceShortInDb {
  PlaceShortInDb({
    required this.address,
    required this.name,
    this.facultyId,
    this.size,
    required this.id,
    this.equipments,
  });

  factory PlaceShortInDb.fromJson(Map<String, dynamic> json) =>
      _$PlaceShortInDbFromJson(json);

  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'faculty_id')
  final int? facultyId;
  @JsonKey(name: 'size')
  final int? size;
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'equipments', defaultValue: <PlaceEquipmentShortInfo>[])
  final List<PlaceEquipmentShortInfo>? equipments;
  static const fromJsonFactory = _$PlaceShortInDbFromJson;
  static const toJsonFactory = _$PlaceShortInDbToJson;
  Map<String, dynamic> toJson() => _$PlaceShortInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlaceShortInDb &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.facultyId, facultyId) ||
                const DeepCollectionEquality()
                    .equals(other.facultyId, facultyId)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.equipments, equipments) ||
                const DeepCollectionEquality()
                    .equals(other.equipments, equipments)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(facultyId) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(equipments) ^
      runtimeType.hashCode;
}

extension $PlaceShortInDbExtension on PlaceShortInDb {
  PlaceShortInDb copyWith(
      {String? address,
      String? name,
      int? facultyId,
      int? size,
      int? id,
      List<PlaceEquipmentShortInfo>? equipments}) {
    return PlaceShortInDb(
        address: address ?? this.address,
        name: name ?? this.name,
        facultyId: facultyId ?? this.facultyId,
        size: size ?? this.size,
        id: id ?? this.id,
        equipments: equipments ?? this.equipments);
  }

  PlaceShortInDb copyWithWrapped(
      {Wrapped<String>? address,
      Wrapped<String>? name,
      Wrapped<int?>? facultyId,
      Wrapped<int?>? size,
      Wrapped<int>? id,
      Wrapped<List<PlaceEquipmentShortInfo>?>? equipments}) {
    return PlaceShortInDb(
        address: (address != null ? address.value : this.address),
        name: (name != null ? name.value : this.name),
        facultyId: (facultyId != null ? facultyId.value : this.facultyId),
        size: (size != null ? size.value : this.size),
        id: (id != null ? id.value : this.id),
        equipments: (equipments != null ? equipments.value : this.equipments));
  }
}

@JsonSerializable(explicitToJson: true)
class PlaceUpdate {
  PlaceUpdate({
    required this.address,
    required this.name,
    this.size,
    this.facultyId,
    this.equipments,
  });

  factory PlaceUpdate.fromJson(Map<String, dynamic> json) =>
      _$PlaceUpdateFromJson(json);

  @JsonKey(name: 'address')
  final String address;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'size')
  final int? size;
  @JsonKey(name: 'faculty_id')
  final int? facultyId;
  @JsonKey(name: 'equipments', defaultValue: <PlaceEquipmentShortInfo>[])
  final List<PlaceEquipmentShortInfo>? equipments;
  static const fromJsonFactory = _$PlaceUpdateFromJson;
  static const toJsonFactory = _$PlaceUpdateToJson;
  Map<String, dynamic> toJson() => _$PlaceUpdateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlaceUpdate &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.facultyId, facultyId) ||
                const DeepCollectionEquality()
                    .equals(other.facultyId, facultyId)) &&
            (identical(other.equipments, equipments) ||
                const DeepCollectionEquality()
                    .equals(other.equipments, equipments)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(facultyId) ^
      const DeepCollectionEquality().hash(equipments) ^
      runtimeType.hashCode;
}

extension $PlaceUpdateExtension on PlaceUpdate {
  PlaceUpdate copyWith(
      {String? address,
      String? name,
      int? size,
      int? facultyId,
      List<PlaceEquipmentShortInfo>? equipments}) {
    return PlaceUpdate(
        address: address ?? this.address,
        name: name ?? this.name,
        size: size ?? this.size,
        facultyId: facultyId ?? this.facultyId,
        equipments: equipments ?? this.equipments);
  }

  PlaceUpdate copyWithWrapped(
      {Wrapped<String>? address,
      Wrapped<String>? name,
      Wrapped<int?>? size,
      Wrapped<int?>? facultyId,
      Wrapped<List<PlaceEquipmentShortInfo>?>? equipments}) {
    return PlaceUpdate(
        address: (address != null ? address.value : this.address),
        name: (name != null ? name.value : this.name),
        size: (size != null ? size.value : this.size),
        facultyId: (facultyId != null ? facultyId.value : this.facultyId),
        equipments: (equipments != null ? equipments.value : this.equipments));
  }
}

@JsonSerializable(explicitToJson: true)
class ProductionCalendarDayCreate {
  ProductionCalendarDayCreate({
    required this.date,
    required this.isHoliday,
  });

  factory ProductionCalendarDayCreate.fromJson(Map<String, dynamic> json) =>
      _$ProductionCalendarDayCreateFromJson(json);

  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'is_holiday')
  final bool isHoliday;
  static const fromJsonFactory = _$ProductionCalendarDayCreateFromJson;
  static const toJsonFactory = _$ProductionCalendarDayCreateToJson;
  Map<String, dynamic> toJson() => _$ProductionCalendarDayCreateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductionCalendarDayCreate &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.isHoliday, isHoliday) ||
                const DeepCollectionEquality()
                    .equals(other.isHoliday, isHoliday)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(isHoliday) ^
      runtimeType.hashCode;
}

extension $ProductionCalendarDayCreateExtension on ProductionCalendarDayCreate {
  ProductionCalendarDayCreate copyWith({String? date, bool? isHoliday}) {
    return ProductionCalendarDayCreate(
        date: date ?? this.date, isHoliday: isHoliday ?? this.isHoliday);
  }

  ProductionCalendarDayCreate copyWithWrapped(
      {Wrapped<String>? date, Wrapped<bool>? isHoliday}) {
    return ProductionCalendarDayCreate(
        date: (date != null ? date.value : this.date),
        isHoliday: (isHoliday != null ? isHoliday.value : this.isHoliday));
  }
}

@JsonSerializable(explicitToJson: true)
class ProductionCalendarDayInDb {
  ProductionCalendarDayInDb({
    required this.date,
    required this.isHoliday,
    required this.id,
  });

  factory ProductionCalendarDayInDb.fromJson(Map<String, dynamic> json) =>
      _$ProductionCalendarDayInDbFromJson(json);

  @JsonKey(name: 'date', toJson: _dateToJson)
  final DateTime date;
  @JsonKey(name: 'is_holiday')
  final bool isHoliday;
  @JsonKey(name: 'id')
  final int id;
  static const fromJsonFactory = _$ProductionCalendarDayInDbFromJson;
  static const toJsonFactory = _$ProductionCalendarDayInDbToJson;
  Map<String, dynamic> toJson() => _$ProductionCalendarDayInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductionCalendarDayInDb &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.isHoliday, isHoliday) ||
                const DeepCollectionEquality()
                    .equals(other.isHoliday, isHoliday)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(isHoliday) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $ProductionCalendarDayInDbExtension on ProductionCalendarDayInDb {
  ProductionCalendarDayInDb copyWith(
      {DateTime? date, bool? isHoliday, int? id}) {
    return ProductionCalendarDayInDb(
        date: date ?? this.date,
        isHoliday: isHoliday ?? this.isHoliday,
        id: id ?? this.id);
  }

  ProductionCalendarDayInDb copyWithWrapped(
      {Wrapped<DateTime>? date, Wrapped<bool>? isHoliday, Wrapped<int>? id}) {
    return ProductionCalendarDayInDb(
        date: (date != null ? date.value : this.date),
        isHoliday: (isHoliday != null ? isHoliday.value : this.isHoliday),
        id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class ProductionCalendarDayUpdate {
  ProductionCalendarDayUpdate({
    required this.isHoliday,
  });

  factory ProductionCalendarDayUpdate.fromJson(Map<String, dynamic> json) =>
      _$ProductionCalendarDayUpdateFromJson(json);

  @JsonKey(name: 'is_holiday')
  final bool isHoliday;
  static const fromJsonFactory = _$ProductionCalendarDayUpdateFromJson;
  static const toJsonFactory = _$ProductionCalendarDayUpdateToJson;
  Map<String, dynamic> toJson() => _$ProductionCalendarDayUpdateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductionCalendarDayUpdate &&
            (identical(other.isHoliday, isHoliday) ||
                const DeepCollectionEquality()
                    .equals(other.isHoliday, isHoliday)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isHoliday) ^ runtimeType.hashCode;
}

extension $ProductionCalendarDayUpdateExtension on ProductionCalendarDayUpdate {
  ProductionCalendarDayUpdate copyWith({bool? isHoliday}) {
    return ProductionCalendarDayUpdate(isHoliday: isHoliday ?? this.isHoliday);
  }

  ProductionCalendarDayUpdate copyWithWrapped({Wrapped<bool>? isHoliday}) {
    return ProductionCalendarDayUpdate(
        isHoliday: (isHoliday != null ? isHoliday.value : this.isHoliday));
  }
}

@JsonSerializable(explicitToJson: true)
class ProfileCreate {
  ProfileCreate({
    required this.name,
    this.shortName,
    required this.directionId,
  });

  factory ProfileCreate.fromJson(Map<String, dynamic> json) =>
      _$ProfileCreateFromJson(json);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'short_name')
  final String? shortName;
  @JsonKey(name: 'direction_id')
  final int directionId;
  static const fromJsonFactory = _$ProfileCreateFromJson;
  static const toJsonFactory = _$ProfileCreateToJson;
  Map<String, dynamic> toJson() => _$ProfileCreateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProfileCreate &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.shortName, shortName) ||
                const DeepCollectionEquality()
                    .equals(other.shortName, shortName)) &&
            (identical(other.directionId, directionId) ||
                const DeepCollectionEquality()
                    .equals(other.directionId, directionId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(shortName) ^
      const DeepCollectionEquality().hash(directionId) ^
      runtimeType.hashCode;
}

extension $ProfileCreateExtension on ProfileCreate {
  ProfileCreate copyWith({String? name, String? shortName, int? directionId}) {
    return ProfileCreate(
        name: name ?? this.name,
        shortName: shortName ?? this.shortName,
        directionId: directionId ?? this.directionId);
  }

  ProfileCreate copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<String?>? shortName,
      Wrapped<int>? directionId}) {
    return ProfileCreate(
        name: (name != null ? name.value : this.name),
        shortName: (shortName != null ? shortName.value : this.shortName),
        directionId:
            (directionId != null ? directionId.value : this.directionId));
  }
}

@JsonSerializable(explicitToJson: true)
class ProfileInDb {
  ProfileInDb({
    required this.name,
    this.shortName,
    required this.directionId,
    required this.id,
  });

  factory ProfileInDb.fromJson(Map<String, dynamic> json) =>
      _$ProfileInDbFromJson(json);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'short_name')
  final String? shortName;
  @JsonKey(name: 'direction_id')
  final int directionId;
  @JsonKey(name: 'id')
  final int id;
  static const fromJsonFactory = _$ProfileInDbFromJson;
  static const toJsonFactory = _$ProfileInDbToJson;
  Map<String, dynamic> toJson() => _$ProfileInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProfileInDb &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.shortName, shortName) ||
                const DeepCollectionEquality()
                    .equals(other.shortName, shortName)) &&
            (identical(other.directionId, directionId) ||
                const DeepCollectionEquality()
                    .equals(other.directionId, directionId)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(shortName) ^
      const DeepCollectionEquality().hash(directionId) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $ProfileInDbExtension on ProfileInDb {
  ProfileInDb copyWith(
      {String? name, String? shortName, int? directionId, int? id}) {
    return ProfileInDb(
        name: name ?? this.name,
        shortName: shortName ?? this.shortName,
        directionId: directionId ?? this.directionId,
        id: id ?? this.id);
  }

  ProfileInDb copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<String?>? shortName,
      Wrapped<int>? directionId,
      Wrapped<int>? id}) {
    return ProfileInDb(
        name: (name != null ? name.value : this.name),
        shortName: (shortName != null ? shortName.value : this.shortName),
        directionId:
            (directionId != null ? directionId.value : this.directionId),
        id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class ProfileUpdate {
  ProfileUpdate({
    required this.name,
    this.shortName,
    required this.directionId,
  });

  factory ProfileUpdate.fromJson(Map<String, dynamic> json) =>
      _$ProfileUpdateFromJson(json);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'short_name')
  final String? shortName;
  @JsonKey(name: 'direction_id')
  final int directionId;
  static const fromJsonFactory = _$ProfileUpdateFromJson;
  static const toJsonFactory = _$ProfileUpdateToJson;
  Map<String, dynamic> toJson() => _$ProfileUpdateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProfileUpdate &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.shortName, shortName) ||
                const DeepCollectionEquality()
                    .equals(other.shortName, shortName)) &&
            (identical(other.directionId, directionId) ||
                const DeepCollectionEquality()
                    .equals(other.directionId, directionId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(shortName) ^
      const DeepCollectionEquality().hash(directionId) ^
      runtimeType.hashCode;
}

extension $ProfileUpdateExtension on ProfileUpdate {
  ProfileUpdate copyWith({String? name, String? shortName, int? directionId}) {
    return ProfileUpdate(
        name: name ?? this.name,
        shortName: shortName ?? this.shortName,
        directionId: directionId ?? this.directionId);
  }

  ProfileUpdate copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<String?>? shortName,
      Wrapped<int>? directionId}) {
    return ProfileUpdate(
        name: (name != null ? name.value : this.name),
        shortName: (shortName != null ? shortName.value : this.shortName),
        directionId:
            (directionId != null ? directionId.value : this.directionId));
  }
}

@JsonSerializable(explicitToJson: true)
class RoleCreate {
  RoleCreate({
    required this.name,
    this.permissionNames,
  });

  factory RoleCreate.fromJson(Map<String, dynamic> json) =>
      _$RoleCreateFromJson(json);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(
    name: 'permission_names',
    toJson: permissionsListToJson,
    fromJson: permissionsListFromJson,
  )
  final List<enums.Permissions>? permissionNames;
  static const fromJsonFactory = _$RoleCreateFromJson;
  static const toJsonFactory = _$RoleCreateToJson;
  Map<String, dynamic> toJson() => _$RoleCreateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoleCreate &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.permissionNames, permissionNames) ||
                const DeepCollectionEquality()
                    .equals(other.permissionNames, permissionNames)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(permissionNames) ^
      runtimeType.hashCode;
}

extension $RoleCreateExtension on RoleCreate {
  RoleCreate copyWith(
      {String? name, List<enums.Permissions>? permissionNames}) {
    return RoleCreate(
        name: name ?? this.name,
        permissionNames: permissionNames ?? this.permissionNames);
  }

  RoleCreate copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<List<enums.Permissions>?>? permissionNames}) {
    return RoleCreate(
        name: (name != null ? name.value : this.name),
        permissionNames: (permissionNames != null
            ? permissionNames.value
            : this.permissionNames));
  }
}

@JsonSerializable(explicitToJson: true)
class RoleInDb {
  RoleInDb({
    required this.name,
    required this.id,
  });

  factory RoleInDb.fromJson(Map<String, dynamic> json) =>
      _$RoleInDbFromJson(json);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'id')
  final int id;
  static const fromJsonFactory = _$RoleInDbFromJson;
  static const toJsonFactory = _$RoleInDbToJson;
  Map<String, dynamic> toJson() => _$RoleInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoleInDb &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $RoleInDbExtension on RoleInDb {
  RoleInDb copyWith({String? name, int? id}) {
    return RoleInDb(name: name ?? this.name, id: id ?? this.id);
  }

  RoleInDb copyWithWrapped({Wrapped<String>? name, Wrapped<int>? id}) {
    return RoleInDb(
        name: (name != null ? name.value : this.name),
        id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class RolePermissionsInDb {
  RolePermissionsInDb({
    required this.name,
    required this.id,
    required this.permissionsNames,
  });

  factory RolePermissionsInDb.fromJson(Map<String, dynamic> json) =>
      _$RolePermissionsInDbFromJson(json);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(
    name: 'permissions_names',
    toJson: permissionsListToJson,
    fromJson: permissionsListFromJson,
  )
  final List<enums.Permissions> permissionsNames;
  static const fromJsonFactory = _$RolePermissionsInDbFromJson;
  static const toJsonFactory = _$RolePermissionsInDbToJson;
  Map<String, dynamic> toJson() => _$RolePermissionsInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RolePermissionsInDb &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.permissionsNames, permissionsNames) ||
                const DeepCollectionEquality()
                    .equals(other.permissionsNames, permissionsNames)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(permissionsNames) ^
      runtimeType.hashCode;
}

extension $RolePermissionsInDbExtension on RolePermissionsInDb {
  RolePermissionsInDb copyWith(
      {String? name, int? id, List<enums.Permissions>? permissionsNames}) {
    return RolePermissionsInDb(
        name: name ?? this.name,
        id: id ?? this.id,
        permissionsNames: permissionsNames ?? this.permissionsNames);
  }

  RolePermissionsInDb copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<int>? id,
      Wrapped<List<enums.Permissions>>? permissionsNames}) {
    return RolePermissionsInDb(
        name: (name != null ? name.value : this.name),
        id: (id != null ? id.value : this.id),
        permissionsNames: (permissionsNames != null
            ? permissionsNames.value
            : this.permissionsNames));
  }
}

@JsonSerializable(explicitToJson: true)
class RoleUpdate {
  RoleUpdate({
    required this.name,
    this.permissionNames,
  });

  factory RoleUpdate.fromJson(Map<String, dynamic> json) =>
      _$RoleUpdateFromJson(json);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(
    name: 'permission_names',
    toJson: permissionsListToJson,
    fromJson: permissionsListFromJson,
  )
  final List<enums.Permissions>? permissionNames;
  static const fromJsonFactory = _$RoleUpdateFromJson;
  static const toJsonFactory = _$RoleUpdateToJson;
  Map<String, dynamic> toJson() => _$RoleUpdateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoleUpdate &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.permissionNames, permissionNames) ||
                const DeepCollectionEquality()
                    .equals(other.permissionNames, permissionNames)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(permissionNames) ^
      runtimeType.hashCode;
}

extension $RoleUpdateExtension on RoleUpdate {
  RoleUpdate copyWith(
      {String? name, List<enums.Permissions>? permissionNames}) {
    return RoleUpdate(
        name: name ?? this.name,
        permissionNames: permissionNames ?? this.permissionNames);
  }

  RoleUpdate copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<List<enums.Permissions>?>? permissionNames}) {
    return RoleUpdate(
        name: (name != null ? name.value : this.name),
        permissionNames: (permissionNames != null
            ? permissionNames.value
            : this.permissionNames));
  }
}

@JsonSerializable(explicitToJson: true)
class SemesterCreate {
  SemesterCreate({
    required this.type,
    required this.studyYear,
  });

  factory SemesterCreate.fromJson(Map<String, dynamic> json) =>
      _$SemesterCreateFromJson(json);

  @JsonKey(
    name: 'type',
    toJson: semesterTypeToJson,
    fromJson: semesterTypeFromJson,
  )
  final enums.SemesterType type;
  @JsonKey(name: 'study_year')
  final String studyYear;
  static const fromJsonFactory = _$SemesterCreateFromJson;
  static const toJsonFactory = _$SemesterCreateToJson;
  Map<String, dynamic> toJson() => _$SemesterCreateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SemesterCreate &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.studyYear, studyYear) ||
                const DeepCollectionEquality()
                    .equals(other.studyYear, studyYear)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(studyYear) ^
      runtimeType.hashCode;
}

extension $SemesterCreateExtension on SemesterCreate {
  SemesterCreate copyWith({enums.SemesterType? type, String? studyYear}) {
    return SemesterCreate(
        type: type ?? this.type, studyYear: studyYear ?? this.studyYear);
  }

  SemesterCreate copyWithWrapped(
      {Wrapped<enums.SemesterType>? type, Wrapped<String>? studyYear}) {
    return SemesterCreate(
        type: (type != null ? type.value : this.type),
        studyYear: (studyYear != null ? studyYear.value : this.studyYear));
  }
}

@JsonSerializable(explicitToJson: true)
class SemesterDirectionCreate {
  SemesterDirectionCreate({
    this.directionId,
    required this.course,
    required this.startDateSemester,
    required this.endDateSemester,
    required this.startDateSession,
    required this.endDateSession,
    required this.semesterId,
  });

  factory SemesterDirectionCreate.fromJson(Map<String, dynamic> json) =>
      _$SemesterDirectionCreateFromJson(json);

  @JsonKey(name: 'direction_id')
  final int? directionId;
  @JsonKey(name: 'course')
  final int course;
  @JsonKey(name: 'start_date_semester', toJson: _dateToJson)
  final DateTime startDateSemester;
  @JsonKey(name: 'end_date_semester', toJson: _dateToJson)
  final DateTime endDateSemester;
  @JsonKey(name: 'start_date_session', toJson: _dateToJson)
  final DateTime startDateSession;
  @JsonKey(name: 'end_date_session', toJson: _dateToJson)
  final DateTime endDateSession;
  @JsonKey(name: 'semester_id')
  final int semesterId;
  static const fromJsonFactory = _$SemesterDirectionCreateFromJson;
  static const toJsonFactory = _$SemesterDirectionCreateToJson;
  Map<String, dynamic> toJson() => _$SemesterDirectionCreateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SemesterDirectionCreate &&
            (identical(other.directionId, directionId) ||
                const DeepCollectionEquality()
                    .equals(other.directionId, directionId)) &&
            (identical(other.course, course) ||
                const DeepCollectionEquality().equals(other.course, course)) &&
            (identical(other.startDateSemester, startDateSemester) ||
                const DeepCollectionEquality()
                    .equals(other.startDateSemester, startDateSemester)) &&
            (identical(other.endDateSemester, endDateSemester) ||
                const DeepCollectionEquality()
                    .equals(other.endDateSemester, endDateSemester)) &&
            (identical(other.startDateSession, startDateSession) ||
                const DeepCollectionEquality()
                    .equals(other.startDateSession, startDateSession)) &&
            (identical(other.endDateSession, endDateSession) ||
                const DeepCollectionEquality()
                    .equals(other.endDateSession, endDateSession)) &&
            (identical(other.semesterId, semesterId) ||
                const DeepCollectionEquality()
                    .equals(other.semesterId, semesterId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(directionId) ^
      const DeepCollectionEquality().hash(course) ^
      const DeepCollectionEquality().hash(startDateSemester) ^
      const DeepCollectionEquality().hash(endDateSemester) ^
      const DeepCollectionEquality().hash(startDateSession) ^
      const DeepCollectionEquality().hash(endDateSession) ^
      const DeepCollectionEquality().hash(semesterId) ^
      runtimeType.hashCode;
}

extension $SemesterDirectionCreateExtension on SemesterDirectionCreate {
  SemesterDirectionCreate copyWith(
      {int? directionId,
      int? course,
      DateTime? startDateSemester,
      DateTime? endDateSemester,
      DateTime? startDateSession,
      DateTime? endDateSession,
      int? semesterId}) {
    return SemesterDirectionCreate(
        directionId: directionId ?? this.directionId,
        course: course ?? this.course,
        startDateSemester: startDateSemester ?? this.startDateSemester,
        endDateSemester: endDateSemester ?? this.endDateSemester,
        startDateSession: startDateSession ?? this.startDateSession,
        endDateSession: endDateSession ?? this.endDateSession,
        semesterId: semesterId ?? this.semesterId);
  }

  SemesterDirectionCreate copyWithWrapped(
      {Wrapped<int?>? directionId,
      Wrapped<int>? course,
      Wrapped<DateTime>? startDateSemester,
      Wrapped<DateTime>? endDateSemester,
      Wrapped<DateTime>? startDateSession,
      Wrapped<DateTime>? endDateSession,
      Wrapped<int>? semesterId}) {
    return SemesterDirectionCreate(
        directionId:
            (directionId != null ? directionId.value : this.directionId),
        course: (course != null ? course.value : this.course),
        startDateSemester: (startDateSemester != null
            ? startDateSemester.value
            : this.startDateSemester),
        endDateSemester: (endDateSemester != null
            ? endDateSemester.value
            : this.endDateSemester),
        startDateSession: (startDateSession != null
            ? startDateSession.value
            : this.startDateSession),
        endDateSession: (endDateSession != null
            ? endDateSession.value
            : this.endDateSession),
        semesterId: (semesterId != null ? semesterId.value : this.semesterId));
  }
}

@JsonSerializable(explicitToJson: true)
class SemesterDirectionInDb {
  SemesterDirectionInDb({
    required this.id,
    required this.directionId,
    required this.course,
    required this.startDateSemester,
    required this.endDateSemester,
    required this.startDateSession,
    required this.endDateSession,
    required this.semesterId,
  });

  factory SemesterDirectionInDb.fromJson(Map<String, dynamic> json) =>
      _$SemesterDirectionInDbFromJson(json);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'direction_id')
  final int directionId;
  @JsonKey(name: 'course')
  final int course;
  @JsonKey(name: 'start_date_semester', toJson: _dateToJson)
  final DateTime startDateSemester;
  @JsonKey(name: 'end_date_semester', toJson: _dateToJson)
  final DateTime endDateSemester;
  @JsonKey(name: 'start_date_session', toJson: _dateToJson)
  final DateTime startDateSession;
  @JsonKey(name: 'end_date_session', toJson: _dateToJson)
  final DateTime endDateSession;
  @JsonKey(name: 'semester_id')
  final int semesterId;
  static const fromJsonFactory = _$SemesterDirectionInDbFromJson;
  static const toJsonFactory = _$SemesterDirectionInDbToJson;
  Map<String, dynamic> toJson() => _$SemesterDirectionInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SemesterDirectionInDb &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.directionId, directionId) ||
                const DeepCollectionEquality()
                    .equals(other.directionId, directionId)) &&
            (identical(other.course, course) ||
                const DeepCollectionEquality().equals(other.course, course)) &&
            (identical(other.startDateSemester, startDateSemester) ||
                const DeepCollectionEquality()
                    .equals(other.startDateSemester, startDateSemester)) &&
            (identical(other.endDateSemester, endDateSemester) ||
                const DeepCollectionEquality()
                    .equals(other.endDateSemester, endDateSemester)) &&
            (identical(other.startDateSession, startDateSession) ||
                const DeepCollectionEquality()
                    .equals(other.startDateSession, startDateSession)) &&
            (identical(other.endDateSession, endDateSession) ||
                const DeepCollectionEquality()
                    .equals(other.endDateSession, endDateSession)) &&
            (identical(other.semesterId, semesterId) ||
                const DeepCollectionEquality()
                    .equals(other.semesterId, semesterId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(directionId) ^
      const DeepCollectionEquality().hash(course) ^
      const DeepCollectionEquality().hash(startDateSemester) ^
      const DeepCollectionEquality().hash(endDateSemester) ^
      const DeepCollectionEquality().hash(startDateSession) ^
      const DeepCollectionEquality().hash(endDateSession) ^
      const DeepCollectionEquality().hash(semesterId) ^
      runtimeType.hashCode;
}

extension $SemesterDirectionInDbExtension on SemesterDirectionInDb {
  SemesterDirectionInDb copyWith(
      {int? id,
      int? directionId,
      int? course,
      DateTime? startDateSemester,
      DateTime? endDateSemester,
      DateTime? startDateSession,
      DateTime? endDateSession,
      int? semesterId}) {
    return SemesterDirectionInDb(
        id: id ?? this.id,
        directionId: directionId ?? this.directionId,
        course: course ?? this.course,
        startDateSemester: startDateSemester ?? this.startDateSemester,
        endDateSemester: endDateSemester ?? this.endDateSemester,
        startDateSession: startDateSession ?? this.startDateSession,
        endDateSession: endDateSession ?? this.endDateSession,
        semesterId: semesterId ?? this.semesterId);
  }

  SemesterDirectionInDb copyWithWrapped(
      {Wrapped<int>? id,
      Wrapped<int>? directionId,
      Wrapped<int>? course,
      Wrapped<DateTime>? startDateSemester,
      Wrapped<DateTime>? endDateSemester,
      Wrapped<DateTime>? startDateSession,
      Wrapped<DateTime>? endDateSession,
      Wrapped<int>? semesterId}) {
    return SemesterDirectionInDb(
        id: (id != null ? id.value : this.id),
        directionId:
            (directionId != null ? directionId.value : this.directionId),
        course: (course != null ? course.value : this.course),
        startDateSemester: (startDateSemester != null
            ? startDateSemester.value
            : this.startDateSemester),
        endDateSemester: (endDateSemester != null
            ? endDateSemester.value
            : this.endDateSemester),
        startDateSession: (startDateSession != null
            ? startDateSession.value
            : this.startDateSession),
        endDateSession: (endDateSession != null
            ? endDateSession.value
            : this.endDateSession),
        semesterId: (semesterId != null ? semesterId.value : this.semesterId));
  }
}

@JsonSerializable(explicitToJson: true)
class SemesterDirectionUpdate {
  SemesterDirectionUpdate({
    this.directionId,
    required this.course,
    required this.startDateSemester,
    required this.endDateSemester,
    required this.startDateSession,
    required this.endDateSession,
    required this.semesterId,
  });

  factory SemesterDirectionUpdate.fromJson(Map<String, dynamic> json) =>
      _$SemesterDirectionUpdateFromJson(json);

  @JsonKey(name: 'direction_id')
  final int? directionId;
  @JsonKey(name: 'course')
  final int course;
  @JsonKey(name: 'start_date_semester', toJson: _dateToJson)
  final DateTime startDateSemester;
  @JsonKey(name: 'end_date_semester', toJson: _dateToJson)
  final DateTime endDateSemester;
  @JsonKey(name: 'start_date_session', toJson: _dateToJson)
  final DateTime startDateSession;
  @JsonKey(name: 'end_date_session', toJson: _dateToJson)
  final DateTime endDateSession;
  @JsonKey(name: 'semester_id')
  final int semesterId;
  static const fromJsonFactory = _$SemesterDirectionUpdateFromJson;
  static const toJsonFactory = _$SemesterDirectionUpdateToJson;
  Map<String, dynamic> toJson() => _$SemesterDirectionUpdateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SemesterDirectionUpdate &&
            (identical(other.directionId, directionId) ||
                const DeepCollectionEquality()
                    .equals(other.directionId, directionId)) &&
            (identical(other.course, course) ||
                const DeepCollectionEquality().equals(other.course, course)) &&
            (identical(other.startDateSemester, startDateSemester) ||
                const DeepCollectionEquality()
                    .equals(other.startDateSemester, startDateSemester)) &&
            (identical(other.endDateSemester, endDateSemester) ||
                const DeepCollectionEquality()
                    .equals(other.endDateSemester, endDateSemester)) &&
            (identical(other.startDateSession, startDateSession) ||
                const DeepCollectionEquality()
                    .equals(other.startDateSession, startDateSession)) &&
            (identical(other.endDateSession, endDateSession) ||
                const DeepCollectionEquality()
                    .equals(other.endDateSession, endDateSession)) &&
            (identical(other.semesterId, semesterId) ||
                const DeepCollectionEquality()
                    .equals(other.semesterId, semesterId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(directionId) ^
      const DeepCollectionEquality().hash(course) ^
      const DeepCollectionEquality().hash(startDateSemester) ^
      const DeepCollectionEquality().hash(endDateSemester) ^
      const DeepCollectionEquality().hash(startDateSession) ^
      const DeepCollectionEquality().hash(endDateSession) ^
      const DeepCollectionEquality().hash(semesterId) ^
      runtimeType.hashCode;
}

extension $SemesterDirectionUpdateExtension on SemesterDirectionUpdate {
  SemesterDirectionUpdate copyWith(
      {int? directionId,
      int? course,
      DateTime? startDateSemester,
      DateTime? endDateSemester,
      DateTime? startDateSession,
      DateTime? endDateSession,
      int? semesterId}) {
    return SemesterDirectionUpdate(
        directionId: directionId ?? this.directionId,
        course: course ?? this.course,
        startDateSemester: startDateSemester ?? this.startDateSemester,
        endDateSemester: endDateSemester ?? this.endDateSemester,
        startDateSession: startDateSession ?? this.startDateSession,
        endDateSession: endDateSession ?? this.endDateSession,
        semesterId: semesterId ?? this.semesterId);
  }

  SemesterDirectionUpdate copyWithWrapped(
      {Wrapped<int?>? directionId,
      Wrapped<int>? course,
      Wrapped<DateTime>? startDateSemester,
      Wrapped<DateTime>? endDateSemester,
      Wrapped<DateTime>? startDateSession,
      Wrapped<DateTime>? endDateSession,
      Wrapped<int>? semesterId}) {
    return SemesterDirectionUpdate(
        directionId:
            (directionId != null ? directionId.value : this.directionId),
        course: (course != null ? course.value : this.course),
        startDateSemester: (startDateSemester != null
            ? startDateSemester.value
            : this.startDateSemester),
        endDateSemester: (endDateSemester != null
            ? endDateSemester.value
            : this.endDateSemester),
        startDateSession: (startDateSession != null
            ? startDateSession.value
            : this.startDateSession),
        endDateSession: (endDateSession != null
            ? endDateSession.value
            : this.endDateSession),
        semesterId: (semesterId != null ? semesterId.value : this.semesterId));
  }
}

@JsonSerializable(explicitToJson: true)
class SemesterInDb {
  SemesterInDb({
    required this.id,
    required this.type,
    required this.studyYear,
    required this.isCurrentLessons,
    required this.isCurrentSession,
  });

  factory SemesterInDb.fromJson(Map<String, dynamic> json) =>
      _$SemesterInDbFromJson(json);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(
    name: 'type',
    toJson: semesterTypeToJson,
    fromJson: semesterTypeFromJson,
  )
  final enums.SemesterType type;
  @JsonKey(name: 'study_year')
  final String studyYear;
  @JsonKey(name: 'is_current_lessons')
  final bool isCurrentLessons;
  @JsonKey(name: 'is_current_session')
  final bool isCurrentSession;
  static const fromJsonFactory = _$SemesterInDbFromJson;
  static const toJsonFactory = _$SemesterInDbToJson;
  Map<String, dynamic> toJson() => _$SemesterInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SemesterInDb &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.studyYear, studyYear) ||
                const DeepCollectionEquality()
                    .equals(other.studyYear, studyYear)) &&
            (identical(other.isCurrentLessons, isCurrentLessons) ||
                const DeepCollectionEquality()
                    .equals(other.isCurrentLessons, isCurrentLessons)) &&
            (identical(other.isCurrentSession, isCurrentSession) ||
                const DeepCollectionEquality()
                    .equals(other.isCurrentSession, isCurrentSession)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(studyYear) ^
      const DeepCollectionEquality().hash(isCurrentLessons) ^
      const DeepCollectionEquality().hash(isCurrentSession) ^
      runtimeType.hashCode;
}

extension $SemesterInDbExtension on SemesterInDb {
  SemesterInDb copyWith(
      {int? id,
      enums.SemesterType? type,
      String? studyYear,
      bool? isCurrentLessons,
      bool? isCurrentSession}) {
    return SemesterInDb(
        id: id ?? this.id,
        type: type ?? this.type,
        studyYear: studyYear ?? this.studyYear,
        isCurrentLessons: isCurrentLessons ?? this.isCurrentLessons,
        isCurrentSession: isCurrentSession ?? this.isCurrentSession);
  }

  SemesterInDb copyWithWrapped(
      {Wrapped<int>? id,
      Wrapped<enums.SemesterType>? type,
      Wrapped<String>? studyYear,
      Wrapped<bool>? isCurrentLessons,
      Wrapped<bool>? isCurrentSession}) {
    return SemesterInDb(
        id: (id != null ? id.value : this.id),
        type: (type != null ? type.value : this.type),
        studyYear: (studyYear != null ? studyYear.value : this.studyYear),
        isCurrentLessons: (isCurrentLessons != null
            ? isCurrentLessons.value
            : this.isCurrentLessons),
        isCurrentSession: (isCurrentSession != null
            ? isCurrentSession.value
            : this.isCurrentSession));
  }
}

@JsonSerializable(explicitToJson: true)
class SemesterUpdate {
  SemesterUpdate({
    required this.type,
    required this.studyYear,
  });

  factory SemesterUpdate.fromJson(Map<String, dynamic> json) =>
      _$SemesterUpdateFromJson(json);

  @JsonKey(
    name: 'type',
    toJson: semesterTypeToJson,
    fromJson: semesterTypeFromJson,
  )
  final enums.SemesterType type;
  @JsonKey(name: 'study_year')
  final String studyYear;
  static const fromJsonFactory = _$SemesterUpdateFromJson;
  static const toJsonFactory = _$SemesterUpdateToJson;
  Map<String, dynamic> toJson() => _$SemesterUpdateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SemesterUpdate &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.studyYear, studyYear) ||
                const DeepCollectionEquality()
                    .equals(other.studyYear, studyYear)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(studyYear) ^
      runtimeType.hashCode;
}

extension $SemesterUpdateExtension on SemesterUpdate {
  SemesterUpdate copyWith({enums.SemesterType? type, String? studyYear}) {
    return SemesterUpdate(
        type: type ?? this.type, studyYear: studyYear ?? this.studyYear);
  }

  SemesterUpdate copyWithWrapped(
      {Wrapped<enums.SemesterType>? type, Wrapped<String>? studyYear}) {
    return SemesterUpdate(
        type: (type != null ? type.value : this.type),
        studyYear: (studyYear != null ? studyYear.value : this.studyYear));
  }
}

@JsonSerializable(explicitToJson: true)
class SessionEventCollision {
  SessionEventCollision({
    required this.field,
    required this.data,
  });

  factory SessionEventCollision.fromJson(Map<String, dynamic> json) =>
      _$SessionEventCollisionFromJson(json);

  @JsonKey(name: 'field')
  final String field;
  @JsonKey(name: 'data')
  final SessionEventCollisionInfo data;
  static const fromJsonFactory = _$SessionEventCollisionFromJson;
  static const toJsonFactory = _$SessionEventCollisionToJson;
  Map<String, dynamic> toJson() => _$SessionEventCollisionToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SessionEventCollision &&
            (identical(other.field, field) ||
                const DeepCollectionEquality().equals(other.field, field)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(field) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $SessionEventCollisionExtension on SessionEventCollision {
  SessionEventCollision copyWith(
      {String? field, SessionEventCollisionInfo? data}) {
    return SessionEventCollision(
        field: field ?? this.field, data: data ?? this.data);
  }

  SessionEventCollision copyWithWrapped(
      {Wrapped<String>? field, Wrapped<SessionEventCollisionInfo>? data}) {
    return SessionEventCollision(
        field: (field != null ? field.value : this.field),
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class SessionEventCollisionInfo {
  SessionEventCollisionInfo({
    required this.eventTypeId,
    required this.date,
    required this.time,
    required this.isRemotely,
    required this.discipline,
    this.place,
    required this.semesterId,
    required this.createdUserId,
    required this.id,
    this.groupNames,
    this.teacherNames,
  });

  factory SessionEventCollisionInfo.fromJson(Map<String, dynamic> json) =>
      _$SessionEventCollisionInfoFromJson(json);

  @JsonKey(
    name: 'event_type_id',
    toJson: sessionEventTypeToJson,
    fromJson: sessionEventTypeFromJson,
  )
  final enums.SessionEventType eventTypeId;
  @JsonKey(name: 'date', toJson: _dateToJson)
  final DateTime date;
  @JsonKey(name: 'time')
  final dynamic time;
  @JsonKey(name: 'is_remotely')
  final bool isRemotely;
  @JsonKey(name: 'discipline')
  final DisciplineInDb discipline;
  @JsonKey(name: 'place')
  final PlaceInDb? place;
  @JsonKey(name: 'semester_id')
  final int semesterId;
  @JsonKey(name: 'created_user_id')
  final int createdUserId;
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'group_names', defaultValue: <String>[])
  final List<String>? groupNames;
  @JsonKey(name: 'teacher_names', defaultValue: <String>[])
  final List<String>? teacherNames;
  static const fromJsonFactory = _$SessionEventCollisionInfoFromJson;
  static const toJsonFactory = _$SessionEventCollisionInfoToJson;
  Map<String, dynamic> toJson() => _$SessionEventCollisionInfoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SessionEventCollisionInfo &&
            (identical(other.eventTypeId, eventTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.eventTypeId, eventTypeId)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.isRemotely, isRemotely) ||
                const DeepCollectionEquality()
                    .equals(other.isRemotely, isRemotely)) &&
            (identical(other.discipline, discipline) ||
                const DeepCollectionEquality()
                    .equals(other.discipline, discipline)) &&
            (identical(other.place, place) ||
                const DeepCollectionEquality().equals(other.place, place)) &&
            (identical(other.semesterId, semesterId) ||
                const DeepCollectionEquality()
                    .equals(other.semesterId, semesterId)) &&
            (identical(other.createdUserId, createdUserId) ||
                const DeepCollectionEquality()
                    .equals(other.createdUserId, createdUserId)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.groupNames, groupNames) ||
                const DeepCollectionEquality()
                    .equals(other.groupNames, groupNames)) &&
            (identical(other.teacherNames, teacherNames) ||
                const DeepCollectionEquality()
                    .equals(other.teacherNames, teacherNames)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(eventTypeId) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(isRemotely) ^
      const DeepCollectionEquality().hash(discipline) ^
      const DeepCollectionEquality().hash(place) ^
      const DeepCollectionEquality().hash(semesterId) ^
      const DeepCollectionEquality().hash(createdUserId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(groupNames) ^
      const DeepCollectionEquality().hash(teacherNames) ^
      runtimeType.hashCode;
}

extension $SessionEventCollisionInfoExtension on SessionEventCollisionInfo {
  SessionEventCollisionInfo copyWith(
      {enums.SessionEventType? eventTypeId,
      DateTime? date,
      dynamic time,
      bool? isRemotely,
      DisciplineInDb? discipline,
      PlaceInDb? place,
      int? semesterId,
      int? createdUserId,
      int? id,
      List<String>? groupNames,
      List<String>? teacherNames}) {
    return SessionEventCollisionInfo(
        eventTypeId: eventTypeId ?? this.eventTypeId,
        date: date ?? this.date,
        time: time ?? this.time,
        isRemotely: isRemotely ?? this.isRemotely,
        discipline: discipline ?? this.discipline,
        place: place ?? this.place,
        semesterId: semesterId ?? this.semesterId,
        createdUserId: createdUserId ?? this.createdUserId,
        id: id ?? this.id,
        groupNames: groupNames ?? this.groupNames,
        teacherNames: teacherNames ?? this.teacherNames);
  }

  SessionEventCollisionInfo copyWithWrapped(
      {Wrapped<enums.SessionEventType>? eventTypeId,
      Wrapped<DateTime>? date,
      Wrapped<dynamic>? time,
      Wrapped<bool>? isRemotely,
      Wrapped<DisciplineInDb>? discipline,
      Wrapped<PlaceInDb?>? place,
      Wrapped<int>? semesterId,
      Wrapped<int>? createdUserId,
      Wrapped<int>? id,
      Wrapped<List<String>?>? groupNames,
      Wrapped<List<String>?>? teacherNames}) {
    return SessionEventCollisionInfo(
        eventTypeId:
            (eventTypeId != null ? eventTypeId.value : this.eventTypeId),
        date: (date != null ? date.value : this.date),
        time: (time != null ? time.value : this.time),
        isRemotely: (isRemotely != null ? isRemotely.value : this.isRemotely),
        discipline: (discipline != null ? discipline.value : this.discipline),
        place: (place != null ? place.value : this.place),
        semesterId: (semesterId != null ? semesterId.value : this.semesterId),
        createdUserId:
            (createdUserId != null ? createdUserId.value : this.createdUserId),
        id: (id != null ? id.value : this.id),
        groupNames: (groupNames != null ? groupNames.value : this.groupNames),
        teacherNames:
            (teacherNames != null ? teacherNames.value : this.teacherNames));
  }
}

@JsonSerializable(explicitToJson: true)
class SessionEventCreate {
  SessionEventCreate({
    required this.eventTypeId,
    required this.date,
    required this.time,
    this.isRemotely,
    required this.disciplineId,
    this.placeId,
    required this.groups,
    required this.teachers,
    required this.semesterId,
  });

  factory SessionEventCreate.fromJson(Map<String, dynamic> json) =>
      _$SessionEventCreateFromJson(json);

  @JsonKey(
    name: 'event_type_id',
    toJson: sessionEventTypeToJson,
    fromJson: sessionEventTypeFromJson,
  )
  final enums.SessionEventType eventTypeId;
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'time')
  final String time;
  @JsonKey(name: 'is_remotely', defaultValue: false)
  final bool? isRemotely;
  @JsonKey(name: 'discipline_id')
  final int disciplineId;
  @JsonKey(name: 'place_id')
  final int? placeId;
  @JsonKey(name: 'groups', defaultValue: <int>[])
  final List<int> groups;
  @JsonKey(name: 'teachers', defaultValue: <int>[])
  final List<int> teachers;
  @JsonKey(name: 'semester_id')
  final int semesterId;
  static const fromJsonFactory = _$SessionEventCreateFromJson;
  static const toJsonFactory = _$SessionEventCreateToJson;
  Map<String, dynamic> toJson() => _$SessionEventCreateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SessionEventCreate &&
            (identical(other.eventTypeId, eventTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.eventTypeId, eventTypeId)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.isRemotely, isRemotely) ||
                const DeepCollectionEquality()
                    .equals(other.isRemotely, isRemotely)) &&
            (identical(other.disciplineId, disciplineId) ||
                const DeepCollectionEquality()
                    .equals(other.disciplineId, disciplineId)) &&
            (identical(other.placeId, placeId) ||
                const DeepCollectionEquality()
                    .equals(other.placeId, placeId)) &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)) &&
            (identical(other.teachers, teachers) ||
                const DeepCollectionEquality()
                    .equals(other.teachers, teachers)) &&
            (identical(other.semesterId, semesterId) ||
                const DeepCollectionEquality()
                    .equals(other.semesterId, semesterId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(eventTypeId) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(isRemotely) ^
      const DeepCollectionEquality().hash(disciplineId) ^
      const DeepCollectionEquality().hash(placeId) ^
      const DeepCollectionEquality().hash(groups) ^
      const DeepCollectionEquality().hash(teachers) ^
      const DeepCollectionEquality().hash(semesterId) ^
      runtimeType.hashCode;
}

extension $SessionEventCreateExtension on SessionEventCreate {
  SessionEventCreate copyWith(
      {enums.SessionEventType? eventTypeId,
      String? date,
      String? time,
      bool? isRemotely,
      int? disciplineId,
      int? placeId,
      List<int>? groups,
      List<int>? teachers,
      int? semesterId}) {
    return SessionEventCreate(
        eventTypeId: eventTypeId ?? this.eventTypeId,
        date: date ?? this.date,
        time: time ?? this.time,
        isRemotely: isRemotely ?? this.isRemotely,
        disciplineId: disciplineId ?? this.disciplineId,
        placeId: placeId ?? this.placeId,
        groups: groups ?? this.groups,
        teachers: teachers ?? this.teachers,
        semesterId: semesterId ?? this.semesterId);
  }

  SessionEventCreate copyWithWrapped(
      {Wrapped<enums.SessionEventType>? eventTypeId,
      Wrapped<String>? date,
      Wrapped<String>? time,
      Wrapped<bool?>? isRemotely,
      Wrapped<int>? disciplineId,
      Wrapped<int?>? placeId,
      Wrapped<List<int>>? groups,
      Wrapped<List<int>>? teachers,
      Wrapped<int>? semesterId}) {
    return SessionEventCreate(
        eventTypeId:
            (eventTypeId != null ? eventTypeId.value : this.eventTypeId),
        date: (date != null ? date.value : this.date),
        time: (time != null ? time.value : this.time),
        isRemotely: (isRemotely != null ? isRemotely.value : this.isRemotely),
        disciplineId:
            (disciplineId != null ? disciplineId.value : this.disciplineId),
        placeId: (placeId != null ? placeId.value : this.placeId),
        groups: (groups != null ? groups.value : this.groups),
        teachers: (teachers != null ? teachers.value : this.teachers),
        semesterId: (semesterId != null ? semesterId.value : this.semesterId));
  }
}

@JsonSerializable(explicitToJson: true)
class SessionEventCreateWithParams {
  SessionEventCreateWithParams({
    this.ignoreCollisions,
    this.notify,
    required this.sessionEvent,
  });

  factory SessionEventCreateWithParams.fromJson(Map<String, dynamic> json) =>
      _$SessionEventCreateWithParamsFromJson(json);

  @JsonKey(name: 'ignore_collisions', defaultValue: false)
  final bool? ignoreCollisions;
  @JsonKey(name: 'notify', defaultValue: false)
  final bool? notify;
  @JsonKey(name: 'session_event')
  final SessionEventCreate sessionEvent;
  static const fromJsonFactory = _$SessionEventCreateWithParamsFromJson;
  static const toJsonFactory = _$SessionEventCreateWithParamsToJson;
  Map<String, dynamic> toJson() => _$SessionEventCreateWithParamsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SessionEventCreateWithParams &&
            (identical(other.ignoreCollisions, ignoreCollisions) ||
                const DeepCollectionEquality()
                    .equals(other.ignoreCollisions, ignoreCollisions)) &&
            (identical(other.notify, notify) ||
                const DeepCollectionEquality().equals(other.notify, notify)) &&
            (identical(other.sessionEvent, sessionEvent) ||
                const DeepCollectionEquality()
                    .equals(other.sessionEvent, sessionEvent)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ignoreCollisions) ^
      const DeepCollectionEquality().hash(notify) ^
      const DeepCollectionEquality().hash(sessionEvent) ^
      runtimeType.hashCode;
}

extension $SessionEventCreateWithParamsExtension
    on SessionEventCreateWithParams {
  SessionEventCreateWithParams copyWith(
      {bool? ignoreCollisions,
      bool? notify,
      SessionEventCreate? sessionEvent}) {
    return SessionEventCreateWithParams(
        ignoreCollisions: ignoreCollisions ?? this.ignoreCollisions,
        notify: notify ?? this.notify,
        sessionEvent: sessionEvent ?? this.sessionEvent);
  }

  SessionEventCreateWithParams copyWithWrapped(
      {Wrapped<bool?>? ignoreCollisions,
      Wrapped<bool?>? notify,
      Wrapped<SessionEventCreate>? sessionEvent}) {
    return SessionEventCreateWithParams(
        ignoreCollisions: (ignoreCollisions != null
            ? ignoreCollisions.value
            : this.ignoreCollisions),
        notify: (notify != null ? notify.value : this.notify),
        sessionEvent:
            (sessionEvent != null ? sessionEvent.value : this.sessionEvent));
  }
}

@JsonSerializable(explicitToJson: true)
class SessionEventData {
  SessionEventData({
    required this.data,
    this.startDate,
    this.endDate,
    this.mode,
  });

  factory SessionEventData.fromJson(Map<String, dynamic> json) =>
      _$SessionEventDataFromJson(json);

  @JsonKey(name: 'data', defaultValue: <SessionEventInDb>[])
  final List<SessionEventInDb> data;
  @JsonKey(name: 'start_date', toJson: _dateToJson)
  final DateTime? startDate;
  @JsonKey(name: 'end_date', toJson: _dateToJson)
  final DateTime? endDate;
  @JsonKey(
    name: 'mode',
    toJson: viewModeToJson,
    fromJson: viewModeFromJson,
  )
  final enums.ViewMode? mode;
  static const fromJsonFactory = _$SessionEventDataFromJson;
  static const toJsonFactory = _$SessionEventDataToJson;
  Map<String, dynamic> toJson() => _$SessionEventDataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SessionEventData &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.mode, mode) ||
                const DeepCollectionEquality().equals(other.mode, mode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(mode) ^
      runtimeType.hashCode;
}

extension $SessionEventDataExtension on SessionEventData {
  SessionEventData copyWith(
      {List<SessionEventInDb>? data,
      DateTime? startDate,
      DateTime? endDate,
      enums.ViewMode? mode}) {
    return SessionEventData(
        data: data ?? this.data,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        mode: mode ?? this.mode);
  }

  SessionEventData copyWithWrapped(
      {Wrapped<List<SessionEventInDb>>? data,
      Wrapped<DateTime?>? startDate,
      Wrapped<DateTime?>? endDate,
      Wrapped<enums.ViewMode?>? mode}) {
    return SessionEventData(
        data: (data != null ? data.value : this.data),
        startDate: (startDate != null ? startDate.value : this.startDate),
        endDate: (endDate != null ? endDate.value : this.endDate),
        mode: (mode != null ? mode.value : this.mode));
  }
}

@JsonSerializable(explicitToJson: true)
class SessionEventExport {
  SessionEventExport({
    required this.facultyId,
    this.semesterId,
    this.directions,
    this.profiles,
    this.courses,
    this.groups,
    this.extra,
  });

  factory SessionEventExport.fromJson(Map<String, dynamic> json) =>
      _$SessionEventExportFromJson(json);

  @JsonKey(name: 'faculty_id')
  final int facultyId;
  @JsonKey(name: 'semester_id')
  final int? semesterId;
  @JsonKey(name: 'directions', defaultValue: <int>[])
  final List<int>? directions;
  @JsonKey(name: 'profiles', defaultValue: <int>[])
  final List<int>? profiles;
  @JsonKey(name: 'courses', defaultValue: <int>[])
  final List<int>? courses;
  @JsonKey(name: 'groups', defaultValue: <int>[])
  final List<int>? groups;
  @JsonKey(name: 'extra')
  final ExportExtraInfo? extra;
  static const fromJsonFactory = _$SessionEventExportFromJson;
  static const toJsonFactory = _$SessionEventExportToJson;
  Map<String, dynamic> toJson() => _$SessionEventExportToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SessionEventExport &&
            (identical(other.facultyId, facultyId) ||
                const DeepCollectionEquality()
                    .equals(other.facultyId, facultyId)) &&
            (identical(other.semesterId, semesterId) ||
                const DeepCollectionEquality()
                    .equals(other.semesterId, semesterId)) &&
            (identical(other.directions, directions) ||
                const DeepCollectionEquality()
                    .equals(other.directions, directions)) &&
            (identical(other.profiles, profiles) ||
                const DeepCollectionEquality()
                    .equals(other.profiles, profiles)) &&
            (identical(other.courses, courses) ||
                const DeepCollectionEquality()
                    .equals(other.courses, courses)) &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)) &&
            (identical(other.extra, extra) ||
                const DeepCollectionEquality().equals(other.extra, extra)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(facultyId) ^
      const DeepCollectionEquality().hash(semesterId) ^
      const DeepCollectionEquality().hash(directions) ^
      const DeepCollectionEquality().hash(profiles) ^
      const DeepCollectionEquality().hash(courses) ^
      const DeepCollectionEquality().hash(groups) ^
      const DeepCollectionEquality().hash(extra) ^
      runtimeType.hashCode;
}

extension $SessionEventExportExtension on SessionEventExport {
  SessionEventExport copyWith(
      {int? facultyId,
      int? semesterId,
      List<int>? directions,
      List<int>? profiles,
      List<int>? courses,
      List<int>? groups,
      ExportExtraInfo? extra}) {
    return SessionEventExport(
        facultyId: facultyId ?? this.facultyId,
        semesterId: semesterId ?? this.semesterId,
        directions: directions ?? this.directions,
        profiles: profiles ?? this.profiles,
        courses: courses ?? this.courses,
        groups: groups ?? this.groups,
        extra: extra ?? this.extra);
  }

  SessionEventExport copyWithWrapped(
      {Wrapped<int>? facultyId,
      Wrapped<int?>? semesterId,
      Wrapped<List<int>?>? directions,
      Wrapped<List<int>?>? profiles,
      Wrapped<List<int>?>? courses,
      Wrapped<List<int>?>? groups,
      Wrapped<ExportExtraInfo?>? extra}) {
    return SessionEventExport(
        facultyId: (facultyId != null ? facultyId.value : this.facultyId),
        semesterId: (semesterId != null ? semesterId.value : this.semesterId),
        directions: (directions != null ? directions.value : this.directions),
        profiles: (profiles != null ? profiles.value : this.profiles),
        courses: (courses != null ? courses.value : this.courses),
        groups: (groups != null ? groups.value : this.groups),
        extra: (extra != null ? extra.value : this.extra));
  }
}

@JsonSerializable(explicitToJson: true)
class SessionEventInDb {
  SessionEventInDb({
    required this.id,
    required this.eventTypeId,
    required this.date,
    required this.time,
    required this.isRemotely,
    required this.disciplineId,
    this.placeId,
    required this.groups,
    required this.teachers,
    required this.semesterId,
    required this.createdUserId,
  });

  factory SessionEventInDb.fromJson(Map<String, dynamic> json) =>
      _$SessionEventInDbFromJson(json);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(
    name: 'event_type_id',
    toJson: sessionEventTypeToJson,
    fromJson: sessionEventTypeFromJson,
  )
  final enums.SessionEventType eventTypeId;
  @JsonKey(name: 'date')
  final dynamic date;
  @JsonKey(name: 'time')
  final dynamic time;
  @JsonKey(name: 'is_remotely')
  final bool isRemotely;
  @JsonKey(name: 'discipline_id')
  final int disciplineId;
  @JsonKey(name: 'place_id')
  final int? placeId;
  @JsonKey(name: 'groups', defaultValue: <int>[])
  final List<int> groups;
  @JsonKey(name: 'teachers', defaultValue: <int>[])
  final List<int> teachers;
  @JsonKey(name: 'semester_id')
  final int semesterId;
  @JsonKey(name: 'created_user_id')
  final int createdUserId;
  static const fromJsonFactory = _$SessionEventInDbFromJson;
  static const toJsonFactory = _$SessionEventInDbToJson;
  Map<String, dynamic> toJson() => _$SessionEventInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SessionEventInDb &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.eventTypeId, eventTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.eventTypeId, eventTypeId)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.isRemotely, isRemotely) ||
                const DeepCollectionEquality()
                    .equals(other.isRemotely, isRemotely)) &&
            (identical(other.disciplineId, disciplineId) ||
                const DeepCollectionEquality()
                    .equals(other.disciplineId, disciplineId)) &&
            (identical(other.placeId, placeId) ||
                const DeepCollectionEquality()
                    .equals(other.placeId, placeId)) &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)) &&
            (identical(other.teachers, teachers) ||
                const DeepCollectionEquality()
                    .equals(other.teachers, teachers)) &&
            (identical(other.semesterId, semesterId) ||
                const DeepCollectionEquality()
                    .equals(other.semesterId, semesterId)) &&
            (identical(other.createdUserId, createdUserId) ||
                const DeepCollectionEquality()
                    .equals(other.createdUserId, createdUserId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(eventTypeId) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(isRemotely) ^
      const DeepCollectionEquality().hash(disciplineId) ^
      const DeepCollectionEquality().hash(placeId) ^
      const DeepCollectionEquality().hash(groups) ^
      const DeepCollectionEquality().hash(teachers) ^
      const DeepCollectionEquality().hash(semesterId) ^
      const DeepCollectionEquality().hash(createdUserId) ^
      runtimeType.hashCode;
}

extension $SessionEventInDbExtension on SessionEventInDb {
  SessionEventInDb copyWith(
      {int? id,
      enums.SessionEventType? eventTypeId,
      dynamic date,
      dynamic time,
      bool? isRemotely,
      int? disciplineId,
      int? placeId,
      List<int>? groups,
      List<int>? teachers,
      int? semesterId,
      int? createdUserId}) {
    return SessionEventInDb(
        id: id ?? this.id,
        eventTypeId: eventTypeId ?? this.eventTypeId,
        date: date ?? this.date,
        time: time ?? this.time,
        isRemotely: isRemotely ?? this.isRemotely,
        disciplineId: disciplineId ?? this.disciplineId,
        placeId: placeId ?? this.placeId,
        groups: groups ?? this.groups,
        teachers: teachers ?? this.teachers,
        semesterId: semesterId ?? this.semesterId,
        createdUserId: createdUserId ?? this.createdUserId);
  }

  SessionEventInDb copyWithWrapped(
      {Wrapped<int>? id,
      Wrapped<enums.SessionEventType>? eventTypeId,
      Wrapped<dynamic>? date,
      Wrapped<dynamic>? time,
      Wrapped<bool>? isRemotely,
      Wrapped<int>? disciplineId,
      Wrapped<int?>? placeId,
      Wrapped<List<int>>? groups,
      Wrapped<List<int>>? teachers,
      Wrapped<int>? semesterId,
      Wrapped<int>? createdUserId}) {
    return SessionEventInDb(
        id: (id != null ? id.value : this.id),
        eventTypeId:
            (eventTypeId != null ? eventTypeId.value : this.eventTypeId),
        date: (date != null ? date.value : this.date),
        time: (time != null ? time.value : this.time),
        isRemotely: (isRemotely != null ? isRemotely.value : this.isRemotely),
        disciplineId:
            (disciplineId != null ? disciplineId.value : this.disciplineId),
        placeId: (placeId != null ? placeId.value : this.placeId),
        groups: (groups != null ? groups.value : this.groups),
        teachers: (teachers != null ? teachers.value : this.teachers),
        semesterId: (semesterId != null ? semesterId.value : this.semesterId),
        createdUserId:
            (createdUserId != null ? createdUserId.value : this.createdUserId));
  }
}

@JsonSerializable(explicitToJson: true)
class SessionEventUpdate {
  SessionEventUpdate({
    this.eventTypeId,
    this.date,
    this.time,
    this.isRemotely,
    this.disciplineId,
    this.placeId,
    required this.groups,
    required this.teachers,
  });

  factory SessionEventUpdate.fromJson(Map<String, dynamic> json) =>
      _$SessionEventUpdateFromJson(json);

  @JsonKey(
    name: 'event_type_id',
    toJson: sessionEventTypeToJson,
    fromJson: sessionEventTypeFromJson,
  )
  final enums.SessionEventType? eventTypeId;
  @JsonKey(name: 'date')
  final String? date;
  @JsonKey(name: 'time')
  final String? time;
  @JsonKey(name: 'is_remotely')
  final bool? isRemotely;
  @JsonKey(name: 'discipline_id')
  final int? disciplineId;
  @JsonKey(name: 'place_id')
  final int? placeId;
  @JsonKey(name: 'groups', defaultValue: <int>[])
  final List<int> groups;
  @JsonKey(name: 'teachers', defaultValue: <int>[])
  final List<int> teachers;
  static const fromJsonFactory = _$SessionEventUpdateFromJson;
  static const toJsonFactory = _$SessionEventUpdateToJson;
  Map<String, dynamic> toJson() => _$SessionEventUpdateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SessionEventUpdate &&
            (identical(other.eventTypeId, eventTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.eventTypeId, eventTypeId)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.isRemotely, isRemotely) ||
                const DeepCollectionEquality()
                    .equals(other.isRemotely, isRemotely)) &&
            (identical(other.disciplineId, disciplineId) ||
                const DeepCollectionEquality()
                    .equals(other.disciplineId, disciplineId)) &&
            (identical(other.placeId, placeId) ||
                const DeepCollectionEquality()
                    .equals(other.placeId, placeId)) &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)) &&
            (identical(other.teachers, teachers) ||
                const DeepCollectionEquality()
                    .equals(other.teachers, teachers)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(eventTypeId) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(isRemotely) ^
      const DeepCollectionEquality().hash(disciplineId) ^
      const DeepCollectionEquality().hash(placeId) ^
      const DeepCollectionEquality().hash(groups) ^
      const DeepCollectionEquality().hash(teachers) ^
      runtimeType.hashCode;
}

extension $SessionEventUpdateExtension on SessionEventUpdate {
  SessionEventUpdate copyWith(
      {enums.SessionEventType? eventTypeId,
      String? date,
      String? time,
      bool? isRemotely,
      int? disciplineId,
      int? placeId,
      List<int>? groups,
      List<int>? teachers}) {
    return SessionEventUpdate(
        eventTypeId: eventTypeId ?? this.eventTypeId,
        date: date ?? this.date,
        time: time ?? this.time,
        isRemotely: isRemotely ?? this.isRemotely,
        disciplineId: disciplineId ?? this.disciplineId,
        placeId: placeId ?? this.placeId,
        groups: groups ?? this.groups,
        teachers: teachers ?? this.teachers);
  }

  SessionEventUpdate copyWithWrapped(
      {Wrapped<enums.SessionEventType?>? eventTypeId,
      Wrapped<String?>? date,
      Wrapped<String?>? time,
      Wrapped<bool?>? isRemotely,
      Wrapped<int?>? disciplineId,
      Wrapped<int?>? placeId,
      Wrapped<List<int>>? groups,
      Wrapped<List<int>>? teachers}) {
    return SessionEventUpdate(
        eventTypeId:
            (eventTypeId != null ? eventTypeId.value : this.eventTypeId),
        date: (date != null ? date.value : this.date),
        time: (time != null ? time.value : this.time),
        isRemotely: (isRemotely != null ? isRemotely.value : this.isRemotely),
        disciplineId:
            (disciplineId != null ? disciplineId.value : this.disciplineId),
        placeId: (placeId != null ? placeId.value : this.placeId),
        groups: (groups != null ? groups.value : this.groups),
        teachers: (teachers != null ? teachers.value : this.teachers));
  }
}

@JsonSerializable(explicitToJson: true)
class SessionEventUpdateWithParams {
  SessionEventUpdateWithParams({
    this.ignoreCollisions,
    this.notify,
    required this.sessionEvent,
  });

  factory SessionEventUpdateWithParams.fromJson(Map<String, dynamic> json) =>
      _$SessionEventUpdateWithParamsFromJson(json);

  @JsonKey(name: 'ignore_collisions', defaultValue: false)
  final bool? ignoreCollisions;
  @JsonKey(name: 'notify', defaultValue: false)
  final bool? notify;
  @JsonKey(name: 'session_event')
  final SessionEventUpdate sessionEvent;
  static const fromJsonFactory = _$SessionEventUpdateWithParamsFromJson;
  static const toJsonFactory = _$SessionEventUpdateWithParamsToJson;
  Map<String, dynamic> toJson() => _$SessionEventUpdateWithParamsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SessionEventUpdateWithParams &&
            (identical(other.ignoreCollisions, ignoreCollisions) ||
                const DeepCollectionEquality()
                    .equals(other.ignoreCollisions, ignoreCollisions)) &&
            (identical(other.notify, notify) ||
                const DeepCollectionEquality().equals(other.notify, notify)) &&
            (identical(other.sessionEvent, sessionEvent) ||
                const DeepCollectionEquality()
                    .equals(other.sessionEvent, sessionEvent)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ignoreCollisions) ^
      const DeepCollectionEquality().hash(notify) ^
      const DeepCollectionEquality().hash(sessionEvent) ^
      runtimeType.hashCode;
}

extension $SessionEventUpdateWithParamsExtension
    on SessionEventUpdateWithParams {
  SessionEventUpdateWithParams copyWith(
      {bool? ignoreCollisions,
      bool? notify,
      SessionEventUpdate? sessionEvent}) {
    return SessionEventUpdateWithParams(
        ignoreCollisions: ignoreCollisions ?? this.ignoreCollisions,
        notify: notify ?? this.notify,
        sessionEvent: sessionEvent ?? this.sessionEvent);
  }

  SessionEventUpdateWithParams copyWithWrapped(
      {Wrapped<bool?>? ignoreCollisions,
      Wrapped<bool?>? notify,
      Wrapped<SessionEventUpdate>? sessionEvent}) {
    return SessionEventUpdateWithParams(
        ignoreCollisions: (ignoreCollisions != null
            ? ignoreCollisions.value
            : this.ignoreCollisions),
        notify: (notify != null ? notify.value : this.notify),
        sessionEvent:
            (sessionEvent != null ? sessionEvent.value : this.sessionEvent));
  }
}

@JsonSerializable(explicitToJson: true)
class SessionSettingsUpdate {
  SessionSettingsUpdate({
    this.sessionEventBeforeDays,
    this.sessionEventBeforeDaysTime,
    this.sessionEventTomorrowTime,
  });

  factory SessionSettingsUpdate.fromJson(Map<String, dynamic> json) =>
      _$SessionSettingsUpdateFromJson(json);

  @JsonKey(name: 'session_event_before_days')
  final int? sessionEventBeforeDays;
  @JsonKey(name: 'session_event_before_days_time')
  final String? sessionEventBeforeDaysTime;
  @JsonKey(name: 'session_event_tomorrow_time')
  final String? sessionEventTomorrowTime;
  static const fromJsonFactory = _$SessionSettingsUpdateFromJson;
  static const toJsonFactory = _$SessionSettingsUpdateToJson;
  Map<String, dynamic> toJson() => _$SessionSettingsUpdateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SessionSettingsUpdate &&
            (identical(other.sessionEventBeforeDays, sessionEventBeforeDays) ||
                const DeepCollectionEquality().equals(
                    other.sessionEventBeforeDays, sessionEventBeforeDays)) &&
            (identical(other.sessionEventBeforeDaysTime,
                    sessionEventBeforeDaysTime) ||
                const DeepCollectionEquality().equals(
                    other.sessionEventBeforeDaysTime,
                    sessionEventBeforeDaysTime)) &&
            (identical(
                    other.sessionEventTomorrowTime, sessionEventTomorrowTime) ||
                const DeepCollectionEquality().equals(
                    other.sessionEventTomorrowTime, sessionEventTomorrowTime)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(sessionEventBeforeDays) ^
      const DeepCollectionEquality().hash(sessionEventBeforeDaysTime) ^
      const DeepCollectionEquality().hash(sessionEventTomorrowTime) ^
      runtimeType.hashCode;
}

extension $SessionSettingsUpdateExtension on SessionSettingsUpdate {
  SessionSettingsUpdate copyWith(
      {int? sessionEventBeforeDays,
      String? sessionEventBeforeDaysTime,
      String? sessionEventTomorrowTime}) {
    return SessionSettingsUpdate(
        sessionEventBeforeDays:
            sessionEventBeforeDays ?? this.sessionEventBeforeDays,
        sessionEventBeforeDaysTime:
            sessionEventBeforeDaysTime ?? this.sessionEventBeforeDaysTime,
        sessionEventTomorrowTime:
            sessionEventTomorrowTime ?? this.sessionEventTomorrowTime);
  }

  SessionSettingsUpdate copyWithWrapped(
      {Wrapped<int?>? sessionEventBeforeDays,
      Wrapped<String?>? sessionEventBeforeDaysTime,
      Wrapped<String?>? sessionEventTomorrowTime}) {
    return SessionSettingsUpdate(
        sessionEventBeforeDays: (sessionEventBeforeDays != null
            ? sessionEventBeforeDays.value
            : this.sessionEventBeforeDays),
        sessionEventBeforeDaysTime: (sessionEventBeforeDaysTime != null
            ? sessionEventBeforeDaysTime.value
            : this.sessionEventBeforeDaysTime),
        sessionEventTomorrowTime: (sessionEventTomorrowTime != null
            ? sessionEventTomorrowTime.value
            : this.sessionEventTomorrowTime));
  }
}

@JsonSerializable(explicitToJson: true)
class Statistic {
  Statistic({
    this.lastActivityBot,
    this.lastActivityWeb,
  });

  factory Statistic.fromJson(Map<String, dynamic> json) =>
      _$StatisticFromJson(json);

  @JsonKey(name: 'last_activity_bot')
  final DateTime? lastActivityBot;
  @JsonKey(name: 'last_activity_web')
  final DateTime? lastActivityWeb;
  static const fromJsonFactory = _$StatisticFromJson;
  static const toJsonFactory = _$StatisticToJson;
  Map<String, dynamic> toJson() => _$StatisticToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Statistic &&
            (identical(other.lastActivityBot, lastActivityBot) ||
                const DeepCollectionEquality()
                    .equals(other.lastActivityBot, lastActivityBot)) &&
            (identical(other.lastActivityWeb, lastActivityWeb) ||
                const DeepCollectionEquality()
                    .equals(other.lastActivityWeb, lastActivityWeb)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(lastActivityBot) ^
      const DeepCollectionEquality().hash(lastActivityWeb) ^
      runtimeType.hashCode;
}

extension $StatisticExtension on Statistic {
  Statistic copyWith({DateTime? lastActivityBot, DateTime? lastActivityWeb}) {
    return Statistic(
        lastActivityBot: lastActivityBot ?? this.lastActivityBot,
        lastActivityWeb: lastActivityWeb ?? this.lastActivityWeb);
  }

  Statistic copyWithWrapped(
      {Wrapped<DateTime?>? lastActivityBot,
      Wrapped<DateTime?>? lastActivityWeb}) {
    return Statistic(
        lastActivityBot: (lastActivityBot != null
            ? lastActivityBot.value
            : this.lastActivityBot),
        lastActivityWeb: (lastActivityWeb != null
            ? lastActivityWeb.value
            : this.lastActivityWeb));
  }
}

@JsonSerializable(explicitToJson: true)
class Status {
  Status({
    required this.status,
  });

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);

  @JsonKey(name: 'status')
  final String status;
  static const fromJsonFactory = _$StatusFromJson;
  static const toJsonFactory = _$StatusToJson;
  Map<String, dynamic> toJson() => _$StatusToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Status &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^ runtimeType.hashCode;
}

extension $StatusExtension on Status {
  Status copyWith({String? status}) {
    return Status(status: status ?? this.status);
  }

  Status copyWithWrapped({Wrapped<String>? status}) {
    return Status(status: (status != null ? status.value : this.status));
  }
}

@JsonSerializable(explicitToJson: true)
class StudentCreate {
  StudentCreate({
    required this.groupId,
    this.isMain,
    this.isDeputyMain,
    this.user,
    required this.person,
  });

  factory StudentCreate.fromJson(Map<String, dynamic> json) =>
      _$StudentCreateFromJson(json);

  @JsonKey(name: 'group_id')
  final int groupId;
  @JsonKey(name: 'is_main', defaultValue: false)
  final bool? isMain;
  @JsonKey(name: 'is_deputy_main', defaultValue: false)
  final bool? isDeputyMain;
  @JsonKey(name: 'user')
  final UserBaseCreate? user;
  @JsonKey(name: 'person')
  final PersonCreate person;
  static const fromJsonFactory = _$StudentCreateFromJson;
  static const toJsonFactory = _$StudentCreateToJson;
  Map<String, dynamic> toJson() => _$StudentCreateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StudentCreate &&
            (identical(other.groupId, groupId) ||
                const DeepCollectionEquality()
                    .equals(other.groupId, groupId)) &&
            (identical(other.isMain, isMain) ||
                const DeepCollectionEquality().equals(other.isMain, isMain)) &&
            (identical(other.isDeputyMain, isDeputyMain) ||
                const DeepCollectionEquality()
                    .equals(other.isDeputyMain, isDeputyMain)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.person, person) ||
                const DeepCollectionEquality().equals(other.person, person)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(groupId) ^
      const DeepCollectionEquality().hash(isMain) ^
      const DeepCollectionEquality().hash(isDeputyMain) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(person) ^
      runtimeType.hashCode;
}

extension $StudentCreateExtension on StudentCreate {
  StudentCreate copyWith(
      {int? groupId,
      bool? isMain,
      bool? isDeputyMain,
      UserBaseCreate? user,
      PersonCreate? person}) {
    return StudentCreate(
        groupId: groupId ?? this.groupId,
        isMain: isMain ?? this.isMain,
        isDeputyMain: isDeputyMain ?? this.isDeputyMain,
        user: user ?? this.user,
        person: person ?? this.person);
  }

  StudentCreate copyWithWrapped(
      {Wrapped<int>? groupId,
      Wrapped<bool?>? isMain,
      Wrapped<bool?>? isDeputyMain,
      Wrapped<UserBaseCreate?>? user,
      Wrapped<PersonCreate>? person}) {
    return StudentCreate(
        groupId: (groupId != null ? groupId.value : this.groupId),
        isMain: (isMain != null ? isMain.value : this.isMain),
        isDeputyMain:
            (isDeputyMain != null ? isDeputyMain.value : this.isDeputyMain),
        user: (user != null ? user.value : this.user),
        person: (person != null ? person.value : this.person));
  }
}

@JsonSerializable(explicitToJson: true)
class StudentInDb {
  StudentInDb({
    required this.fullName,
    required this.firstName,
    required this.lastName,
    this.middleName,
    required this.type,
    this.gender,
    this.birthday,
    required this.id,
    required this.group,
    required this.isMain,
    required this.isDeputyMain,
  });

  factory StudentInDb.fromJson(Map<String, dynamic> json) =>
      _$StudentInDbFromJson(json);

  @JsonKey(name: 'full_name')
  final String fullName;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  @JsonKey(name: 'middle_name')
  final String? middleName;
  @JsonKey(
    name: 'type',
    toJson: personTypeToJson,
    fromJson: personTypeFromJson,
  )
  final enums.PersonType type;
  @JsonKey(name: 'gender')
  final bool? gender;
  @JsonKey(name: 'birthday', toJson: _dateToJson)
  final DateTime? birthday;
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'group')
  final GroupFullInDb group;
  @JsonKey(name: 'is_main')
  final bool isMain;
  @JsonKey(name: 'is_deputy_main')
  final bool isDeputyMain;
  static const fromJsonFactory = _$StudentInDbFromJson;
  static const toJsonFactory = _$StudentInDbToJson;
  Map<String, dynamic> toJson() => _$StudentInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StudentInDb &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.middleName, middleName) ||
                const DeepCollectionEquality()
                    .equals(other.middleName, middleName)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.birthday, birthday) ||
                const DeepCollectionEquality()
                    .equals(other.birthday, birthday)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.group, group) ||
                const DeepCollectionEquality().equals(other.group, group)) &&
            (identical(other.isMain, isMain) ||
                const DeepCollectionEquality().equals(other.isMain, isMain)) &&
            (identical(other.isDeputyMain, isDeputyMain) ||
                const DeepCollectionEquality()
                    .equals(other.isDeputyMain, isDeputyMain)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(middleName) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(birthday) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(group) ^
      const DeepCollectionEquality().hash(isMain) ^
      const DeepCollectionEquality().hash(isDeputyMain) ^
      runtimeType.hashCode;
}

extension $StudentInDbExtension on StudentInDb {
  StudentInDb copyWith(
      {String? fullName,
      String? firstName,
      String? lastName,
      String? middleName,
      enums.PersonType? type,
      bool? gender,
      DateTime? birthday,
      int? id,
      GroupFullInDb? group,
      bool? isMain,
      bool? isDeputyMain}) {
    return StudentInDb(
        fullName: fullName ?? this.fullName,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        middleName: middleName ?? this.middleName,
        type: type ?? this.type,
        gender: gender ?? this.gender,
        birthday: birthday ?? this.birthday,
        id: id ?? this.id,
        group: group ?? this.group,
        isMain: isMain ?? this.isMain,
        isDeputyMain: isDeputyMain ?? this.isDeputyMain);
  }

  StudentInDb copyWithWrapped(
      {Wrapped<String>? fullName,
      Wrapped<String>? firstName,
      Wrapped<String>? lastName,
      Wrapped<String?>? middleName,
      Wrapped<enums.PersonType>? type,
      Wrapped<bool?>? gender,
      Wrapped<DateTime?>? birthday,
      Wrapped<int>? id,
      Wrapped<GroupFullInDb>? group,
      Wrapped<bool>? isMain,
      Wrapped<bool>? isDeputyMain}) {
    return StudentInDb(
        fullName: (fullName != null ? fullName.value : this.fullName),
        firstName: (firstName != null ? firstName.value : this.firstName),
        lastName: (lastName != null ? lastName.value : this.lastName),
        middleName: (middleName != null ? middleName.value : this.middleName),
        type: (type != null ? type.value : this.type),
        gender: (gender != null ? gender.value : this.gender),
        birthday: (birthday != null ? birthday.value : this.birthday),
        id: (id != null ? id.value : this.id),
        group: (group != null ? group.value : this.group),
        isMain: (isMain != null ? isMain.value : this.isMain),
        isDeputyMain:
            (isDeputyMain != null ? isDeputyMain.value : this.isDeputyMain));
  }
}

@JsonSerializable(explicitToJson: true)
class StudentShortInDb {
  StudentShortInDb({
    required this.fullName,
    required this.firstName,
    required this.lastName,
    this.middleName,
    required this.type,
    this.gender,
    this.birthday,
    required this.groupId,
    this.isMain,
    this.isDeputyMain,
    required this.id,
  });

  factory StudentShortInDb.fromJson(Map<String, dynamic> json) =>
      _$StudentShortInDbFromJson(json);

  @JsonKey(name: 'full_name')
  final String fullName;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  @JsonKey(name: 'middle_name')
  final String? middleName;
  @JsonKey(
    name: 'type',
    toJson: personTypeToJson,
    fromJson: personTypeFromJson,
  )
  final enums.PersonType type;
  @JsonKey(name: 'gender')
  final bool? gender;
  @JsonKey(name: 'birthday', toJson: _dateToJson)
  final DateTime? birthday;
  @JsonKey(name: 'group_id')
  final int groupId;
  @JsonKey(name: 'is_main', defaultValue: false)
  final bool? isMain;
  @JsonKey(name: 'is_deputy_main', defaultValue: false)
  final bool? isDeputyMain;
  @JsonKey(name: 'id')
  final int id;
  static const fromJsonFactory = _$StudentShortInDbFromJson;
  static const toJsonFactory = _$StudentShortInDbToJson;
  Map<String, dynamic> toJson() => _$StudentShortInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StudentShortInDb &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.middleName, middleName) ||
                const DeepCollectionEquality()
                    .equals(other.middleName, middleName)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.birthday, birthday) ||
                const DeepCollectionEquality()
                    .equals(other.birthday, birthday)) &&
            (identical(other.groupId, groupId) ||
                const DeepCollectionEquality()
                    .equals(other.groupId, groupId)) &&
            (identical(other.isMain, isMain) ||
                const DeepCollectionEquality().equals(other.isMain, isMain)) &&
            (identical(other.isDeputyMain, isDeputyMain) ||
                const DeepCollectionEquality()
                    .equals(other.isDeputyMain, isDeputyMain)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(middleName) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(birthday) ^
      const DeepCollectionEquality().hash(groupId) ^
      const DeepCollectionEquality().hash(isMain) ^
      const DeepCollectionEquality().hash(isDeputyMain) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $StudentShortInDbExtension on StudentShortInDb {
  StudentShortInDb copyWith(
      {String? fullName,
      String? firstName,
      String? lastName,
      String? middleName,
      enums.PersonType? type,
      bool? gender,
      DateTime? birthday,
      int? groupId,
      bool? isMain,
      bool? isDeputyMain,
      int? id}) {
    return StudentShortInDb(
        fullName: fullName ?? this.fullName,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        middleName: middleName ?? this.middleName,
        type: type ?? this.type,
        gender: gender ?? this.gender,
        birthday: birthday ?? this.birthday,
        groupId: groupId ?? this.groupId,
        isMain: isMain ?? this.isMain,
        isDeputyMain: isDeputyMain ?? this.isDeputyMain,
        id: id ?? this.id);
  }

  StudentShortInDb copyWithWrapped(
      {Wrapped<String>? fullName,
      Wrapped<String>? firstName,
      Wrapped<String>? lastName,
      Wrapped<String?>? middleName,
      Wrapped<enums.PersonType>? type,
      Wrapped<bool?>? gender,
      Wrapped<DateTime?>? birthday,
      Wrapped<int>? groupId,
      Wrapped<bool?>? isMain,
      Wrapped<bool?>? isDeputyMain,
      Wrapped<int>? id}) {
    return StudentShortInDb(
        fullName: (fullName != null ? fullName.value : this.fullName),
        firstName: (firstName != null ? firstName.value : this.firstName),
        lastName: (lastName != null ? lastName.value : this.lastName),
        middleName: (middleName != null ? middleName.value : this.middleName),
        type: (type != null ? type.value : this.type),
        gender: (gender != null ? gender.value : this.gender),
        birthday: (birthday != null ? birthday.value : this.birthday),
        groupId: (groupId != null ? groupId.value : this.groupId),
        isMain: (isMain != null ? isMain.value : this.isMain),
        isDeputyMain:
            (isDeputyMain != null ? isDeputyMain.value : this.isDeputyMain),
        id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class StudentUpdate {
  StudentUpdate({
    required this.groupId,
    this.isMain,
    this.isDeputyMain,
    required this.person,
  });

  factory StudentUpdate.fromJson(Map<String, dynamic> json) =>
      _$StudentUpdateFromJson(json);

  @JsonKey(name: 'group_id')
  final int groupId;
  @JsonKey(name: 'is_main', defaultValue: false)
  final bool? isMain;
  @JsonKey(name: 'is_deputy_main', defaultValue: false)
  final bool? isDeputyMain;
  @JsonKey(name: 'person')
  final PersonUpdate person;
  static const fromJsonFactory = _$StudentUpdateFromJson;
  static const toJsonFactory = _$StudentUpdateToJson;
  Map<String, dynamic> toJson() => _$StudentUpdateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StudentUpdate &&
            (identical(other.groupId, groupId) ||
                const DeepCollectionEquality()
                    .equals(other.groupId, groupId)) &&
            (identical(other.isMain, isMain) ||
                const DeepCollectionEquality().equals(other.isMain, isMain)) &&
            (identical(other.isDeputyMain, isDeputyMain) ||
                const DeepCollectionEquality()
                    .equals(other.isDeputyMain, isDeputyMain)) &&
            (identical(other.person, person) ||
                const DeepCollectionEquality().equals(other.person, person)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(groupId) ^
      const DeepCollectionEquality().hash(isMain) ^
      const DeepCollectionEquality().hash(isDeputyMain) ^
      const DeepCollectionEquality().hash(person) ^
      runtimeType.hashCode;
}

extension $StudentUpdateExtension on StudentUpdate {
  StudentUpdate copyWith(
      {int? groupId, bool? isMain, bool? isDeputyMain, PersonUpdate? person}) {
    return StudentUpdate(
        groupId: groupId ?? this.groupId,
        isMain: isMain ?? this.isMain,
        isDeputyMain: isDeputyMain ?? this.isDeputyMain,
        person: person ?? this.person);
  }

  StudentUpdate copyWithWrapped(
      {Wrapped<int>? groupId,
      Wrapped<bool?>? isMain,
      Wrapped<bool?>? isDeputyMain,
      Wrapped<PersonUpdate>? person}) {
    return StudentUpdate(
        groupId: (groupId != null ? groupId.value : this.groupId),
        isMain: (isMain != null ? isMain.value : this.isMain),
        isDeputyMain:
            (isDeputyMain != null ? isDeputyMain.value : this.isDeputyMain),
        person: (person != null ? person.value : this.person));
  }
}

@JsonSerializable(explicitToJson: true)
class TeacherAcademicDegreeInDb {
  TeacherAcademicDegreeInDb({
    required this.name,
    required this.shortName,
    required this.id,
  });

  factory TeacherAcademicDegreeInDb.fromJson(Map<String, dynamic> json) =>
      _$TeacherAcademicDegreeInDbFromJson(json);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'short_name')
  final String shortName;
  @JsonKey(name: 'id')
  final int id;
  static const fromJsonFactory = _$TeacherAcademicDegreeInDbFromJson;
  static const toJsonFactory = _$TeacherAcademicDegreeInDbToJson;
  Map<String, dynamic> toJson() => _$TeacherAcademicDegreeInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TeacherAcademicDegreeInDb &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.shortName, shortName) ||
                const DeepCollectionEquality()
                    .equals(other.shortName, shortName)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(shortName) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $TeacherAcademicDegreeInDbExtension on TeacherAcademicDegreeInDb {
  TeacherAcademicDegreeInDb copyWith(
      {String? name, String? shortName, int? id}) {
    return TeacherAcademicDegreeInDb(
        name: name ?? this.name,
        shortName: shortName ?? this.shortName,
        id: id ?? this.id);
  }

  TeacherAcademicDegreeInDb copyWithWrapped(
      {Wrapped<String>? name, Wrapped<String>? shortName, Wrapped<int>? id}) {
    return TeacherAcademicDegreeInDb(
        name: (name != null ? name.value : this.name),
        shortName: (shortName != null ? shortName.value : this.shortName),
        id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class TeacherCreate {
  TeacherCreate({
    this.academicTitle,
    this.academicDegreeId,
    this.user,
    required this.person,
  });

  factory TeacherCreate.fromJson(Map<String, dynamic> json) =>
      _$TeacherCreateFromJson(json);

  @JsonKey(
    name: 'academic_title',
    toJson: teacherAcademicTitleToJson,
    fromJson: teacherAcademicTitleFromJson,
  )
  final enums.TeacherAcademicTitle? academicTitle;
  @JsonKey(name: 'academic_degree_id')
  final int? academicDegreeId;
  @JsonKey(name: 'user')
  final UserBaseCreate? user;
  @JsonKey(name: 'person')
  final PersonCreate person;
  static const fromJsonFactory = _$TeacherCreateFromJson;
  static const toJsonFactory = _$TeacherCreateToJson;
  Map<String, dynamic> toJson() => _$TeacherCreateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TeacherCreate &&
            (identical(other.academicTitle, academicTitle) ||
                const DeepCollectionEquality()
                    .equals(other.academicTitle, academicTitle)) &&
            (identical(other.academicDegreeId, academicDegreeId) ||
                const DeepCollectionEquality()
                    .equals(other.academicDegreeId, academicDegreeId)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.person, person) ||
                const DeepCollectionEquality().equals(other.person, person)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(academicTitle) ^
      const DeepCollectionEquality().hash(academicDegreeId) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(person) ^
      runtimeType.hashCode;
}

extension $TeacherCreateExtension on TeacherCreate {
  TeacherCreate copyWith(
      {enums.TeacherAcademicTitle? academicTitle,
      int? academicDegreeId,
      UserBaseCreate? user,
      PersonCreate? person}) {
    return TeacherCreate(
        academicTitle: academicTitle ?? this.academicTitle,
        academicDegreeId: academicDegreeId ?? this.academicDegreeId,
        user: user ?? this.user,
        person: person ?? this.person);
  }

  TeacherCreate copyWithWrapped(
      {Wrapped<enums.TeacherAcademicTitle?>? academicTitle,
      Wrapped<int?>? academicDegreeId,
      Wrapped<UserBaseCreate?>? user,
      Wrapped<PersonCreate>? person}) {
    return TeacherCreate(
        academicTitle:
            (academicTitle != null ? academicTitle.value : this.academicTitle),
        academicDegreeId: (academicDegreeId != null
            ? academicDegreeId.value
            : this.academicDegreeId),
        user: (user != null ? user.value : this.user),
        person: (person != null ? person.value : this.person));
  }
}

@JsonSerializable(explicitToJson: true)
class TeacherFullInDb {
  TeacherFullInDb({
    required this.fullName,
    required this.firstName,
    required this.lastName,
    this.middleName,
    required this.type,
    this.gender,
    this.birthday,
    this.academicTitle,
    this.academicDegree,
    required this.id,
    this.facultiesIds,
  });

  factory TeacherFullInDb.fromJson(Map<String, dynamic> json) =>
      _$TeacherFullInDbFromJson(json);

  @JsonKey(name: 'full_name')
  final String fullName;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  @JsonKey(name: 'middle_name')
  final String? middleName;
  @JsonKey(
    name: 'type',
    toJson: personTypeToJson,
    fromJson: personTypeFromJson,
  )
  final enums.PersonType type;
  @JsonKey(name: 'gender')
  final bool? gender;
  @JsonKey(name: 'birthday', toJson: _dateToJson)
  final DateTime? birthday;
  @JsonKey(
    name: 'academic_title',
    toJson: teacherAcademicTitleToJson,
    fromJson: teacherAcademicTitleFromJson,
  )
  final enums.TeacherAcademicTitle? academicTitle;
  @JsonKey(name: 'academic_degree')
  final TeacherAcademicDegreeInDb? academicDegree;
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'faculties_ids', defaultValue: <int>[])
  final List<int>? facultiesIds;
  static const fromJsonFactory = _$TeacherFullInDbFromJson;
  static const toJsonFactory = _$TeacherFullInDbToJson;
  Map<String, dynamic> toJson() => _$TeacherFullInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TeacherFullInDb &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.middleName, middleName) ||
                const DeepCollectionEquality()
                    .equals(other.middleName, middleName)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.birthday, birthday) ||
                const DeepCollectionEquality()
                    .equals(other.birthday, birthday)) &&
            (identical(other.academicTitle, academicTitle) ||
                const DeepCollectionEquality()
                    .equals(other.academicTitle, academicTitle)) &&
            (identical(other.academicDegree, academicDegree) ||
                const DeepCollectionEquality()
                    .equals(other.academicDegree, academicDegree)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.facultiesIds, facultiesIds) ||
                const DeepCollectionEquality()
                    .equals(other.facultiesIds, facultiesIds)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(middleName) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(birthday) ^
      const DeepCollectionEquality().hash(academicTitle) ^
      const DeepCollectionEquality().hash(academicDegree) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(facultiesIds) ^
      runtimeType.hashCode;
}

extension $TeacherFullInDbExtension on TeacherFullInDb {
  TeacherFullInDb copyWith(
      {String? fullName,
      String? firstName,
      String? lastName,
      String? middleName,
      enums.PersonType? type,
      bool? gender,
      DateTime? birthday,
      enums.TeacherAcademicTitle? academicTitle,
      TeacherAcademicDegreeInDb? academicDegree,
      int? id,
      List<int>? facultiesIds}) {
    return TeacherFullInDb(
        fullName: fullName ?? this.fullName,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        middleName: middleName ?? this.middleName,
        type: type ?? this.type,
        gender: gender ?? this.gender,
        birthday: birthday ?? this.birthday,
        academicTitle: academicTitle ?? this.academicTitle,
        academicDegree: academicDegree ?? this.academicDegree,
        id: id ?? this.id,
        facultiesIds: facultiesIds ?? this.facultiesIds);
  }

  TeacherFullInDb copyWithWrapped(
      {Wrapped<String>? fullName,
      Wrapped<String>? firstName,
      Wrapped<String>? lastName,
      Wrapped<String?>? middleName,
      Wrapped<enums.PersonType>? type,
      Wrapped<bool?>? gender,
      Wrapped<DateTime?>? birthday,
      Wrapped<enums.TeacherAcademicTitle?>? academicTitle,
      Wrapped<TeacherAcademicDegreeInDb?>? academicDegree,
      Wrapped<int>? id,
      Wrapped<List<int>?>? facultiesIds}) {
    return TeacherFullInDb(
        fullName: (fullName != null ? fullName.value : this.fullName),
        firstName: (firstName != null ? firstName.value : this.firstName),
        lastName: (lastName != null ? lastName.value : this.lastName),
        middleName: (middleName != null ? middleName.value : this.middleName),
        type: (type != null ? type.value : this.type),
        gender: (gender != null ? gender.value : this.gender),
        birthday: (birthday != null ? birthday.value : this.birthday),
        academicTitle:
            (academicTitle != null ? academicTitle.value : this.academicTitle),
        academicDegree: (academicDegree != null
            ? academicDegree.value
            : this.academicDegree),
        id: (id != null ? id.value : this.id),
        facultiesIds:
            (facultiesIds != null ? facultiesIds.value : this.facultiesIds));
  }
}

@JsonSerializable(explicitToJson: true)
class TeacherInDb {
  TeacherInDb({
    this.academicTitle,
    this.academicDegreeId,
    required this.fullName,
    required this.firstName,
    required this.lastName,
    this.middleName,
    required this.type,
    this.gender,
    this.birthday,
    required this.id,
    this.facultiesIds,
  });

  factory TeacherInDb.fromJson(Map<String, dynamic> json) =>
      _$TeacherInDbFromJson(json);

  @JsonKey(
    name: 'academic_title',
    toJson: teacherAcademicTitleToJson,
    fromJson: teacherAcademicTitleFromJson,
  )
  final enums.TeacherAcademicTitle? academicTitle;
  @JsonKey(name: 'academic_degree_id')
  final int? academicDegreeId;
  @JsonKey(name: 'full_name')
  final String fullName;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  @JsonKey(name: 'middle_name')
  final String? middleName;
  @JsonKey(
    name: 'type',
    toJson: personTypeToJson,
    fromJson: personTypeFromJson,
  )
  final enums.PersonType type;
  @JsonKey(name: 'gender')
  final bool? gender;
  @JsonKey(name: 'birthday', toJson: _dateToJson)
  final DateTime? birthday;
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'faculties_ids', defaultValue: <int>[])
  final List<int>? facultiesIds;
  static const fromJsonFactory = _$TeacherInDbFromJson;
  static const toJsonFactory = _$TeacherInDbToJson;
  Map<String, dynamic> toJson() => _$TeacherInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TeacherInDb &&
            (identical(other.academicTitle, academicTitle) ||
                const DeepCollectionEquality()
                    .equals(other.academicTitle, academicTitle)) &&
            (identical(other.academicDegreeId, academicDegreeId) ||
                const DeepCollectionEquality()
                    .equals(other.academicDegreeId, academicDegreeId)) &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.middleName, middleName) ||
                const DeepCollectionEquality()
                    .equals(other.middleName, middleName)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.birthday, birthday) ||
                const DeepCollectionEquality()
                    .equals(other.birthday, birthday)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.facultiesIds, facultiesIds) ||
                const DeepCollectionEquality()
                    .equals(other.facultiesIds, facultiesIds)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(academicTitle) ^
      const DeepCollectionEquality().hash(academicDegreeId) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(middleName) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(birthday) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(facultiesIds) ^
      runtimeType.hashCode;
}

extension $TeacherInDbExtension on TeacherInDb {
  TeacherInDb copyWith(
      {enums.TeacherAcademicTitle? academicTitle,
      int? academicDegreeId,
      String? fullName,
      String? firstName,
      String? lastName,
      String? middleName,
      enums.PersonType? type,
      bool? gender,
      DateTime? birthday,
      int? id,
      List<int>? facultiesIds}) {
    return TeacherInDb(
        academicTitle: academicTitle ?? this.academicTitle,
        academicDegreeId: academicDegreeId ?? this.academicDegreeId,
        fullName: fullName ?? this.fullName,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        middleName: middleName ?? this.middleName,
        type: type ?? this.type,
        gender: gender ?? this.gender,
        birthday: birthday ?? this.birthday,
        id: id ?? this.id,
        facultiesIds: facultiesIds ?? this.facultiesIds);
  }

  TeacherInDb copyWithWrapped(
      {Wrapped<enums.TeacherAcademicTitle?>? academicTitle,
      Wrapped<int?>? academicDegreeId,
      Wrapped<String>? fullName,
      Wrapped<String>? firstName,
      Wrapped<String>? lastName,
      Wrapped<String?>? middleName,
      Wrapped<enums.PersonType>? type,
      Wrapped<bool?>? gender,
      Wrapped<DateTime?>? birthday,
      Wrapped<int>? id,
      Wrapped<List<int>?>? facultiesIds}) {
    return TeacherInDb(
        academicTitle:
            (academicTitle != null ? academicTitle.value : this.academicTitle),
        academicDegreeId: (academicDegreeId != null
            ? academicDegreeId.value
            : this.academicDegreeId),
        fullName: (fullName != null ? fullName.value : this.fullName),
        firstName: (firstName != null ? firstName.value : this.firstName),
        lastName: (lastName != null ? lastName.value : this.lastName),
        middleName: (middleName != null ? middleName.value : this.middleName),
        type: (type != null ? type.value : this.type),
        gender: (gender != null ? gender.value : this.gender),
        birthday: (birthday != null ? birthday.value : this.birthday),
        id: (id != null ? id.value : this.id),
        facultiesIds:
            (facultiesIds != null ? facultiesIds.value : this.facultiesIds));
  }
}

@JsonSerializable(explicitToJson: true)
class TeacherShortInDb {
  TeacherShortInDb({
    required this.id,
    required this.name,
  });

  factory TeacherShortInDb.fromJson(Map<String, dynamic> json) =>
      _$TeacherShortInDbFromJson(json);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  static const fromJsonFactory = _$TeacherShortInDbFromJson;
  static const toJsonFactory = _$TeacherShortInDbToJson;
  Map<String, dynamic> toJson() => _$TeacherShortInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TeacherShortInDb &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $TeacherShortInDbExtension on TeacherShortInDb {
  TeacherShortInDb copyWith({int? id, String? name}) {
    return TeacherShortInDb(id: id ?? this.id, name: name ?? this.name);
  }

  TeacherShortInDb copyWithWrapped({Wrapped<int>? id, Wrapped<String>? name}) {
    return TeacherShortInDb(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class TeacherUpdate {
  TeacherUpdate({
    this.academicTitle,
    this.academicDegreeId,
    required this.person,
  });

  factory TeacherUpdate.fromJson(Map<String, dynamic> json) =>
      _$TeacherUpdateFromJson(json);

  @JsonKey(
    name: 'academic_title',
    toJson: teacherAcademicTitleToJson,
    fromJson: teacherAcademicTitleFromJson,
  )
  final enums.TeacherAcademicTitle? academicTitle;
  @JsonKey(name: 'academic_degree_id')
  final int? academicDegreeId;
  @JsonKey(name: 'person')
  final PersonUpdate person;
  static const fromJsonFactory = _$TeacherUpdateFromJson;
  static const toJsonFactory = _$TeacherUpdateToJson;
  Map<String, dynamic> toJson() => _$TeacherUpdateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TeacherUpdate &&
            (identical(other.academicTitle, academicTitle) ||
                const DeepCollectionEquality()
                    .equals(other.academicTitle, academicTitle)) &&
            (identical(other.academicDegreeId, academicDegreeId) ||
                const DeepCollectionEquality()
                    .equals(other.academicDegreeId, academicDegreeId)) &&
            (identical(other.person, person) ||
                const DeepCollectionEquality().equals(other.person, person)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(academicTitle) ^
      const DeepCollectionEquality().hash(academicDegreeId) ^
      const DeepCollectionEquality().hash(person) ^
      runtimeType.hashCode;
}

extension $TeacherUpdateExtension on TeacherUpdate {
  TeacherUpdate copyWith(
      {enums.TeacherAcademicTitle? academicTitle,
      int? academicDegreeId,
      PersonUpdate? person}) {
    return TeacherUpdate(
        academicTitle: academicTitle ?? this.academicTitle,
        academicDegreeId: academicDegreeId ?? this.academicDegreeId,
        person: person ?? this.person);
  }

  TeacherUpdate copyWithWrapped(
      {Wrapped<enums.TeacherAcademicTitle?>? academicTitle,
      Wrapped<int?>? academicDegreeId,
      Wrapped<PersonUpdate>? person}) {
    return TeacherUpdate(
        academicTitle:
            (academicTitle != null ? academicTitle.value : this.academicTitle),
        academicDegreeId: (academicDegreeId != null
            ? academicDegreeId.value
            : this.academicDegreeId),
        person: (person != null ? person.value : this.person));
  }
}

@JsonSerializable(explicitToJson: true)
class Telegram {
  Telegram({
    this.timetableTodayLessons,
    this.timetableTomorrowLessons,
    this.timetableIsBeforeLesson,
    this.sessionEventBeforeDays,
    this.sessionEventBeforeDaysTime,
    this.sessionEventTomorrowTime,
    this.weatherSendTime,
    this.weatherSendDaily,
    this.weatherSendLessons,
    this.weatherSendIsWeekend,
    this.attendanceLectureTime,
    this.attendancePracticeTime,
    this.setThemeTime,
  });

  factory Telegram.fromJson(Map<String, dynamic> json) =>
      _$TelegramFromJson(json);

  @JsonKey(name: 'timetable_today_lessons')
  final String? timetableTodayLessons;
  @JsonKey(name: 'timetable_tomorrow_lessons')
  final String? timetableTomorrowLessons;
  @JsonKey(name: 'timetable_is_before_lesson')
  final String? timetableIsBeforeLesson;
  @JsonKey(name: 'session_event_before_days')
  final int? sessionEventBeforeDays;
  @JsonKey(name: 'session_event_before_days_time')
  final String? sessionEventBeforeDaysTime;
  @JsonKey(name: 'session_event_tomorrow_time')
  final String? sessionEventTomorrowTime;
  @JsonKey(name: 'weather_send_time')
  final String? weatherSendTime;
  @JsonKey(name: 'weather_send_daily')
  final bool? weatherSendDaily;
  @JsonKey(name: 'weather_send_lessons')
  final bool? weatherSendLessons;
  @JsonKey(name: 'weather_send_is_weekend')
  final bool? weatherSendIsWeekend;
  @JsonKey(name: 'attendance_lecture_time')
  final String? attendanceLectureTime;
  @JsonKey(name: 'attendance_practice_time')
  final String? attendancePracticeTime;
  @JsonKey(name: 'set_theme_time')
  final String? setThemeTime;
  static const fromJsonFactory = _$TelegramFromJson;
  static const toJsonFactory = _$TelegramToJson;
  Map<String, dynamic> toJson() => _$TelegramToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Telegram &&
            (identical(other.timetableTodayLessons, timetableTodayLessons) ||
                const DeepCollectionEquality().equals(
                    other.timetableTodayLessons, timetableTodayLessons)) &&
            (identical(other.timetableTomorrowLessons, timetableTomorrowLessons) ||
                const DeepCollectionEquality().equals(
                    other.timetableTomorrowLessons,
                    timetableTomorrowLessons)) &&
            (identical(other.timetableIsBeforeLesson, timetableIsBeforeLesson) ||
                const DeepCollectionEquality().equals(
                    other.timetableIsBeforeLesson, timetableIsBeforeLesson)) &&
            (identical(other.sessionEventBeforeDays, sessionEventBeforeDays) ||
                const DeepCollectionEquality().equals(
                    other.sessionEventBeforeDays, sessionEventBeforeDays)) &&
            (identical(other.sessionEventBeforeDaysTime, sessionEventBeforeDaysTime) ||
                const DeepCollectionEquality().equals(
                    other.sessionEventBeforeDaysTime,
                    sessionEventBeforeDaysTime)) &&
            (identical(other.sessionEventTomorrowTime, sessionEventTomorrowTime) ||
                const DeepCollectionEquality().equals(
                    other.sessionEventTomorrowTime,
                    sessionEventTomorrowTime)) &&
            (identical(other.weatherSendTime, weatherSendTime) ||
                const DeepCollectionEquality()
                    .equals(other.weatherSendTime, weatherSendTime)) &&
            (identical(other.weatherSendDaily, weatherSendDaily) ||
                const DeepCollectionEquality()
                    .equals(other.weatherSendDaily, weatherSendDaily)) &&
            (identical(other.weatherSendLessons, weatherSendLessons) ||
                const DeepCollectionEquality()
                    .equals(other.weatherSendLessons, weatherSendLessons)) &&
            (identical(other.weatherSendIsWeekend, weatherSendIsWeekend) ||
                const DeepCollectionEquality().equals(
                    other.weatherSendIsWeekend, weatherSendIsWeekend)) &&
            (identical(other.attendanceLectureTime, attendanceLectureTime) || const DeepCollectionEquality().equals(other.attendanceLectureTime, attendanceLectureTime)) &&
            (identical(other.attendancePracticeTime, attendancePracticeTime) || const DeepCollectionEquality().equals(other.attendancePracticeTime, attendancePracticeTime)) &&
            (identical(other.setThemeTime, setThemeTime) || const DeepCollectionEquality().equals(other.setThemeTime, setThemeTime)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(timetableTodayLessons) ^
      const DeepCollectionEquality().hash(timetableTomorrowLessons) ^
      const DeepCollectionEquality().hash(timetableIsBeforeLesson) ^
      const DeepCollectionEquality().hash(sessionEventBeforeDays) ^
      const DeepCollectionEquality().hash(sessionEventBeforeDaysTime) ^
      const DeepCollectionEquality().hash(sessionEventTomorrowTime) ^
      const DeepCollectionEquality().hash(weatherSendTime) ^
      const DeepCollectionEquality().hash(weatherSendDaily) ^
      const DeepCollectionEquality().hash(weatherSendLessons) ^
      const DeepCollectionEquality().hash(weatherSendIsWeekend) ^
      const DeepCollectionEquality().hash(attendanceLectureTime) ^
      const DeepCollectionEquality().hash(attendancePracticeTime) ^
      const DeepCollectionEquality().hash(setThemeTime) ^
      runtimeType.hashCode;
}

extension $TelegramExtension on Telegram {
  Telegram copyWith(
      {String? timetableTodayLessons,
      String? timetableTomorrowLessons,
      String? timetableIsBeforeLesson,
      int? sessionEventBeforeDays,
      String? sessionEventBeforeDaysTime,
      String? sessionEventTomorrowTime,
      String? weatherSendTime,
      bool? weatherSendDaily,
      bool? weatherSendLessons,
      bool? weatherSendIsWeekend,
      String? attendanceLectureTime,
      String? attendancePracticeTime,
      String? setThemeTime}) {
    return Telegram(
        timetableTodayLessons:
            timetableTodayLessons ?? this.timetableTodayLessons,
        timetableTomorrowLessons:
            timetableTomorrowLessons ?? this.timetableTomorrowLessons,
        timetableIsBeforeLesson:
            timetableIsBeforeLesson ?? this.timetableIsBeforeLesson,
        sessionEventBeforeDays:
            sessionEventBeforeDays ?? this.sessionEventBeforeDays,
        sessionEventBeforeDaysTime:
            sessionEventBeforeDaysTime ?? this.sessionEventBeforeDaysTime,
        sessionEventTomorrowTime:
            sessionEventTomorrowTime ?? this.sessionEventTomorrowTime,
        weatherSendTime: weatherSendTime ?? this.weatherSendTime,
        weatherSendDaily: weatherSendDaily ?? this.weatherSendDaily,
        weatherSendLessons: weatherSendLessons ?? this.weatherSendLessons,
        weatherSendIsWeekend: weatherSendIsWeekend ?? this.weatherSendIsWeekend,
        attendanceLectureTime:
            attendanceLectureTime ?? this.attendanceLectureTime,
        attendancePracticeTime:
            attendancePracticeTime ?? this.attendancePracticeTime,
        setThemeTime: setThemeTime ?? this.setThemeTime);
  }

  Telegram copyWithWrapped(
      {Wrapped<String?>? timetableTodayLessons,
      Wrapped<String?>? timetableTomorrowLessons,
      Wrapped<String?>? timetableIsBeforeLesson,
      Wrapped<int?>? sessionEventBeforeDays,
      Wrapped<String?>? sessionEventBeforeDaysTime,
      Wrapped<String?>? sessionEventTomorrowTime,
      Wrapped<String?>? weatherSendTime,
      Wrapped<bool?>? weatherSendDaily,
      Wrapped<bool?>? weatherSendLessons,
      Wrapped<bool?>? weatherSendIsWeekend,
      Wrapped<String?>? attendanceLectureTime,
      Wrapped<String?>? attendancePracticeTime,
      Wrapped<String?>? setThemeTime}) {
    return Telegram(
        timetableTodayLessons: (timetableTodayLessons != null
            ? timetableTodayLessons.value
            : this.timetableTodayLessons),
        timetableTomorrowLessons: (timetableTomorrowLessons != null
            ? timetableTomorrowLessons.value
            : this.timetableTomorrowLessons),
        timetableIsBeforeLesson: (timetableIsBeforeLesson != null
            ? timetableIsBeforeLesson.value
            : this.timetableIsBeforeLesson),
        sessionEventBeforeDays: (sessionEventBeforeDays != null
            ? sessionEventBeforeDays.value
            : this.sessionEventBeforeDays),
        sessionEventBeforeDaysTime: (sessionEventBeforeDaysTime != null
            ? sessionEventBeforeDaysTime.value
            : this.sessionEventBeforeDaysTime),
        sessionEventTomorrowTime: (sessionEventTomorrowTime != null
            ? sessionEventTomorrowTime.value
            : this.sessionEventTomorrowTime),
        weatherSendTime: (weatherSendTime != null
            ? weatherSendTime.value
            : this.weatherSendTime),
        weatherSendDaily: (weatherSendDaily != null
            ? weatherSendDaily.value
            : this.weatherSendDaily),
        weatherSendLessons: (weatherSendLessons != null
            ? weatherSendLessons.value
            : this.weatherSendLessons),
        weatherSendIsWeekend: (weatherSendIsWeekend != null
            ? weatherSendIsWeekend.value
            : this.weatherSendIsWeekend),
        attendanceLectureTime: (attendanceLectureTime != null
            ? attendanceLectureTime.value
            : this.attendanceLectureTime),
        attendancePracticeTime: (attendancePracticeTime != null
            ? attendancePracticeTime.value
            : this.attendancePracticeTime),
        setThemeTime:
            (setThemeTime != null ? setThemeTime.value : this.setThemeTime));
  }
}

@JsonSerializable(explicitToJson: true)
class TelegramId {
  TelegramId({
    required this.telegramId,
  });

  factory TelegramId.fromJson(Map<String, dynamic> json) =>
      _$TelegramIdFromJson(json);

  @JsonKey(name: 'telegram_id')
  final String telegramId;
  static const fromJsonFactory = _$TelegramIdFromJson;
  static const toJsonFactory = _$TelegramIdToJson;
  Map<String, dynamic> toJson() => _$TelegramIdToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TelegramId &&
            (identical(other.telegramId, telegramId) ||
                const DeepCollectionEquality()
                    .equals(other.telegramId, telegramId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(telegramId) ^ runtimeType.hashCode;
}

extension $TelegramIdExtension on TelegramId {
  TelegramId copyWith({String? telegramId}) {
    return TelegramId(telegramId: telegramId ?? this.telegramId);
  }

  TelegramId copyWithWrapped({Wrapped<String>? telegramId}) {
    return TelegramId(
        telegramId: (telegramId != null ? telegramId.value : this.telegramId));
  }
}

@JsonSerializable(explicitToJson: true)
class TimetableSettingsUpdate {
  TimetableSettingsUpdate({
    this.timetableTodayLessons,
    this.timetableTomorrowLessons,
    this.timetableIsBeforeLesson,
  });

  factory TimetableSettingsUpdate.fromJson(Map<String, dynamic> json) =>
      _$TimetableSettingsUpdateFromJson(json);

  @JsonKey(name: 'timetable_today_lessons')
  final String? timetableTodayLessons;
  @JsonKey(name: 'timetable_tomorrow_lessons')
  final String? timetableTomorrowLessons;
  @JsonKey(name: 'timetable_is_before_lesson')
  final String? timetableIsBeforeLesson;
  static const fromJsonFactory = _$TimetableSettingsUpdateFromJson;
  static const toJsonFactory = _$TimetableSettingsUpdateToJson;
  Map<String, dynamic> toJson() => _$TimetableSettingsUpdateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimetableSettingsUpdate &&
            (identical(other.timetableTodayLessons, timetableTodayLessons) ||
                const DeepCollectionEquality().equals(
                    other.timetableTodayLessons, timetableTodayLessons)) &&
            (identical(
                    other.timetableTomorrowLessons, timetableTomorrowLessons) ||
                const DeepCollectionEquality().equals(
                    other.timetableTomorrowLessons,
                    timetableTomorrowLessons)) &&
            (identical(
                    other.timetableIsBeforeLesson, timetableIsBeforeLesson) ||
                const DeepCollectionEquality().equals(
                    other.timetableIsBeforeLesson, timetableIsBeforeLesson)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(timetableTodayLessons) ^
      const DeepCollectionEquality().hash(timetableTomorrowLessons) ^
      const DeepCollectionEquality().hash(timetableIsBeforeLesson) ^
      runtimeType.hashCode;
}

extension $TimetableSettingsUpdateExtension on TimetableSettingsUpdate {
  TimetableSettingsUpdate copyWith(
      {String? timetableTodayLessons,
      String? timetableTomorrowLessons,
      String? timetableIsBeforeLesson}) {
    return TimetableSettingsUpdate(
        timetableTodayLessons:
            timetableTodayLessons ?? this.timetableTodayLessons,
        timetableTomorrowLessons:
            timetableTomorrowLessons ?? this.timetableTomorrowLessons,
        timetableIsBeforeLesson:
            timetableIsBeforeLesson ?? this.timetableIsBeforeLesson);
  }

  TimetableSettingsUpdate copyWithWrapped(
      {Wrapped<String?>? timetableTodayLessons,
      Wrapped<String?>? timetableTomorrowLessons,
      Wrapped<String?>? timetableIsBeforeLesson}) {
    return TimetableSettingsUpdate(
        timetableTodayLessons: (timetableTodayLessons != null
            ? timetableTodayLessons.value
            : this.timetableTodayLessons),
        timetableTomorrowLessons: (timetableTomorrowLessons != null
            ? timetableTomorrowLessons.value
            : this.timetableTomorrowLessons),
        timetableIsBeforeLesson: (timetableIsBeforeLesson != null
            ? timetableIsBeforeLesson.value
            : this.timetableIsBeforeLesson));
  }
}

@JsonSerializable(explicitToJson: true)
class TimetableViewInDb {
  TimetableViewInDb({
    required this.facultyId,
    required this.semesterId,
    required this.lessonsMode,
    required this.sessionMode,
  });

  factory TimetableViewInDb.fromJson(Map<String, dynamic> json) =>
      _$TimetableViewInDbFromJson(json);

  @JsonKey(name: 'faculty_id')
  final int facultyId;
  @JsonKey(name: 'semester_id')
  final int semesterId;
  @JsonKey(
    name: 'lessons_mode',
    toJson: viewModeToJson,
    fromJson: viewModeFromJson,
  )
  final enums.ViewMode lessonsMode;
  @JsonKey(
    name: 'session_mode',
    toJson: viewModeToJson,
    fromJson: viewModeFromJson,
  )
  final enums.ViewMode sessionMode;
  static const fromJsonFactory = _$TimetableViewInDbFromJson;
  static const toJsonFactory = _$TimetableViewInDbToJson;
  Map<String, dynamic> toJson() => _$TimetableViewInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimetableViewInDb &&
            (identical(other.facultyId, facultyId) ||
                const DeepCollectionEquality()
                    .equals(other.facultyId, facultyId)) &&
            (identical(other.semesterId, semesterId) ||
                const DeepCollectionEquality()
                    .equals(other.semesterId, semesterId)) &&
            (identical(other.lessonsMode, lessonsMode) ||
                const DeepCollectionEquality()
                    .equals(other.lessonsMode, lessonsMode)) &&
            (identical(other.sessionMode, sessionMode) ||
                const DeepCollectionEquality()
                    .equals(other.sessionMode, sessionMode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(facultyId) ^
      const DeepCollectionEquality().hash(semesterId) ^
      const DeepCollectionEquality().hash(lessonsMode) ^
      const DeepCollectionEquality().hash(sessionMode) ^
      runtimeType.hashCode;
}

extension $TimetableViewInDbExtension on TimetableViewInDb {
  TimetableViewInDb copyWith(
      {int? facultyId,
      int? semesterId,
      enums.ViewMode? lessonsMode,
      enums.ViewMode? sessionMode}) {
    return TimetableViewInDb(
        facultyId: facultyId ?? this.facultyId,
        semesterId: semesterId ?? this.semesterId,
        lessonsMode: lessonsMode ?? this.lessonsMode,
        sessionMode: sessionMode ?? this.sessionMode);
  }

  TimetableViewInDb copyWithWrapped(
      {Wrapped<int>? facultyId,
      Wrapped<int>? semesterId,
      Wrapped<enums.ViewMode>? lessonsMode,
      Wrapped<enums.ViewMode>? sessionMode}) {
    return TimetableViewInDb(
        facultyId: (facultyId != null ? facultyId.value : this.facultyId),
        semesterId: (semesterId != null ? semesterId.value : this.semesterId),
        lessonsMode:
            (lessonsMode != null ? lessonsMode.value : this.lessonsMode),
        sessionMode:
            (sessionMode != null ? sessionMode.value : this.sessionMode));
  }
}

@JsonSerializable(explicitToJson: true)
class TimetableViewUpdate {
  TimetableViewUpdate({
    required this.facultyId,
    required this.semesterId,
    this.lessonsMode,
    this.sessionMode,
    this.isNotify,
  });

  factory TimetableViewUpdate.fromJson(Map<String, dynamic> json) =>
      _$TimetableViewUpdateFromJson(json);

  @JsonKey(name: 'faculty_id')
  final int facultyId;
  @JsonKey(name: 'semester_id')
  final int semesterId;
  @JsonKey(
    name: 'lessons_mode',
    toJson: viewModeToJson,
    fromJson: viewModeFromJson,
  )
  final enums.ViewMode? lessonsMode;
  @JsonKey(
    name: 'session_mode',
    toJson: viewModeToJson,
    fromJson: viewModeFromJson,
  )
  final enums.ViewMode? sessionMode;
  @JsonKey(name: 'is_notify', defaultValue: false)
  final bool? isNotify;
  static const fromJsonFactory = _$TimetableViewUpdateFromJson;
  static const toJsonFactory = _$TimetableViewUpdateToJson;
  Map<String, dynamic> toJson() => _$TimetableViewUpdateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimetableViewUpdate &&
            (identical(other.facultyId, facultyId) ||
                const DeepCollectionEquality()
                    .equals(other.facultyId, facultyId)) &&
            (identical(other.semesterId, semesterId) ||
                const DeepCollectionEquality()
                    .equals(other.semesterId, semesterId)) &&
            (identical(other.lessonsMode, lessonsMode) ||
                const DeepCollectionEquality()
                    .equals(other.lessonsMode, lessonsMode)) &&
            (identical(other.sessionMode, sessionMode) ||
                const DeepCollectionEquality()
                    .equals(other.sessionMode, sessionMode)) &&
            (identical(other.isNotify, isNotify) ||
                const DeepCollectionEquality()
                    .equals(other.isNotify, isNotify)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(facultyId) ^
      const DeepCollectionEquality().hash(semesterId) ^
      const DeepCollectionEquality().hash(lessonsMode) ^
      const DeepCollectionEquality().hash(sessionMode) ^
      const DeepCollectionEquality().hash(isNotify) ^
      runtimeType.hashCode;
}

extension $TimetableViewUpdateExtension on TimetableViewUpdate {
  TimetableViewUpdate copyWith(
      {int? facultyId,
      int? semesterId,
      enums.ViewMode? lessonsMode,
      enums.ViewMode? sessionMode,
      bool? isNotify}) {
    return TimetableViewUpdate(
        facultyId: facultyId ?? this.facultyId,
        semesterId: semesterId ?? this.semesterId,
        lessonsMode: lessonsMode ?? this.lessonsMode,
        sessionMode: sessionMode ?? this.sessionMode,
        isNotify: isNotify ?? this.isNotify);
  }

  TimetableViewUpdate copyWithWrapped(
      {Wrapped<int>? facultyId,
      Wrapped<int>? semesterId,
      Wrapped<enums.ViewMode?>? lessonsMode,
      Wrapped<enums.ViewMode?>? sessionMode,
      Wrapped<bool?>? isNotify}) {
    return TimetableViewUpdate(
        facultyId: (facultyId != null ? facultyId.value : this.facultyId),
        semesterId: (semesterId != null ? semesterId.value : this.semesterId),
        lessonsMode:
            (lessonsMode != null ? lessonsMode.value : this.lessonsMode),
        sessionMode:
            (sessionMode != null ? sessionMode.value : this.sessionMode),
        isNotify: (isNotify != null ? isNotify.value : this.isNotify));
  }
}

@JsonSerializable(explicitToJson: true)
class UserBaseCreate {
  UserBaseCreate({
    required this.password,
    required this.confirmPassword,
    required this.login,
    required this.roleId,
  });

  factory UserBaseCreate.fromJson(Map<String, dynamic> json) =>
      _$UserBaseCreateFromJson(json);

  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'confirm_password')
  final String confirmPassword;
  @JsonKey(name: 'login')
  final String login;
  @JsonKey(name: 'role_id')
  final int roleId;
  static const fromJsonFactory = _$UserBaseCreateFromJson;
  static const toJsonFactory = _$UserBaseCreateToJson;
  Map<String, dynamic> toJson() => _$UserBaseCreateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserBaseCreate &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)) &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.roleId, roleId) ||
                const DeepCollectionEquality().equals(other.roleId, roleId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(confirmPassword) ^
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(roleId) ^
      runtimeType.hashCode;
}

extension $UserBaseCreateExtension on UserBaseCreate {
  UserBaseCreate copyWith(
      {String? password, String? confirmPassword, String? login, int? roleId}) {
    return UserBaseCreate(
        password: password ?? this.password,
        confirmPassword: confirmPassword ?? this.confirmPassword,
        login: login ?? this.login,
        roleId: roleId ?? this.roleId);
  }

  UserBaseCreate copyWithWrapped(
      {Wrapped<String>? password,
      Wrapped<String>? confirmPassword,
      Wrapped<String>? login,
      Wrapped<int>? roleId}) {
    return UserBaseCreate(
        password: (password != null ? password.value : this.password),
        confirmPassword: (confirmPassword != null
            ? confirmPassword.value
            : this.confirmPassword),
        login: (login != null ? login.value : this.login),
        roleId: (roleId != null ? roleId.value : this.roleId));
  }
}

@JsonSerializable(explicitToJson: true)
class UserChangePassword {
  UserChangePassword({
    required this.password,
    required this.confirmPassword,
    required this.currentPassword,
  });

  factory UserChangePassword.fromJson(Map<String, dynamic> json) =>
      _$UserChangePasswordFromJson(json);

  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'confirm_password')
  final String confirmPassword;
  @JsonKey(name: 'current_password')
  final String currentPassword;
  static const fromJsonFactory = _$UserChangePasswordFromJson;
  static const toJsonFactory = _$UserChangePasswordToJson;
  Map<String, dynamic> toJson() => _$UserChangePasswordToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserChangePassword &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)) &&
            (identical(other.currentPassword, currentPassword) ||
                const DeepCollectionEquality()
                    .equals(other.currentPassword, currentPassword)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(confirmPassword) ^
      const DeepCollectionEquality().hash(currentPassword) ^
      runtimeType.hashCode;
}

extension $UserChangePasswordExtension on UserChangePassword {
  UserChangePassword copyWith(
      {String? password, String? confirmPassword, String? currentPassword}) {
    return UserChangePassword(
        password: password ?? this.password,
        confirmPassword: confirmPassword ?? this.confirmPassword,
        currentPassword: currentPassword ?? this.currentPassword);
  }

  UserChangePassword copyWithWrapped(
      {Wrapped<String>? password,
      Wrapped<String>? confirmPassword,
      Wrapped<String>? currentPassword}) {
    return UserChangePassword(
        password: (password != null ? password.value : this.password),
        confirmPassword: (confirmPassword != null
            ? confirmPassword.value
            : this.confirmPassword),
        currentPassword: (currentPassword != null
            ? currentPassword.value
            : this.currentPassword));
  }
}

@JsonSerializable(explicitToJson: true)
class UserCreate {
  UserCreate({
    required this.password,
    required this.confirmPassword,
    required this.login,
    required this.roleId,
    required this.person,
  });

  factory UserCreate.fromJson(Map<String, dynamic> json) =>
      _$UserCreateFromJson(json);

  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'confirm_password')
  final String confirmPassword;
  @JsonKey(name: 'login')
  final String login;
  @JsonKey(name: 'role_id')
  final int roleId;
  @JsonKey(name: 'person')
  final PersonCreate person;
  static const fromJsonFactory = _$UserCreateFromJson;
  static const toJsonFactory = _$UserCreateToJson;
  Map<String, dynamic> toJson() => _$UserCreateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserCreate &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)) &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.roleId, roleId) ||
                const DeepCollectionEquality().equals(other.roleId, roleId)) &&
            (identical(other.person, person) ||
                const DeepCollectionEquality().equals(other.person, person)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(confirmPassword) ^
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(roleId) ^
      const DeepCollectionEquality().hash(person) ^
      runtimeType.hashCode;
}

extension $UserCreateExtension on UserCreate {
  UserCreate copyWith(
      {String? password,
      String? confirmPassword,
      String? login,
      int? roleId,
      PersonCreate? person}) {
    return UserCreate(
        password: password ?? this.password,
        confirmPassword: confirmPassword ?? this.confirmPassword,
        login: login ?? this.login,
        roleId: roleId ?? this.roleId,
        person: person ?? this.person);
  }

  UserCreate copyWithWrapped(
      {Wrapped<String>? password,
      Wrapped<String>? confirmPassword,
      Wrapped<String>? login,
      Wrapped<int>? roleId,
      Wrapped<PersonCreate>? person}) {
    return UserCreate(
        password: (password != null ? password.value : this.password),
        confirmPassword: (confirmPassword != null
            ? confirmPassword.value
            : this.confirmPassword),
        login: (login != null ? login.value : this.login),
        roleId: (roleId != null ? roleId.value : this.roleId),
        person: (person != null ? person.value : this.person));
  }
}

@JsonSerializable(explicitToJson: true)
class UserCreateFromPerson {
  UserCreateFromPerson({
    required this.password,
    required this.confirmPassword,
    required this.login,
    required this.roleId,
    required this.personId,
  });

  factory UserCreateFromPerson.fromJson(Map<String, dynamic> json) =>
      _$UserCreateFromPersonFromJson(json);

  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'confirm_password')
  final String confirmPassword;
  @JsonKey(name: 'login')
  final String login;
  @JsonKey(name: 'role_id')
  final int roleId;
  @JsonKey(name: 'person_id')
  final int personId;
  static const fromJsonFactory = _$UserCreateFromPersonFromJson;
  static const toJsonFactory = _$UserCreateFromPersonToJson;
  Map<String, dynamic> toJson() => _$UserCreateFromPersonToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserCreateFromPerson &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)) &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.roleId, roleId) ||
                const DeepCollectionEquality().equals(other.roleId, roleId)) &&
            (identical(other.personId, personId) ||
                const DeepCollectionEquality()
                    .equals(other.personId, personId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(confirmPassword) ^
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(roleId) ^
      const DeepCollectionEquality().hash(personId) ^
      runtimeType.hashCode;
}

extension $UserCreateFromPersonExtension on UserCreateFromPerson {
  UserCreateFromPerson copyWith(
      {String? password,
      String? confirmPassword,
      String? login,
      int? roleId,
      int? personId}) {
    return UserCreateFromPerson(
        password: password ?? this.password,
        confirmPassword: confirmPassword ?? this.confirmPassword,
        login: login ?? this.login,
        roleId: roleId ?? this.roleId,
        personId: personId ?? this.personId);
  }

  UserCreateFromPerson copyWithWrapped(
      {Wrapped<String>? password,
      Wrapped<String>? confirmPassword,
      Wrapped<String>? login,
      Wrapped<int>? roleId,
      Wrapped<int>? personId}) {
    return UserCreateFromPerson(
        password: (password != null ? password.value : this.password),
        confirmPassword: (confirmPassword != null
            ? confirmPassword.value
            : this.confirmPassword),
        login: (login != null ? login.value : this.login),
        roleId: (roleId != null ? roleId.value : this.roleId),
        personId: (personId != null ? personId.value : this.personId));
  }
}

@JsonSerializable(explicitToJson: true)
class UserFacultyForbiddenCreate {
  UserFacultyForbiddenCreate({
    required this.facultyId,
    required this.userId,
  });

  factory UserFacultyForbiddenCreate.fromJson(Map<String, dynamic> json) =>
      _$UserFacultyForbiddenCreateFromJson(json);

  @JsonKey(name: 'faculty_id')
  final int facultyId;
  @JsonKey(name: 'user_id')
  final int userId;
  static const fromJsonFactory = _$UserFacultyForbiddenCreateFromJson;
  static const toJsonFactory = _$UserFacultyForbiddenCreateToJson;
  Map<String, dynamic> toJson() => _$UserFacultyForbiddenCreateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserFacultyForbiddenCreate &&
            (identical(other.facultyId, facultyId) ||
                const DeepCollectionEquality()
                    .equals(other.facultyId, facultyId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(facultyId) ^
      const DeepCollectionEquality().hash(userId) ^
      runtimeType.hashCode;
}

extension $UserFacultyForbiddenCreateExtension on UserFacultyForbiddenCreate {
  UserFacultyForbiddenCreate copyWith({int? facultyId, int? userId}) {
    return UserFacultyForbiddenCreate(
        facultyId: facultyId ?? this.facultyId, userId: userId ?? this.userId);
  }

  UserFacultyForbiddenCreate copyWithWrapped(
      {Wrapped<int>? facultyId, Wrapped<int>? userId}) {
    return UserFacultyForbiddenCreate(
        facultyId: (facultyId != null ? facultyId.value : this.facultyId),
        userId: (userId != null ? userId.value : this.userId));
  }
}

@JsonSerializable(explicitToJson: true)
class UserFacultyForbiddenInDb {
  UserFacultyForbiddenInDb({
    required this.facultyId,
    required this.userId,
    required this.faculty,
    required this.user,
  });

  factory UserFacultyForbiddenInDb.fromJson(Map<String, dynamic> json) =>
      _$UserFacultyForbiddenInDbFromJson(json);

  @JsonKey(name: 'faculty_id')
  final int facultyId;
  @JsonKey(name: 'user_id')
  final int userId;
  @JsonKey(name: 'faculty')
  final FacultyInDb faculty;
  @JsonKey(name: 'user')
  final AppSchemasOtherPermissionUserFullNameInDb user;
  static const fromJsonFactory = _$UserFacultyForbiddenInDbFromJson;
  static const toJsonFactory = _$UserFacultyForbiddenInDbToJson;
  Map<String, dynamic> toJson() => _$UserFacultyForbiddenInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserFacultyForbiddenInDb &&
            (identical(other.facultyId, facultyId) ||
                const DeepCollectionEquality()
                    .equals(other.facultyId, facultyId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.faculty, faculty) ||
                const DeepCollectionEquality()
                    .equals(other.faculty, faculty)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(facultyId) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(faculty) ^
      const DeepCollectionEquality().hash(user) ^
      runtimeType.hashCode;
}

extension $UserFacultyForbiddenInDbExtension on UserFacultyForbiddenInDb {
  UserFacultyForbiddenInDb copyWith(
      {int? facultyId,
      int? userId,
      FacultyInDb? faculty,
      AppSchemasOtherPermissionUserFullNameInDb? user}) {
    return UserFacultyForbiddenInDb(
        facultyId: facultyId ?? this.facultyId,
        userId: userId ?? this.userId,
        faculty: faculty ?? this.faculty,
        user: user ?? this.user);
  }

  UserFacultyForbiddenInDb copyWithWrapped(
      {Wrapped<int>? facultyId,
      Wrapped<int>? userId,
      Wrapped<FacultyInDb>? faculty,
      Wrapped<AppSchemasOtherPermissionUserFullNameInDb>? user}) {
    return UserFacultyForbiddenInDb(
        facultyId: (facultyId != null ? facultyId.value : this.facultyId),
        userId: (userId != null ? userId.value : this.userId),
        faculty: (faculty != null ? faculty.value : this.faculty),
        user: (user != null ? user.value : this.user));
  }
}

@JsonSerializable(explicitToJson: true)
class UserFacultyForbiddenUpdate {
  UserFacultyForbiddenUpdate({
    required this.users,
  });

  factory UserFacultyForbiddenUpdate.fromJson(Map<String, dynamic> json) =>
      _$UserFacultyForbiddenUpdateFromJson(json);

  @JsonKey(name: 'users', defaultValue: <int>[])
  final List<int> users;
  static const fromJsonFactory = _$UserFacultyForbiddenUpdateFromJson;
  static const toJsonFactory = _$UserFacultyForbiddenUpdateToJson;
  Map<String, dynamic> toJson() => _$UserFacultyForbiddenUpdateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserFacultyForbiddenUpdate &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(users) ^ runtimeType.hashCode;
}

extension $UserFacultyForbiddenUpdateExtension on UserFacultyForbiddenUpdate {
  UserFacultyForbiddenUpdate copyWith({List<int>? users}) {
    return UserFacultyForbiddenUpdate(users: users ?? this.users);
  }

  UserFacultyForbiddenUpdate copyWithWrapped({Wrapped<List<int>>? users}) {
    return UserFacultyForbiddenUpdate(
        users: (users != null ? users.value : this.users));
  }
}

@JsonSerializable(explicitToJson: true)
class UserFullInDb {
  UserFullInDb({
    required this.login,
    required this.id,
    required this.person,
    required this.role,
    this.telegram,
  });

  factory UserFullInDb.fromJson(Map<String, dynamic> json) =>
      _$UserFullInDbFromJson(json);

  @JsonKey(name: 'login')
  final String login;
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'person')
  final PersonInDb person;
  @JsonKey(name: 'role')
  final RoleInDb role;
  @JsonKey(name: 'telegram')
  final TelegramId? telegram;
  static const fromJsonFactory = _$UserFullInDbFromJson;
  static const toJsonFactory = _$UserFullInDbToJson;
  Map<String, dynamic> toJson() => _$UserFullInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserFullInDb &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.person, person) ||
                const DeepCollectionEquality().equals(other.person, person)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.telegram, telegram) ||
                const DeepCollectionEquality()
                    .equals(other.telegram, telegram)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(person) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(telegram) ^
      runtimeType.hashCode;
}

extension $UserFullInDbExtension on UserFullInDb {
  UserFullInDb copyWith(
      {String? login,
      int? id,
      PersonInDb? person,
      RoleInDb? role,
      TelegramId? telegram}) {
    return UserFullInDb(
        login: login ?? this.login,
        id: id ?? this.id,
        person: person ?? this.person,
        role: role ?? this.role,
        telegram: telegram ?? this.telegram);
  }

  UserFullInDb copyWithWrapped(
      {Wrapped<String>? login,
      Wrapped<int>? id,
      Wrapped<PersonInDb>? person,
      Wrapped<RoleInDb>? role,
      Wrapped<TelegramId?>? telegram}) {
    return UserFullInDb(
        login: (login != null ? login.value : this.login),
        id: (id != null ? id.value : this.id),
        person: (person != null ? person.value : this.person),
        role: (role != null ? role.value : this.role),
        telegram: (telegram != null ? telegram.value : this.telegram));
  }
}

@JsonSerializable(explicitToJson: true)
class UserFullWithStatisticInDb {
  UserFullWithStatisticInDb({
    required this.login,
    required this.id,
    required this.person,
    required this.role,
    required this.statistic,
    this.telegram,
  });

  factory UserFullWithStatisticInDb.fromJson(Map<String, dynamic> json) =>
      _$UserFullWithStatisticInDbFromJson(json);

  @JsonKey(name: 'login')
  final String login;
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'person')
  final PersonInDb person;
  @JsonKey(name: 'role')
  final RoleInDb role;
  @JsonKey(name: 'statistic')
  final Statistic statistic;
  @JsonKey(name: 'telegram')
  final TelegramId? telegram;
  static const fromJsonFactory = _$UserFullWithStatisticInDbFromJson;
  static const toJsonFactory = _$UserFullWithStatisticInDbToJson;
  Map<String, dynamic> toJson() => _$UserFullWithStatisticInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserFullWithStatisticInDb &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.person, person) ||
                const DeepCollectionEquality().equals(other.person, person)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.statistic, statistic) ||
                const DeepCollectionEquality()
                    .equals(other.statistic, statistic)) &&
            (identical(other.telegram, telegram) ||
                const DeepCollectionEquality()
                    .equals(other.telegram, telegram)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(person) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(statistic) ^
      const DeepCollectionEquality().hash(telegram) ^
      runtimeType.hashCode;
}

extension $UserFullWithStatisticInDbExtension on UserFullWithStatisticInDb {
  UserFullWithStatisticInDb copyWith(
      {String? login,
      int? id,
      PersonInDb? person,
      RoleInDb? role,
      Statistic? statistic,
      TelegramId? telegram}) {
    return UserFullWithStatisticInDb(
        login: login ?? this.login,
        id: id ?? this.id,
        person: person ?? this.person,
        role: role ?? this.role,
        statistic: statistic ?? this.statistic,
        telegram: telegram ?? this.telegram);
  }

  UserFullWithStatisticInDb copyWithWrapped(
      {Wrapped<String>? login,
      Wrapped<int>? id,
      Wrapped<PersonInDb>? person,
      Wrapped<RoleInDb>? role,
      Wrapped<Statistic>? statistic,
      Wrapped<TelegramId?>? telegram}) {
    return UserFullWithStatisticInDb(
        login: (login != null ? login.value : this.login),
        id: (id != null ? id.value : this.id),
        person: (person != null ? person.value : this.person),
        role: (role != null ? role.value : this.role),
        statistic: (statistic != null ? statistic.value : this.statistic),
        telegram: (telegram != null ? telegram.value : this.telegram));
  }
}

@JsonSerializable(explicitToJson: true)
class UserMeInDb {
  UserMeInDb({
    required this.login,
    required this.id,
    required this.isAuth,
    required this.person,
    required this.role,
    required this.otherPermissions,
    required this.userPermissions,
  });

  factory UserMeInDb.fromJson(Map<String, dynamic> json) =>
      _$UserMeInDbFromJson(json);

  @JsonKey(name: 'login')
  final String login;
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'is_auth')
  final bool isAuth;
  @JsonKey(name: 'person')
  final PersonInDb person;
  @JsonKey(name: 'role')
  final RolePermissionsInDb role;
  @JsonKey(name: 'other_permissions')
  final FacultyForbidden otherPermissions;
  @JsonKey(
    name: 'user_permissions',
    toJson: permissionsListToJson,
    fromJson: permissionsListFromJson,
  )
  final List<enums.Permissions> userPermissions;
  static const fromJsonFactory = _$UserMeInDbFromJson;
  static const toJsonFactory = _$UserMeInDbToJson;
  Map<String, dynamic> toJson() => _$UserMeInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserMeInDb &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isAuth, isAuth) ||
                const DeepCollectionEquality().equals(other.isAuth, isAuth)) &&
            (identical(other.person, person) ||
                const DeepCollectionEquality().equals(other.person, person)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.otherPermissions, otherPermissions) ||
                const DeepCollectionEquality()
                    .equals(other.otherPermissions, otherPermissions)) &&
            (identical(other.userPermissions, userPermissions) ||
                const DeepCollectionEquality()
                    .equals(other.userPermissions, userPermissions)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(isAuth) ^
      const DeepCollectionEquality().hash(person) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(otherPermissions) ^
      const DeepCollectionEquality().hash(userPermissions) ^
      runtimeType.hashCode;
}

extension $UserMeInDbExtension on UserMeInDb {
  UserMeInDb copyWith(
      {String? login,
      int? id,
      bool? isAuth,
      PersonInDb? person,
      RolePermissionsInDb? role,
      FacultyForbidden? otherPermissions,
      List<enums.Permissions>? userPermissions}) {
    return UserMeInDb(
        login: login ?? this.login,
        id: id ?? this.id,
        isAuth: isAuth ?? this.isAuth,
        person: person ?? this.person,
        role: role ?? this.role,
        otherPermissions: otherPermissions ?? this.otherPermissions,
        userPermissions: userPermissions ?? this.userPermissions);
  }

  UserMeInDb copyWithWrapped(
      {Wrapped<String>? login,
      Wrapped<int>? id,
      Wrapped<bool>? isAuth,
      Wrapped<PersonInDb>? person,
      Wrapped<RolePermissionsInDb>? role,
      Wrapped<FacultyForbidden>? otherPermissions,
      Wrapped<List<enums.Permissions>>? userPermissions}) {
    return UserMeInDb(
        login: (login != null ? login.value : this.login),
        id: (id != null ? id.value : this.id),
        isAuth: (isAuth != null ? isAuth.value : this.isAuth),
        person: (person != null ? person.value : this.person),
        role: (role != null ? role.value : this.role),
        otherPermissions: (otherPermissions != null
            ? otherPermissions.value
            : this.otherPermissions),
        userPermissions: (userPermissions != null
            ? userPermissions.value
            : this.userPermissions));
  }
}

@JsonSerializable(explicitToJson: true)
class UserPassword {
  UserPassword({
    required this.password,
    required this.confirmPassword,
  });

  factory UserPassword.fromJson(Map<String, dynamic> json) =>
      _$UserPasswordFromJson(json);

  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'confirm_password')
  final String confirmPassword;
  static const fromJsonFactory = _$UserPasswordFromJson;
  static const toJsonFactory = _$UserPasswordToJson;
  Map<String, dynamic> toJson() => _$UserPasswordToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserPassword &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(confirmPassword) ^
      runtimeType.hashCode;
}

extension $UserPasswordExtension on UserPassword {
  UserPassword copyWith({String? password, String? confirmPassword}) {
    return UserPassword(
        password: password ?? this.password,
        confirmPassword: confirmPassword ?? this.confirmPassword);
  }

  UserPassword copyWithWrapped(
      {Wrapped<String>? password, Wrapped<String>? confirmPassword}) {
    return UserPassword(
        password: (password != null ? password.value : this.password),
        confirmPassword: (confirmPassword != null
            ? confirmPassword.value
            : this.confirmPassword));
  }
}

@JsonSerializable(explicitToJson: true)
class UserPermissionBase {
  UserPermissionBase({
    this.userPermissions,
  });

  factory UserPermissionBase.fromJson(Map<String, dynamic> json) =>
      _$UserPermissionBaseFromJson(json);

  @JsonKey(
    name: 'user_permissions',
    toJson: permissionsListToJson,
    fromJson: permissionsListFromJson,
  )
  final List<enums.Permissions>? userPermissions;
  static const fromJsonFactory = _$UserPermissionBaseFromJson;
  static const toJsonFactory = _$UserPermissionBaseToJson;
  Map<String, dynamic> toJson() => _$UserPermissionBaseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserPermissionBase &&
            (identical(other.userPermissions, userPermissions) ||
                const DeepCollectionEquality()
                    .equals(other.userPermissions, userPermissions)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userPermissions) ^
      runtimeType.hashCode;
}

extension $UserPermissionBaseExtension on UserPermissionBase {
  UserPermissionBase copyWith({List<enums.Permissions>? userPermissions}) {
    return UserPermissionBase(
        userPermissions: userPermissions ?? this.userPermissions);
  }

  UserPermissionBase copyWithWrapped(
      {Wrapped<List<enums.Permissions>?>? userPermissions}) {
    return UserPermissionBase(
        userPermissions: (userPermissions != null
            ? userPermissions.value
            : this.userPermissions));
  }
}

@JsonSerializable(explicitToJson: true)
class UserPermissionCreate {
  UserPermissionCreate({
    this.userPermissions,
  });

  factory UserPermissionCreate.fromJson(Map<String, dynamic> json) =>
      _$UserPermissionCreateFromJson(json);

  @JsonKey(
    name: 'user_permissions',
    toJson: permissionsListToJson,
    fromJson: permissionsListFromJson,
  )
  final List<enums.Permissions>? userPermissions;
  static const fromJsonFactory = _$UserPermissionCreateFromJson;
  static const toJsonFactory = _$UserPermissionCreateToJson;
  Map<String, dynamic> toJson() => _$UserPermissionCreateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserPermissionCreate &&
            (identical(other.userPermissions, userPermissions) ||
                const DeepCollectionEquality()
                    .equals(other.userPermissions, userPermissions)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userPermissions) ^
      runtimeType.hashCode;
}

extension $UserPermissionCreateExtension on UserPermissionCreate {
  UserPermissionCreate copyWith({List<enums.Permissions>? userPermissions}) {
    return UserPermissionCreate(
        userPermissions: userPermissions ?? this.userPermissions);
  }

  UserPermissionCreate copyWithWrapped(
      {Wrapped<List<enums.Permissions>?>? userPermissions}) {
    return UserPermissionCreate(
        userPermissions: (userPermissions != null
            ? userPermissions.value
            : this.userPermissions));
  }
}

@JsonSerializable(explicitToJson: true)
class UserPermissionUpdate {
  UserPermissionUpdate({
    this.userPermissions,
  });

  factory UserPermissionUpdate.fromJson(Map<String, dynamic> json) =>
      _$UserPermissionUpdateFromJson(json);

  @JsonKey(
    name: 'user_permissions',
    toJson: permissionsListToJson,
    fromJson: permissionsListFromJson,
  )
  final List<enums.Permissions>? userPermissions;
  static const fromJsonFactory = _$UserPermissionUpdateFromJson;
  static const toJsonFactory = _$UserPermissionUpdateToJson;
  Map<String, dynamic> toJson() => _$UserPermissionUpdateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserPermissionUpdate &&
            (identical(other.userPermissions, userPermissions) ||
                const DeepCollectionEquality()
                    .equals(other.userPermissions, userPermissions)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userPermissions) ^
      runtimeType.hashCode;
}

extension $UserPermissionUpdateExtension on UserPermissionUpdate {
  UserPermissionUpdate copyWith({List<enums.Permissions>? userPermissions}) {
    return UserPermissionUpdate(
        userPermissions: userPermissions ?? this.userPermissions);
  }

  UserPermissionUpdate copyWithWrapped(
      {Wrapped<List<enums.Permissions>?>? userPermissions}) {
    return UserPermissionUpdate(
        userPermissions: (userPermissions != null
            ? userPermissions.value
            : this.userPermissions));
  }
}

@JsonSerializable(explicitToJson: true)
class UserShortTelegram {
  UserShortTelegram({
    required this.person,
    this.telegram,
  });

  factory UserShortTelegram.fromJson(Map<String, dynamic> json) =>
      _$UserShortTelegramFromJson(json);

  @JsonKey(name: 'person')
  final PersonShortInDb person;
  @JsonKey(name: 'telegram')
  final TelegramId? telegram;
  static const fromJsonFactory = _$UserShortTelegramFromJson;
  static const toJsonFactory = _$UserShortTelegramToJson;
  Map<String, dynamic> toJson() => _$UserShortTelegramToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserShortTelegram &&
            (identical(other.person, person) ||
                const DeepCollectionEquality().equals(other.person, person)) &&
            (identical(other.telegram, telegram) ||
                const DeepCollectionEquality()
                    .equals(other.telegram, telegram)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(person) ^
      const DeepCollectionEquality().hash(telegram) ^
      runtimeType.hashCode;
}

extension $UserShortTelegramExtension on UserShortTelegram {
  UserShortTelegram copyWith({PersonShortInDb? person, TelegramId? telegram}) {
    return UserShortTelegram(
        person: person ?? this.person, telegram: telegram ?? this.telegram);
  }

  UserShortTelegram copyWithWrapped(
      {Wrapped<PersonShortInDb>? person, Wrapped<TelegramId?>? telegram}) {
    return UserShortTelegram(
        person: (person != null ? person.value : this.person),
        telegram: (telegram != null ? telegram.value : this.telegram));
  }
}

@JsonSerializable(explicitToJson: true)
class UserUpdate {
  UserUpdate({
    this.telegramId,
    this.login,
    this.roleId,
    required this.person,
  });

  factory UserUpdate.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateFromJson(json);

  @JsonKey(name: 'telegram_id')
  final String? telegramId;
  @JsonKey(name: 'login')
  final String? login;
  @JsonKey(name: 'role_id')
  final int? roleId;
  @JsonKey(name: 'person')
  final PersonUpdate person;
  static const fromJsonFactory = _$UserUpdateFromJson;
  static const toJsonFactory = _$UserUpdateToJson;
  Map<String, dynamic> toJson() => _$UserUpdateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserUpdate &&
            (identical(other.telegramId, telegramId) ||
                const DeepCollectionEquality()
                    .equals(other.telegramId, telegramId)) &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.roleId, roleId) ||
                const DeepCollectionEquality().equals(other.roleId, roleId)) &&
            (identical(other.person, person) ||
                const DeepCollectionEquality().equals(other.person, person)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(telegramId) ^
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(roleId) ^
      const DeepCollectionEquality().hash(person) ^
      runtimeType.hashCode;
}

extension $UserUpdateExtension on UserUpdate {
  UserUpdate copyWith(
      {String? telegramId, String? login, int? roleId, PersonUpdate? person}) {
    return UserUpdate(
        telegramId: telegramId ?? this.telegramId,
        login: login ?? this.login,
        roleId: roleId ?? this.roleId,
        person: person ?? this.person);
  }

  UserUpdate copyWithWrapped(
      {Wrapped<String?>? telegramId,
      Wrapped<String?>? login,
      Wrapped<int?>? roleId,
      Wrapped<PersonUpdate>? person}) {
    return UserUpdate(
        telegramId: (telegramId != null ? telegramId.value : this.telegramId),
        login: (login != null ? login.value : this.login),
        roleId: (roleId != null ? roleId.value : this.roleId),
        person: (person != null ? person.value : this.person));
  }
}

@JsonSerializable(explicitToJson: true)
class UsersSettings {
  UsersSettings({
    required this.auth,
  });

  factory UsersSettings.fromJson(Map<String, dynamic> json) =>
      _$UsersSettingsFromJson(json);

  @JsonKey(name: 'auth')
  final AuthSettings auth;
  static const fromJsonFactory = _$UsersSettingsFromJson;
  static const toJsonFactory = _$UsersSettingsToJson;
  Map<String, dynamic> toJson() => _$UsersSettingsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsersSettings &&
            (identical(other.auth, auth) ||
                const DeepCollectionEquality().equals(other.auth, auth)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(auth) ^ runtimeType.hashCode;
}

extension $UsersSettingsExtension on UsersSettings {
  UsersSettings copyWith({AuthSettings? auth}) {
    return UsersSettings(auth: auth ?? this.auth);
  }

  UsersSettings copyWithWrapped({Wrapped<AuthSettings>? auth}) {
    return UsersSettings(auth: (auth != null ? auth.value : this.auth));
  }
}

@JsonSerializable(explicitToJson: true)
class ValidationError {
  ValidationError({
    required this.loc,
    required this.msg,
    required this.type,
  });

  factory ValidationError.fromJson(Map<String, dynamic> json) =>
      _$ValidationErrorFromJson(json);

  @JsonKey(name: 'loc', defaultValue: <String>[])
  final List<String> loc;
  @JsonKey(name: 'msg')
  final String msg;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$ValidationErrorFromJson;
  static const toJsonFactory = _$ValidationErrorToJson;
  Map<String, dynamic> toJson() => _$ValidationErrorToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ValidationError &&
            (identical(other.loc, loc) ||
                const DeepCollectionEquality().equals(other.loc, loc)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(loc) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $ValidationErrorExtension on ValidationError {
  ValidationError copyWith({List<String>? loc, String? msg, String? type}) {
    return ValidationError(
        loc: loc ?? this.loc, msg: msg ?? this.msg, type: type ?? this.type);
  }

  ValidationError copyWithWrapped(
      {Wrapped<List<String>>? loc,
      Wrapped<String>? msg,
      Wrapped<String>? type}) {
    return ValidationError(
        loc: (loc != null ? loc.value : this.loc),
        msg: (msg != null ? msg.value : this.msg),
        type: (type != null ? type.value : this.type));
  }
}

@JsonSerializable(explicitToJson: true)
class WeatherSettingsUpdate {
  WeatherSettingsUpdate({
    this.weatherSendTime,
    this.weatherSendDaily,
    this.weatherSendLessons,
    this.weatherSendIsWeekend,
  });

  factory WeatherSettingsUpdate.fromJson(Map<String, dynamic> json) =>
      _$WeatherSettingsUpdateFromJson(json);

  @JsonKey(name: 'weather_send_time')
  final String? weatherSendTime;
  @JsonKey(name: 'weather_send_daily')
  final bool? weatherSendDaily;
  @JsonKey(name: 'weather_send_lessons')
  final bool? weatherSendLessons;
  @JsonKey(name: 'weather_send_is_weekend')
  final bool? weatherSendIsWeekend;
  static const fromJsonFactory = _$WeatherSettingsUpdateFromJson;
  static const toJsonFactory = _$WeatherSettingsUpdateToJson;
  Map<String, dynamic> toJson() => _$WeatherSettingsUpdateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WeatherSettingsUpdate &&
            (identical(other.weatherSendTime, weatherSendTime) ||
                const DeepCollectionEquality()
                    .equals(other.weatherSendTime, weatherSendTime)) &&
            (identical(other.weatherSendDaily, weatherSendDaily) ||
                const DeepCollectionEquality()
                    .equals(other.weatherSendDaily, weatherSendDaily)) &&
            (identical(other.weatherSendLessons, weatherSendLessons) ||
                const DeepCollectionEquality()
                    .equals(other.weatherSendLessons, weatherSendLessons)) &&
            (identical(other.weatherSendIsWeekend, weatherSendIsWeekend) ||
                const DeepCollectionEquality()
                    .equals(other.weatherSendIsWeekend, weatherSendIsWeekend)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(weatherSendTime) ^
      const DeepCollectionEquality().hash(weatherSendDaily) ^
      const DeepCollectionEquality().hash(weatherSendLessons) ^
      const DeepCollectionEquality().hash(weatherSendIsWeekend) ^
      runtimeType.hashCode;
}

extension $WeatherSettingsUpdateExtension on WeatherSettingsUpdate {
  WeatherSettingsUpdate copyWith(
      {String? weatherSendTime,
      bool? weatherSendDaily,
      bool? weatherSendLessons,
      bool? weatherSendIsWeekend}) {
    return WeatherSettingsUpdate(
        weatherSendTime: weatherSendTime ?? this.weatherSendTime,
        weatherSendDaily: weatherSendDaily ?? this.weatherSendDaily,
        weatherSendLessons: weatherSendLessons ?? this.weatherSendLessons,
        weatherSendIsWeekend:
            weatherSendIsWeekend ?? this.weatherSendIsWeekend);
  }

  WeatherSettingsUpdate copyWithWrapped(
      {Wrapped<String?>? weatherSendTime,
      Wrapped<bool?>? weatherSendDaily,
      Wrapped<bool?>? weatherSendLessons,
      Wrapped<bool?>? weatherSendIsWeekend}) {
    return WeatherSettingsUpdate(
        weatherSendTime: (weatherSendTime != null
            ? weatherSendTime.value
            : this.weatherSendTime),
        weatherSendDaily: (weatherSendDaily != null
            ? weatherSendDaily.value
            : this.weatherSendDaily),
        weatherSendLessons: (weatherSendLessons != null
            ? weatherSendLessons.value
            : this.weatherSendLessons),
        weatherSendIsWeekend: (weatherSendIsWeekend != null
            ? weatherSendIsWeekend.value
            : this.weatherSendIsWeekend));
  }
}

@JsonSerializable(explicitToJson: true)
class AppSchemasOtherPermissionUserFullNameInDb {
  AppSchemasOtherPermissionUserFullNameInDb({
    required this.id,
    required this.person,
  });

  factory AppSchemasOtherPermissionUserFullNameInDb.fromJson(
          Map<String, dynamic> json) =>
      _$AppSchemasOtherPermissionUserFullNameInDbFromJson(json);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'person')
  final PersonFullName person;
  static const fromJsonFactory =
      _$AppSchemasOtherPermissionUserFullNameInDbFromJson;
  static const toJsonFactory =
      _$AppSchemasOtherPermissionUserFullNameInDbToJson;
  Map<String, dynamic> toJson() =>
      _$AppSchemasOtherPermissionUserFullNameInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppSchemasOtherPermissionUserFullNameInDb &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.person, person) ||
                const DeepCollectionEquality().equals(other.person, person)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(person) ^
      runtimeType.hashCode;
}

extension $AppSchemasOtherPermissionUserFullNameInDbExtension
    on AppSchemasOtherPermissionUserFullNameInDb {
  AppSchemasOtherPermissionUserFullNameInDb copyWith(
      {int? id, PersonFullName? person}) {
    return AppSchemasOtherPermissionUserFullNameInDb(
        id: id ?? this.id, person: person ?? this.person);
  }

  AppSchemasOtherPermissionUserFullNameInDb copyWithWrapped(
      {Wrapped<int>? id, Wrapped<PersonFullName>? person}) {
    return AppSchemasOtherPermissionUserFullNameInDb(
        id: (id != null ? id.value : this.id),
        person: (person != null ? person.value : this.person));
  }
}

@JsonSerializable(explicitToJson: true)
class AppSchemasUserUserFullNameInDb {
  AppSchemasUserUserFullNameInDb({
    required this.id,
    required this.person,
  });

  factory AppSchemasUserUserFullNameInDb.fromJson(Map<String, dynamic> json) =>
      _$AppSchemasUserUserFullNameInDbFromJson(json);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'person')
  final PersonFullName person;
  static const fromJsonFactory = _$AppSchemasUserUserFullNameInDbFromJson;
  static const toJsonFactory = _$AppSchemasUserUserFullNameInDbToJson;
  Map<String, dynamic> toJson() => _$AppSchemasUserUserFullNameInDbToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppSchemasUserUserFullNameInDb &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.person, person) ||
                const DeepCollectionEquality().equals(other.person, person)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(person) ^
      runtimeType.hashCode;
}

extension $AppSchemasUserUserFullNameInDbExtension
    on AppSchemasUserUserFullNameInDb {
  AppSchemasUserUserFullNameInDb copyWith({int? id, PersonFullName? person}) {
    return AppSchemasUserUserFullNameInDb(
        id: id ?? this.id, person: person ?? this.person);
  }

  AppSchemasUserUserFullNameInDb copyWithWrapped(
      {Wrapped<int>? id, Wrapped<PersonFullName>? person}) {
    return AppSchemasUserUserFullNameInDb(
        id: (id != null ? id.value : this.id),
        person: (person != null ? person.value : this.person));
  }
}

String? degreeStudyToJson(enums.DegreeStudy? degreeStudy) {
  return degreeStudy?.value;
}

enums.DegreeStudy degreeStudyFromJson(
  Object? degreeStudy, [
  enums.DegreeStudy? defaultValue,
]) {
  return enums.DegreeStudy.values
          .firstWhereOrNull((e) => e.value == degreeStudy) ??
      defaultValue ??
      enums.DegreeStudy.swaggerGeneratedUnknown;
}

List<String> degreeStudyListToJson(List<enums.DegreeStudy>? degreeStudy) {
  if (degreeStudy == null) {
    return [];
  }

  return degreeStudy.map((e) => e.value!).toList();
}

List<enums.DegreeStudy> degreeStudyListFromJson(
  List? degreeStudy, [
  List<enums.DegreeStudy>? defaultValue,
]) {
  if (degreeStudy == null) {
    return defaultValue ?? [];
  }

  return degreeStudy.map((e) => degreeStudyFromJson(e.toString())).toList();
}

List<enums.DegreeStudy>? degreeStudyNullableListFromJson(
  List? degreeStudy, [
  List<enums.DegreeStudy>? defaultValue,
]) {
  if (degreeStudy == null) {
    return defaultValue;
  }

  return degreeStudy.map((e) => degreeStudyFromJson(e.toString())).toList();
}

String? getLessonHeaderToJson(enums.GetLessonHeader? getLessonHeader) {
  return getLessonHeader?.value;
}

enums.GetLessonHeader getLessonHeaderFromJson(
  Object? getLessonHeader, [
  enums.GetLessonHeader? defaultValue,
]) {
  return enums.GetLessonHeader.values
          .firstWhereOrNull((e) => e.value == getLessonHeader) ??
      defaultValue ??
      enums.GetLessonHeader.swaggerGeneratedUnknown;
}

List<String> getLessonHeaderListToJson(
    List<enums.GetLessonHeader>? getLessonHeader) {
  if (getLessonHeader == null) {
    return [];
  }

  return getLessonHeader.map((e) => e.value!).toList();
}

List<enums.GetLessonHeader> getLessonHeaderListFromJson(
  List? getLessonHeader, [
  List<enums.GetLessonHeader>? defaultValue,
]) {
  if (getLessonHeader == null) {
    return defaultValue ?? [];
  }

  return getLessonHeader
      .map((e) => getLessonHeaderFromJson(e.toString()))
      .toList();
}

List<enums.GetLessonHeader>? getLessonHeaderNullableListFromJson(
  List? getLessonHeader, [
  List<enums.GetLessonHeader>? defaultValue,
]) {
  if (getLessonHeader == null) {
    return defaultValue;
  }

  return getLessonHeader
      .map((e) => getLessonHeaderFromJson(e.toString()))
      .toList();
}

int? historyFieldToJson(enums.HistoryField? historyField) {
  return historyField?.value;
}

enums.HistoryField historyFieldFromJson(
  Object? historyField, [
  enums.HistoryField? defaultValue,
]) {
  return enums.HistoryField.values
          .firstWhereOrNull((e) => e.value == historyField) ??
      defaultValue ??
      enums.HistoryField.swaggerGeneratedUnknown;
}

List<int> historyFieldListToJson(List<enums.HistoryField>? historyField) {
  if (historyField == null) {
    return [];
  }

  return historyField.map((e) => e.value!).toList();
}

List<enums.HistoryField> historyFieldListFromJson(
  List? historyField, [
  List<enums.HistoryField>? defaultValue,
]) {
  if (historyField == null) {
    return defaultValue ?? [];
  }

  return historyField.map((e) => historyFieldFromJson(e.toString())).toList();
}

List<enums.HistoryField>? historyFieldNullableListFromJson(
  List? historyField, [
  List<enums.HistoryField>? defaultValue,
]) {
  if (historyField == null) {
    return defaultValue;
  }

  return historyField.map((e) => historyFieldFromJson(e.toString())).toList();
}

String? lessonSortByToJson(enums.LessonSortBy? lessonSortBy) {
  return lessonSortBy?.value;
}

enums.LessonSortBy lessonSortByFromJson(
  Object? lessonSortBy, [
  enums.LessonSortBy? defaultValue,
]) {
  return enums.LessonSortBy.values
          .firstWhereOrNull((e) => e.value == lessonSortBy) ??
      defaultValue ??
      enums.LessonSortBy.swaggerGeneratedUnknown;
}

List<String> lessonSortByListToJson(List<enums.LessonSortBy>? lessonSortBy) {
  if (lessonSortBy == null) {
    return [];
  }

  return lessonSortBy.map((e) => e.value!).toList();
}

List<enums.LessonSortBy> lessonSortByListFromJson(
  List? lessonSortBy, [
  List<enums.LessonSortBy>? defaultValue,
]) {
  if (lessonSortBy == null) {
    return defaultValue ?? [];
  }

  return lessonSortBy.map((e) => lessonSortByFromJson(e.toString())).toList();
}

List<enums.LessonSortBy>? lessonSortByNullableListFromJson(
  List? lessonSortBy, [
  List<enums.LessonSortBy>? defaultValue,
]) {
  if (lessonSortBy == null) {
    return defaultValue;
  }

  return lessonSortBy.map((e) => lessonSortByFromJson(e.toString())).toList();
}

int? lessonStatusToJson(enums.LessonStatus? lessonStatus) {
  return lessonStatus?.value;
}

enums.LessonStatus lessonStatusFromJson(
  Object? lessonStatus, [
  enums.LessonStatus? defaultValue,
]) {
  return enums.LessonStatus.values
          .firstWhereOrNull((e) => e.value == lessonStatus) ??
      defaultValue ??
      enums.LessonStatus.swaggerGeneratedUnknown;
}

List<int> lessonStatusListToJson(List<enums.LessonStatus>? lessonStatus) {
  if (lessonStatus == null) {
    return [];
  }

  return lessonStatus.map((e) => e.value!).toList();
}

List<enums.LessonStatus> lessonStatusListFromJson(
  List? lessonStatus, [
  List<enums.LessonStatus>? defaultValue,
]) {
  if (lessonStatus == null) {
    return defaultValue ?? [];
  }

  return lessonStatus.map((e) => lessonStatusFromJson(e.toString())).toList();
}

List<enums.LessonStatus>? lessonStatusNullableListFromJson(
  List? lessonStatus, [
  List<enums.LessonStatus>? defaultValue,
]) {
  if (lessonStatus == null) {
    return defaultValue;
  }

  return lessonStatus.map((e) => lessonStatusFromJson(e.toString())).toList();
}

String? logStatusAttrToJson(enums.LogStatusAttr? logStatusAttr) {
  return logStatusAttr?.value;
}

enums.LogStatusAttr logStatusAttrFromJson(
  Object? logStatusAttr, [
  enums.LogStatusAttr? defaultValue,
]) {
  return enums.LogStatusAttr.values
          .firstWhereOrNull((e) => e.value == logStatusAttr) ??
      defaultValue ??
      enums.LogStatusAttr.swaggerGeneratedUnknown;
}

List<String> logStatusAttrListToJson(List<enums.LogStatusAttr>? logStatusAttr) {
  if (logStatusAttr == null) {
    return [];
  }

  return logStatusAttr.map((e) => e.value!).toList();
}

List<enums.LogStatusAttr> logStatusAttrListFromJson(
  List? logStatusAttr, [
  List<enums.LogStatusAttr>? defaultValue,
]) {
  if (logStatusAttr == null) {
    return defaultValue ?? [];
  }

  return logStatusAttr.map((e) => logStatusAttrFromJson(e.toString())).toList();
}

List<enums.LogStatusAttr>? logStatusAttrNullableListFromJson(
  List? logStatusAttr, [
  List<enums.LogStatusAttr>? defaultValue,
]) {
  if (logStatusAttr == null) {
    return defaultValue;
  }

  return logStatusAttr.map((e) => logStatusAttrFromJson(e.toString())).toList();
}

String? permissionsToJson(enums.Permissions? permissions) {
  return permissions?.value;
}

enums.Permissions permissionsFromJson(
  Object? permissions, [
  enums.Permissions? defaultValue,
]) {
  return enums.Permissions.values
          .firstWhereOrNull((e) => e.value == permissions) ??
      defaultValue ??
      enums.Permissions.swaggerGeneratedUnknown;
}

List<String> permissionsListToJson(List<enums.Permissions>? permissions) {
  if (permissions == null) {
    return [];
  }

  return permissions.map((e) => e.value!).toList();
}

List<enums.Permissions> permissionsListFromJson(
  List? permissions, [
  List<enums.Permissions>? defaultValue,
]) {
  if (permissions == null) {
    return defaultValue ?? [];
  }

  return permissions.map((e) => permissionsFromJson(e.toString())).toList();
}

List<enums.Permissions>? permissionsNullableListFromJson(
  List? permissions, [
  List<enums.Permissions>? defaultValue,
]) {
  if (permissions == null) {
    return defaultValue;
  }

  return permissions.map((e) => permissionsFromJson(e.toString())).toList();
}

int? personTypeToJson(enums.PersonType? personType) {
  return personType?.value;
}

enums.PersonType personTypeFromJson(
  Object? personType, [
  enums.PersonType? defaultValue,
]) {
  return enums.PersonType.values
          .firstWhereOrNull((e) => e.value == personType) ??
      defaultValue ??
      enums.PersonType.swaggerGeneratedUnknown;
}

List<int> personTypeListToJson(List<enums.PersonType>? personType) {
  if (personType == null) {
    return [];
  }

  return personType.map((e) => e.value!).toList();
}

List<enums.PersonType> personTypeListFromJson(
  List? personType, [
  List<enums.PersonType>? defaultValue,
]) {
  if (personType == null) {
    return defaultValue ?? [];
  }

  return personType.map((e) => personTypeFromJson(e.toString())).toList();
}

List<enums.PersonType>? personTypeNullableListFromJson(
  List? personType, [
  List<enums.PersonType>? defaultValue,
]) {
  if (personType == null) {
    return defaultValue;
  }

  return personType.map((e) => personTypeFromJson(e.toString())).toList();
}

String? semesterTypeToJson(enums.SemesterType? semesterType) {
  return semesterType?.value;
}

enums.SemesterType semesterTypeFromJson(
  Object? semesterType, [
  enums.SemesterType? defaultValue,
]) {
  return enums.SemesterType.values
          .firstWhereOrNull((e) => e.value == semesterType) ??
      defaultValue ??
      enums.SemesterType.swaggerGeneratedUnknown;
}

List<String> semesterTypeListToJson(List<enums.SemesterType>? semesterType) {
  if (semesterType == null) {
    return [];
  }

  return semesterType.map((e) => e.value!).toList();
}

List<enums.SemesterType> semesterTypeListFromJson(
  List? semesterType, [
  List<enums.SemesterType>? defaultValue,
]) {
  if (semesterType == null) {
    return defaultValue ?? [];
  }

  return semesterType.map((e) => semesterTypeFromJson(e.toString())).toList();
}

List<enums.SemesterType>? semesterTypeNullableListFromJson(
  List? semesterType, [
  List<enums.SemesterType>? defaultValue,
]) {
  if (semesterType == null) {
    return defaultValue;
  }

  return semesterType.map((e) => semesterTypeFromJson(e.toString())).toList();
}

int? sessionEventTypeToJson(enums.SessionEventType? sessionEventType) {
  return sessionEventType?.value;
}

enums.SessionEventType sessionEventTypeFromJson(
  Object? sessionEventType, [
  enums.SessionEventType? defaultValue,
]) {
  return enums.SessionEventType.values
          .firstWhereOrNull((e) => e.value == sessionEventType) ??
      defaultValue ??
      enums.SessionEventType.swaggerGeneratedUnknown;
}

List<int> sessionEventTypeListToJson(
    List<enums.SessionEventType>? sessionEventType) {
  if (sessionEventType == null) {
    return [];
  }

  return sessionEventType.map((e) => e.value!).toList();
}

List<enums.SessionEventType> sessionEventTypeListFromJson(
  List? sessionEventType, [
  List<enums.SessionEventType>? defaultValue,
]) {
  if (sessionEventType == null) {
    return defaultValue ?? [];
  }

  return sessionEventType
      .map((e) => sessionEventTypeFromJson(e.toString()))
      .toList();
}

List<enums.SessionEventType>? sessionEventTypeNullableListFromJson(
  List? sessionEventType, [
  List<enums.SessionEventType>? defaultValue,
]) {
  if (sessionEventType == null) {
    return defaultValue;
  }

  return sessionEventType
      .map((e) => sessionEventTypeFromJson(e.toString()))
      .toList();
}

String? sortOrderToJson(enums.SortOrder? sortOrder) {
  return sortOrder?.value;
}

enums.SortOrder sortOrderFromJson(
  Object? sortOrder, [
  enums.SortOrder? defaultValue,
]) {
  return enums.SortOrder.values.firstWhereOrNull((e) => e.value == sortOrder) ??
      defaultValue ??
      enums.SortOrder.swaggerGeneratedUnknown;
}

List<String> sortOrderListToJson(List<enums.SortOrder>? sortOrder) {
  if (sortOrder == null) {
    return [];
  }

  return sortOrder.map((e) => e.value!).toList();
}

List<enums.SortOrder> sortOrderListFromJson(
  List? sortOrder, [
  List<enums.SortOrder>? defaultValue,
]) {
  if (sortOrder == null) {
    return defaultValue ?? [];
  }

  return sortOrder.map((e) => sortOrderFromJson(e.toString())).toList();
}

List<enums.SortOrder>? sortOrderNullableListFromJson(
  List? sortOrder, [
  List<enums.SortOrder>? defaultValue,
]) {
  if (sortOrder == null) {
    return defaultValue;
  }

  return sortOrder.map((e) => sortOrderFromJson(e.toString())).toList();
}

String? studentSortByToJson(enums.StudentSortBy? studentSortBy) {
  return studentSortBy?.value;
}

enums.StudentSortBy studentSortByFromJson(
  Object? studentSortBy, [
  enums.StudentSortBy? defaultValue,
]) {
  return enums.StudentSortBy.values
          .firstWhereOrNull((e) => e.value == studentSortBy) ??
      defaultValue ??
      enums.StudentSortBy.swaggerGeneratedUnknown;
}

List<String> studentSortByListToJson(List<enums.StudentSortBy>? studentSortBy) {
  if (studentSortBy == null) {
    return [];
  }

  return studentSortBy.map((e) => e.value!).toList();
}

List<enums.StudentSortBy> studentSortByListFromJson(
  List? studentSortBy, [
  List<enums.StudentSortBy>? defaultValue,
]) {
  if (studentSortBy == null) {
    return defaultValue ?? [];
  }

  return studentSortBy.map((e) => studentSortByFromJson(e.toString())).toList();
}

List<enums.StudentSortBy>? studentSortByNullableListFromJson(
  List? studentSortBy, [
  List<enums.StudentSortBy>? defaultValue,
]) {
  if (studentSortBy == null) {
    return defaultValue;
  }

  return studentSortBy.map((e) => studentSortByFromJson(e.toString())).toList();
}

int? teacherAcademicTitleToJson(
    enums.TeacherAcademicTitle? teacherAcademicTitle) {
  return teacherAcademicTitle?.value;
}

enums.TeacherAcademicTitle teacherAcademicTitleFromJson(
  Object? teacherAcademicTitle, [
  enums.TeacherAcademicTitle? defaultValue,
]) {
  return enums.TeacherAcademicTitle.values
          .firstWhereOrNull((e) => e.value == teacherAcademicTitle) ??
      defaultValue ??
      enums.TeacherAcademicTitle.swaggerGeneratedUnknown;
}

List<int> teacherAcademicTitleListToJson(
    List<enums.TeacherAcademicTitle>? teacherAcademicTitle) {
  if (teacherAcademicTitle == null) {
    return [];
  }

  return teacherAcademicTitle.map((e) => e.value!).toList();
}

List<enums.TeacherAcademicTitle> teacherAcademicTitleListFromJson(
  List? teacherAcademicTitle, [
  List<enums.TeacherAcademicTitle>? defaultValue,
]) {
  if (teacherAcademicTitle == null) {
    return defaultValue ?? [];
  }

  return teacherAcademicTitle
      .map((e) => teacherAcademicTitleFromJson(e.toString()))
      .toList();
}

List<enums.TeacherAcademicTitle>? teacherAcademicTitleNullableListFromJson(
  List? teacherAcademicTitle, [
  List<enums.TeacherAcademicTitle>? defaultValue,
]) {
  if (teacherAcademicTitle == null) {
    return defaultValue;
  }

  return teacherAcademicTitle
      .map((e) => teacherAcademicTitleFromJson(e.toString()))
      .toList();
}

String? userSortByToJson(enums.UserSortBy? userSortBy) {
  return userSortBy?.value;
}

enums.UserSortBy userSortByFromJson(
  Object? userSortBy, [
  enums.UserSortBy? defaultValue,
]) {
  return enums.UserSortBy.values
          .firstWhereOrNull((e) => e.value == userSortBy) ??
      defaultValue ??
      enums.UserSortBy.swaggerGeneratedUnknown;
}

List<String> userSortByListToJson(List<enums.UserSortBy>? userSortBy) {
  if (userSortBy == null) {
    return [];
  }

  return userSortBy.map((e) => e.value!).toList();
}

List<enums.UserSortBy> userSortByListFromJson(
  List? userSortBy, [
  List<enums.UserSortBy>? defaultValue,
]) {
  if (userSortBy == null) {
    return defaultValue ?? [];
  }

  return userSortBy.map((e) => userSortByFromJson(e.toString())).toList();
}

List<enums.UserSortBy>? userSortByNullableListFromJson(
  List? userSortBy, [
  List<enums.UserSortBy>? defaultValue,
]) {
  if (userSortBy == null) {
    return defaultValue;
  }

  return userSortBy.map((e) => userSortByFromJson(e.toString())).toList();
}

int? viewModeToJson(enums.ViewMode? viewMode) {
  return viewMode?.value;
}

enums.ViewMode viewModeFromJson(
  Object? viewMode, [
  enums.ViewMode? defaultValue,
]) {
  return enums.ViewMode.values.firstWhereOrNull((e) => e.value == viewMode) ??
      defaultValue ??
      enums.ViewMode.swaggerGeneratedUnknown;
}

List<int> viewModeListToJson(List<enums.ViewMode>? viewMode) {
  if (viewMode == null) {
    return [];
  }

  return viewMode.map((e) => e.value!).toList();
}

List<enums.ViewMode> viewModeListFromJson(
  List? viewMode, [
  List<enums.ViewMode>? defaultValue,
]) {
  if (viewMode == null) {
    return defaultValue ?? [];
  }

  return viewMode.map((e) => viewModeFromJson(e.toString())).toList();
}

List<enums.ViewMode>? viewModeNullableListFromJson(
  List? viewMode, [
  List<enums.ViewMode>? defaultValue,
]) {
  if (viewMode == null) {
    return defaultValue;
  }

  return viewMode.map((e) => viewModeFromJson(e.toString())).toList();
}

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
