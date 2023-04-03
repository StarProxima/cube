// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cube_api.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccessToken _$AccessTokenFromJson(Map<String, dynamic> json) => AccessToken(
      accessToken: json['access_token'] as String,
      tokenType: json['token_type'] as String,
    );

Map<String, dynamic> _$AccessTokenToJson(AccessToken instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
    };

AttendanceSettingsUpdate _$AttendanceSettingsUpdateFromJson(
        Map<String, dynamic> json) =>
    AttendanceSettingsUpdate(
      attendanceLectureTime: json['attendance_lecture_time'] as String?,
      attendancePracticeTime: json['attendance_practice_time'] as String?,
    );

Map<String, dynamic> _$AttendanceSettingsUpdateToJson(
        AttendanceSettingsUpdate instance) =>
    <String, dynamic>{
      'attendance_lecture_time': instance.attendanceLectureTime,
      'attendance_practice_time': instance.attendancePracticeTime,
    };

AuthSettings _$AuthSettingsFromJson(Map<String, dynamic> json) => AuthSettings(
      webAccessTokenExpireMinutes:
          json['web_access_token_expire_minutes'] as int,
      botAccessTokenExpireMinutes:
          json['bot_access_token_expire_minutes'] as int,
      mobileAccessTokenExpireMinutes:
          json['mobile_access_token_expire_minutes'] as int,
      refreshTokenExpireMinutes: json['refresh_token_expire_minutes'] as int,
    );

Map<String, dynamic> _$AuthSettingsToJson(AuthSettings instance) =>
    <String, dynamic>{
      'web_access_token_expire_minutes': instance.webAccessTokenExpireMinutes,
      'bot_access_token_expire_minutes': instance.botAccessTokenExpireMinutes,
      'mobile_access_token_expire_minutes':
          instance.mobileAccessTokenExpireMinutes,
      'refresh_token_expire_minutes': instance.refreshTokenExpireMinutes,
    };

BellCreate _$BellCreateFromJson(Map<String, dynamic> json) => BellCreate(
      number: json['number'] as int,
      time: json['time'] as String,
    );

Map<String, dynamic> _$BellCreateToJson(BellCreate instance) =>
    <String, dynamic>{
      'number': instance.number,
      'time': instance.time,
    };

BellInDb _$BellInDbFromJson(Map<String, dynamic> json) => BellInDb(
      id: json['id'] as int,
      number: json['number'] as int,
      time: json['time'] as String,
    );

Map<String, dynamic> _$BellInDbToJson(BellInDb instance) => <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'time': instance.time,
    };

BellUpdate _$BellUpdateFromJson(Map<String, dynamic> json) => BellUpdate(
      number: json['number'] as int,
      time: json['time'] as String,
    );

Map<String, dynamic> _$BellUpdateToJson(BellUpdate instance) =>
    <String, dynamic>{
      'number': instance.number,
      'time': instance.time,
    };

BodyImportBellsApiBellsImportPost _$BodyImportBellsApiBellsImportPostFromJson(
        Map<String, dynamic> json) =>
    BodyImportBellsApiBellsImportPost(
      file: json['file'] as String,
    );

Map<String, dynamic> _$BodyImportBellsApiBellsImportPostToJson(
        BodyImportBellsApiBellsImportPost instance) =>
    <String, dynamic>{
      'file': instance.file,
    };

BodyImportDirectionsApiDirectionsImportPost
    _$BodyImportDirectionsApiDirectionsImportPostFromJson(
            Map<String, dynamic> json) =>
        BodyImportDirectionsApiDirectionsImportPost(
          file: json['file'] as String,
        );

Map<String, dynamic> _$BodyImportDirectionsApiDirectionsImportPostToJson(
        BodyImportDirectionsApiDirectionsImportPost instance) =>
    <String, dynamic>{
      'file': instance.file,
    };

BodyImportDisciplinesApiDisciplinesImportPost
    _$BodyImportDisciplinesApiDisciplinesImportPostFromJson(
            Map<String, dynamic> json) =>
        BodyImportDisciplinesApiDisciplinesImportPost(
          file: json['file'] as String,
        );

Map<String, dynamic> _$BodyImportDisciplinesApiDisciplinesImportPostToJson(
        BodyImportDisciplinesApiDisciplinesImportPost instance) =>
    <String, dynamic>{
      'file': instance.file,
    };

BodyImportEquipmentsApiEquipmentsImportPost
    _$BodyImportEquipmentsApiEquipmentsImportPostFromJson(
            Map<String, dynamic> json) =>
        BodyImportEquipmentsApiEquipmentsImportPost(
          file: json['file'] as String,
        );

Map<String, dynamic> _$BodyImportEquipmentsApiEquipmentsImportPostToJson(
        BodyImportEquipmentsApiEquipmentsImportPost instance) =>
    <String, dynamic>{
      'file': instance.file,
    };

BodyImportFacultiesApiFacultiesImportPost
    _$BodyImportFacultiesApiFacultiesImportPostFromJson(
            Map<String, dynamic> json) =>
        BodyImportFacultiesApiFacultiesImportPost(
          file: json['file'] as String,
        );

Map<String, dynamic> _$BodyImportFacultiesApiFacultiesImportPostToJson(
        BodyImportFacultiesApiFacultiesImportPost instance) =>
    <String, dynamic>{
      'file': instance.file,
    };

BodyImportGroupsApiGroupsImportPost
    _$BodyImportGroupsApiGroupsImportPostFromJson(Map<String, dynamic> json) =>
        BodyImportGroupsApiGroupsImportPost(
          file: json['file'] as String,
        );

Map<String, dynamic> _$BodyImportGroupsApiGroupsImportPostToJson(
        BodyImportGroupsApiGroupsImportPost instance) =>
    <String, dynamic>{
      'file': instance.file,
    };

BodyImportPlacesApiPlacesImportPost
    _$BodyImportPlacesApiPlacesImportPostFromJson(Map<String, dynamic> json) =>
        BodyImportPlacesApiPlacesImportPost(
          file: json['file'] as String,
        );

Map<String, dynamic> _$BodyImportPlacesApiPlacesImportPostToJson(
        BodyImportPlacesApiPlacesImportPost instance) =>
    <String, dynamic>{
      'file': instance.file,
    };

BodyImportProfilesApiProfilesImportPost
    _$BodyImportProfilesApiProfilesImportPostFromJson(
            Map<String, dynamic> json) =>
        BodyImportProfilesApiProfilesImportPost(
          file: json['file'] as String,
        );

Map<String, dynamic> _$BodyImportProfilesApiProfilesImportPostToJson(
        BodyImportProfilesApiProfilesImportPost instance) =>
    <String, dynamic>{
      'file': instance.file,
    };

BodyImportStudentsApiStudentsImportPost
    _$BodyImportStudentsApiStudentsImportPostFromJson(
            Map<String, dynamic> json) =>
        BodyImportStudentsApiStudentsImportPost(
          file: json['file'] as String,
        );

Map<String, dynamic> _$BodyImportStudentsApiStudentsImportPostToJson(
        BodyImportStudentsApiStudentsImportPost instance) =>
    <String, dynamic>{
      'file': instance.file,
    };

BodyImportTeachersApiTeachersImportPost
    _$BodyImportTeachersApiTeachersImportPostFromJson(
            Map<String, dynamic> json) =>
        BodyImportTeachersApiTeachersImportPost(
          file: json['file'] as String,
        );

Map<String, dynamic> _$BodyImportTeachersApiTeachersImportPostToJson(
        BodyImportTeachersApiTeachersImportPost instance) =>
    <String, dynamic>{
      'file': instance.file,
    };

BodyLoginApiAuthLoginPost _$BodyLoginApiAuthLoginPostFromJson(
        Map<String, dynamic> json) =>
    BodyLoginApiAuthLoginPost(
      grantType: json['grant_type'] as String?,
      username: json['username'] as String,
      password: json['password'] as String,
      scope: json['scope'] as String?,
      clientId: json['client_id'] as String?,
      clientSecret: json['client_secret'] as String?,
    );

Map<String, dynamic> _$BodyLoginApiAuthLoginPostToJson(
        BodyLoginApiAuthLoginPost instance) =>
    <String, dynamic>{
      'grant_type': instance.grantType,
      'username': instance.username,
      'password': instance.password,
      'scope': instance.scope,
      'client_id': instance.clientId,
      'client_secret': instance.clientSecret,
    };

DirectionCreate _$DirectionCreateFromJson(Map<String, dynamic> json) =>
    DirectionCreate(
      name: json['name'] as String,
      shortName: json['short_name'] as String?,
      cipher: json['cipher'] as String,
      degreeStudy: degreeStudyFromJson(json['degree_study']),
      facultyId: json['faculty_id'] as int,
      placeLoads: (json['place_loads'] as List<dynamic>?)
              ?.map((e) =>
                  DirectionPlaceLoadInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$DirectionCreateToJson(DirectionCreate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'short_name': instance.shortName,
      'cipher': instance.cipher,
      'degree_study': degreeStudyToJson(instance.degreeStudy),
      'faculty_id': instance.facultyId,
      'place_loads': instance.placeLoads?.map((e) => e.toJson()).toList(),
    };

DirectionInDb _$DirectionInDbFromJson(Map<String, dynamic> json) =>
    DirectionInDb(
      name: json['name'] as String,
      shortName: json['short_name'] as String?,
      cipher: json['cipher'] as String?,
      degreeStudy: degreeStudyFromJson(json['degree_study']),
      facultyId: json['faculty_id'] as int,
      placeLoads: (json['place_loads'] as List<dynamic>?)
              ?.map((e) =>
                  DirectionPlaceLoadInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      id: json['id'] as int,
    );

Map<String, dynamic> _$DirectionInDbToJson(DirectionInDb instance) =>
    <String, dynamic>{
      'name': instance.name,
      'short_name': instance.shortName,
      'cipher': instance.cipher,
      'degree_study': degreeStudyToJson(instance.degreeStudy),
      'faculty_id': instance.facultyId,
      'place_loads': instance.placeLoads?.map((e) => e.toJson()).toList(),
      'id': instance.id,
    };

DirectionPlaceLoadInfo _$DirectionPlaceLoadInfoFromJson(
        Map<String, dynamic> json) =>
    DirectionPlaceLoadInfo(
      course: json['course'] as int,
      minLoad: json['min_load'] as int,
      maxLoad: json['max_load'] as int,
    );

Map<String, dynamic> _$DirectionPlaceLoadInfoToJson(
        DirectionPlaceLoadInfo instance) =>
    <String, dynamic>{
      'course': instance.course,
      'min_load': instance.minLoad,
      'max_load': instance.maxLoad,
    };

DirectionShortInDb _$DirectionShortInDbFromJson(Map<String, dynamic> json) =>
    DirectionShortInDb(
      name: json['name'] as String,
      shortName: json['short_name'] as String?,
      cipher: json['cipher'] as String?,
      degreeStudy: degreeStudyFromJson(json['degree_study']),
      facultyId: json['faculty_id'] as int,
      id: json['id'] as int,
    );

Map<String, dynamic> _$DirectionShortInDbToJson(DirectionShortInDb instance) =>
    <String, dynamic>{
      'name': instance.name,
      'short_name': instance.shortName,
      'cipher': instance.cipher,
      'degree_study': degreeStudyToJson(instance.degreeStudy),
      'faculty_id': instance.facultyId,
      'id': instance.id,
    };

DirectionUpdate _$DirectionUpdateFromJson(Map<String, dynamic> json) =>
    DirectionUpdate(
      name: json['name'] as String,
      shortName: json['short_name'] as String?,
      cipher: json['cipher'] as String,
      degreeStudy: degreeStudyFromJson(json['degree_study']),
      facultyId: json['faculty_id'] as int,
      placeLoads: (json['place_loads'] as List<dynamic>?)
              ?.map((e) =>
                  DirectionPlaceLoadInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$DirectionUpdateToJson(DirectionUpdate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'short_name': instance.shortName,
      'cipher': instance.cipher,
      'degree_study': degreeStudyToJson(instance.degreeStudy),
      'faculty_id': instance.facultyId,
      'place_loads': instance.placeLoads?.map((e) => e.toJson()).toList(),
    };

DisciplineCreate _$DisciplineCreateFromJson(Map<String, dynamic> json) =>
    DisciplineCreate(
      name: json['name'] as String,
      shortName: json['short_name'] as String?,
      facultiesIds: (json['faculties_ids'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
    );

Map<String, dynamic> _$DisciplineCreateToJson(DisciplineCreate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'short_name': instance.shortName,
      'faculties_ids': instance.facultiesIds,
    };

DisciplineInDb _$DisciplineInDbFromJson(Map<String, dynamic> json) =>
    DisciplineInDb(
      name: json['name'] as String,
      shortName: json['short_name'] as String?,
      id: json['id'] as int,
      facultiesIds: (json['faculties_ids'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
    );

Map<String, dynamic> _$DisciplineInDbToJson(DisciplineInDb instance) =>
    <String, dynamic>{
      'name': instance.name,
      'short_name': instance.shortName,
      'id': instance.id,
      'faculties_ids': instance.facultiesIds,
    };

DisciplineUpdate _$DisciplineUpdateFromJson(Map<String, dynamic> json) =>
    DisciplineUpdate(
      name: json['name'] as String,
      shortName: json['short_name'] as String?,
      facultiesIds: (json['faculties_ids'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
    );

Map<String, dynamic> _$DisciplineUpdateToJson(DisciplineUpdate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'short_name': instance.shortName,
      'faculties_ids': instance.facultiesIds,
    };

EquipmentCreate _$EquipmentCreateFromJson(Map<String, dynamic> json) =>
    EquipmentCreate(
      name: json['name'] as String,
    );

Map<String, dynamic> _$EquipmentCreateToJson(EquipmentCreate instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

EquipmentInDb _$EquipmentInDbFromJson(Map<String, dynamic> json) =>
    EquipmentInDb(
      name: json['name'] as String,
      id: json['id'] as int,
    );

Map<String, dynamic> _$EquipmentInDbToJson(EquipmentInDb instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };

EquipmentUpdate _$EquipmentUpdateFromJson(Map<String, dynamic> json) =>
    EquipmentUpdate(
      name: json['name'] as String,
    );

Map<String, dynamic> _$EquipmentUpdateToJson(EquipmentUpdate instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

ExportExtraInfo _$ExportExtraInfoFromJson(Map<String, dynamic> json) =>
    ExportExtraInfo(
      viceRectorName: json['vice_rector_name'] as String?,
      headOfUmuName: json['head_of_umu_name'] as String?,
      deanName: json['dean_name'] as String?,
    );

Map<String, dynamic> _$ExportExtraInfoToJson(ExportExtraInfo instance) =>
    <String, dynamic>{
      'vice_rector_name': instance.viceRectorName,
      'head_of_umu_name': instance.headOfUmuName,
      'dean_name': instance.deanName,
    };

ExportIcal _$ExportIcalFromJson(Map<String, dynamic> json) => ExportIcal(
      semesterFacultyId: json['semester_faculty_id'] as int?,
      groupId: json['group_id'] as int?,
      teacherId: json['teacher_id'] as int?,
    );

Map<String, dynamic> _$ExportIcalToJson(ExportIcal instance) =>
    <String, dynamic>{
      'semester_faculty_id': instance.semesterFacultyId,
      'group_id': instance.groupId,
      'teacher_id': instance.teacherId,
    };

FacultyCreate _$FacultyCreateFromJson(Map<String, dynamic> json) =>
    FacultyCreate(
      name: json['name'] as String,
      shortName: json['short_name'] as String,
      linkSourceTimetable: json['link_source_timetable'] as String?,
    );

Map<String, dynamic> _$FacultyCreateToJson(FacultyCreate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'short_name': instance.shortName,
      'link_source_timetable': instance.linkSourceTimetable,
    };

FacultyForbidden _$FacultyForbiddenFromJson(Map<String, dynamic> json) =>
    FacultyForbidden(
      facultiesForbidden: (json['faculties_forbidden'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
    );

Map<String, dynamic> _$FacultyForbiddenToJson(FacultyForbidden instance) =>
    <String, dynamic>{
      'faculties_forbidden': instance.facultiesForbidden,
    };

FacultyInDb _$FacultyInDbFromJson(Map<String, dynamic> json) => FacultyInDb(
      name: json['name'] as String,
      shortName: json['short_name'] as String,
      linkSourceTimetable: json['link_source_timetable'] as String?,
      inactive: json['inactive'] as bool,
      id: json['id'] as int,
    );

Map<String, dynamic> _$FacultyInDbToJson(FacultyInDb instance) =>
    <String, dynamic>{
      'name': instance.name,
      'short_name': instance.shortName,
      'link_source_timetable': instance.linkSourceTimetable,
      'inactive': instance.inactive,
      'id': instance.id,
    };

FacultyUpdate _$FacultyUpdateFromJson(Map<String, dynamic> json) =>
    FacultyUpdate(
      name: json['name'] as String,
      shortName: json['short_name'] as String,
      linkSourceTimetable: json['link_source_timetable'] as String?,
      inactive: json['inactive'] as bool?,
    );

Map<String, dynamic> _$FacultyUpdateToJson(FacultyUpdate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'short_name': instance.shortName,
      'link_source_timetable': instance.linkSourceTimetable,
      'inactive': instance.inactive,
    };

GroupCreate _$GroupCreateFromJson(Map<String, dynamic> json) => GroupCreate(
      name: json['name'] as String,
      course: json['course'] as int,
      facultyId: json['faculty_id'] as int,
      directionId: json['direction_id'] as int,
      profileId: json['profile_id'] as int?,
    );

Map<String, dynamic> _$GroupCreateToJson(GroupCreate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'course': instance.course,
      'faculty_id': instance.facultyId,
      'direction_id': instance.directionId,
      'profile_id': instance.profileId,
    };

GroupFullInDb _$GroupFullInDbFromJson(Map<String, dynamic> json) =>
    GroupFullInDb(
      id: json['id'] as int,
      name: json['name'] as String,
      course: json['course'] as int,
      faculty: FacultyInDb.fromJson(json['faculty'] as Map<String, dynamic>),
      direction:
          DirectionInDb.fromJson(json['direction'] as Map<String, dynamic>),
      profile: json['profile'] == null
          ? null
          : ProfileInDb.fromJson(json['profile'] as Map<String, dynamic>),
      size: json['size'] as int,
    );

Map<String, dynamic> _$GroupFullInDbToJson(GroupFullInDb instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'course': instance.course,
      'faculty': instance.faculty.toJson(),
      'direction': instance.direction.toJson(),
      'profile': instance.profile?.toJson(),
      'size': instance.size,
    };

GroupInDb _$GroupInDbFromJson(Map<String, dynamic> json) => GroupInDb(
      name: json['name'] as String,
      course: json['course'] as int,
      facultyId: json['faculty_id'] as int,
      directionId: json['direction_id'] as int,
      profileId: json['profile_id'] as int?,
      size: json['size'] as int,
      id: json['id'] as int,
    );

Map<String, dynamic> _$GroupInDbToJson(GroupInDb instance) => <String, dynamic>{
      'name': instance.name,
      'course': instance.course,
      'faculty_id': instance.facultyId,
      'direction_id': instance.directionId,
      'profile_id': instance.profileId,
      'size': instance.size,
      'id': instance.id,
    };

GroupShortInDb _$GroupShortInDbFromJson(Map<String, dynamic> json) =>
    GroupShortInDb(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$GroupShortInDbToJson(GroupShortInDb instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

HTTPValidationError _$HTTPValidationErrorFromJson(Map<String, dynamic> json) =>
    HTTPValidationError(
      detail: (json['detail'] as List<dynamic>?)
              ?.map((e) => ValidationError.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$HTTPValidationErrorToJson(
        HTTPValidationError instance) =>
    <String, dynamic>{
      'detail': instance.detail?.map((e) => e.toJson()).toList(),
    };

HourlyReportSettingsUpdate _$HourlyReportSettingsUpdateFromJson(
        Map<String, dynamic> json) =>
    HourlyReportSettingsUpdate(
      setThemeTime: json['set_theme_time'] as String?,
    );

Map<String, dynamic> _$HourlyReportSettingsUpdateToJson(
        HourlyReportSettingsUpdate instance) =>
    <String, dynamic>{
      'set_theme_time': instance.setThemeTime,
    };

JournalCreate _$JournalCreateFromJson(Map<String, dynamic> json) =>
    JournalCreate(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  JournalStudentReason.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      groupId: json['group_id'] as int,
      lessonId: json['lesson_id'] as int,
      mainStudentId: json['main_student_id'] as int,
    );

Map<String, dynamic> _$JournalCreateToJson(JournalCreate instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'group_id': instance.groupId,
      'lesson_id': instance.lessonId,
      'main_student_id': instance.mainStudentId,
    };

JournalStudentReason _$JournalStudentReasonFromJson(
        Map<String, dynamic> json) =>
    JournalStudentReason(
      studentId: json['student_id'] as int,
      isSeriousReason: json['is_serious_reason'] as bool,
    );

Map<String, dynamic> _$JournalStudentReasonToJson(
        JournalStudentReason instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'is_serious_reason': instance.isSeriousReason,
    };

LastChange _$LastChangeFromJson(Map<String, dynamic> json) => LastChange(
      timestamp: DateTime.parse(json['timestamp'] as String),
      user: AppSchemasUserUserFullNameInDb.fromJson(
          json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LastChangeToJson(LastChange instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'user': instance.user.toJson(),
    };

LessonAutocomplete _$LessonAutocompleteFromJson(Map<String, dynamic> json) =>
    LessonAutocomplete(
      teachers: (json['teachers'] as List<dynamic>?)
              ?.map((e) => TeacherShortInDb.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      places: (json['places'] as List<dynamic>?)
              ?.map((e) => PlaceNameInDb.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      groups: (json['groups'] as List<dynamic>?)
              ?.map((e) => GroupShortInDb.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$LessonAutocompleteToJson(LessonAutocomplete instance) =>
    <String, dynamic>{
      'teachers': instance.teachers.map((e) => e.toJson()).toList(),
      'places': instance.places.map((e) => e.toJson()).toList(),
      'groups': instance.groups.map((e) => e.toJson()).toList(),
    };

LessonCancelReason _$LessonCancelReasonFromJson(Map<String, dynamic> json) =>
    LessonCancelReason(
      notify: json['notify'] as bool? ?? false,
      reason: json['reason'] as String?,
      showReasonStudents: json['show_reason_students'] as bool?,
    );

Map<String, dynamic> _$LessonCancelReasonToJson(LessonCancelReason instance) =>
    <String, dynamic>{
      'notify': instance.notify,
      'reason': instance.reason,
      'show_reason_students': instance.showReasonStudents,
    };

LessonCollision _$LessonCollisionFromJson(Map<String, dynamic> json) =>
    LessonCollision(
      field: json['field'] as String,
      data: LessonCollisionInfo.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LessonCollisionToJson(LessonCollision instance) =>
    <String, dynamic>{
      'field': instance.field,
      'data': instance.data.toJson(),
    };

LessonCollisionInfo _$LessonCollisionInfoFromJson(Map<String, dynamic> json) =>
    LessonCollisionInfo(
      number: json['number'] as int,
      isRemotely: json['is_remotely'] as bool,
      isElective: json['is_elective'] as bool,
      type: LessonTypeInDb.fromJson(json['type'] as Map<String, dynamic>),
      discipline: json['discipline'] == null
          ? null
          : DisciplineInDb.fromJson(json['discipline'] as Map<String, dynamic>),
      place: json['place'] == null
          ? null
          : PlaceInDb.fromJson(json['place'] as Map<String, dynamic>),
      date: DateTime.parse(json['date'] as String),
      id: json['id'] as int,
      groupNames: (json['group_names'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      teacherNames: (json['teacher_names'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$LessonCollisionInfoToJson(
        LessonCollisionInfo instance) =>
    <String, dynamic>{
      'number': instance.number,
      'is_remotely': instance.isRemotely,
      'is_elective': instance.isElective,
      'type': instance.type.toJson(),
      'discipline': instance.discipline?.toJson(),
      'place': instance.place?.toJson(),
      'date': _dateToJson(instance.date),
      'id': instance.id,
      'group_names': instance.groupNames,
      'teacher_names': instance.teacherNames,
    };

LessonCreate _$LessonCreateFromJson(Map<String, dynamic> json) => LessonCreate(
      number: json['number'] as int,
      typeId: json['type_id'] as int,
      disciplineId: json['discipline_id'] as int?,
      isRemotely: json['is_remotely'] as bool? ?? false,
      isElective: json['is_elective'] as bool? ?? false,
      groups:
          (json['groups'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              [],
      teachers:
          (json['teachers'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              [],
      placeId: json['place_id'] as int?,
      semesterFacultyId: json['semester_faculty_id'] as int,
      date: json['date'] as String,
    );

Map<String, dynamic> _$LessonCreateToJson(LessonCreate instance) =>
    <String, dynamic>{
      'number': instance.number,
      'type_id': instance.typeId,
      'discipline_id': instance.disciplineId,
      'is_remotely': instance.isRemotely,
      'is_elective': instance.isElective,
      'groups': instance.groups,
      'teachers': instance.teachers,
      'place_id': instance.placeId,
      'semester_faculty_id': instance.semesterFacultyId,
      'date': instance.date,
    };

LessonCreateWithParams _$LessonCreateWithParamsFromJson(
        Map<String, dynamic> json) =>
    LessonCreateWithParams(
      ignoreCollisions: json['ignore_collisions'] as bool? ?? false,
      notify: json['notify'] as bool? ?? false,
      lesson: LessonCreate.fromJson(json['lesson'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LessonCreateWithParamsToJson(
        LessonCreateWithParams instance) =>
    <String, dynamic>{
      'ignore_collisions': instance.ignoreCollisions,
      'notify': instance.notify,
      'lesson': instance.lesson.toJson(),
    };

LessonFullInDb _$LessonFullInDbFromJson(Map<String, dynamic> json) =>
    LessonFullInDb(
      id: json['id'] as int,
      theme: json['theme'] as String?,
      status: lessonStatusFromJson(json['status']),
      groups:
          (json['groups'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              [],
      teachers:
          (json['teachers'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              [],
      number: json['number'] as int,
      isRemotely: json['is_remotely'] as bool,
      isElective: json['is_elective'] as bool,
      type: LessonTypeInDb.fromJson(json['type'] as Map<String, dynamic>),
      discipline: json['discipline'] == null
          ? null
          : DisciplineInDb.fromJson(json['discipline'] as Map<String, dynamic>),
      place: json['place'] == null
          ? null
          : PlaceInDb.fromJson(json['place'] as Map<String, dynamic>),
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$LessonFullInDbToJson(LessonFullInDb instance) =>
    <String, dynamic>{
      'id': instance.id,
      'theme': instance.theme,
      'status': lessonStatusToJson(instance.status),
      'groups': instance.groups,
      'teachers': instance.teachers,
      'number': instance.number,
      'is_remotely': instance.isRemotely,
      'is_elective': instance.isElective,
      'type': instance.type.toJson(),
      'discipline': instance.discipline?.toJson(),
      'place': instance.place?.toJson(),
      'date': _dateToJson(instance.date),
    };

LessonFullNamesInDb _$LessonFullNamesInDbFromJson(Map<String, dynamic> json) =>
    LessonFullNamesInDb(
      id: json['id'] as int,
      theme: json['theme'] as String?,
      status: lessonStatusFromJson(json['status']),
      groupNames: (json['group_names'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      teacherNames: (json['teacher_names'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      number: json['number'] as int,
      isRemotely: json['is_remotely'] as bool,
      isElective: json['is_elective'] as bool,
      type: LessonTypeInDb.fromJson(json['type'] as Map<String, dynamic>),
      discipline: json['discipline'] == null
          ? null
          : DisciplineInDb.fromJson(json['discipline'] as Map<String, dynamic>),
      place: json['place'] == null
          ? null
          : PlaceInDb.fromJson(json['place'] as Map<String, dynamic>),
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$LessonFullNamesInDbToJson(
        LessonFullNamesInDb instance) =>
    <String, dynamic>{
      'id': instance.id,
      'theme': instance.theme,
      'status': lessonStatusToJson(instance.status),
      'group_names': instance.groupNames,
      'teacher_names': instance.teacherNames,
      'number': instance.number,
      'is_remotely': instance.isRemotely,
      'is_elective': instance.isElective,
      'type': instance.type.toJson(),
      'discipline': instance.discipline?.toJson(),
      'place': instance.place?.toJson(),
      'date': _dateToJson(instance.date),
    };

LessonHistory _$LessonHistoryFromJson(Map<String, dynamic> json) =>
    LessonHistory(
      id: json['id'] as int,
      user: AppSchemasUserUserFullNameInDb.fromJson(
          json['user'] as Map<String, dynamic>),
      changes: (json['changes'] as List<dynamic>?)
              ?.map(
                  (e) => LessonHistoryField.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$LessonHistoryToJson(LessonHistory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user.toJson(),
      'changes': instance.changes.map((e) => e.toJson()).toList(),
      'timestamp': instance.timestamp.toIso8601String(),
    };

LessonHistoryField _$LessonHistoryFieldFromJson(Map<String, dynamic> json) =>
    LessonHistoryField(
      field: historyFieldFromJson(json['field']),
      newValue: json['new_value'] as String?,
      oldValue: json['old_value'] as String?,
    );

Map<String, dynamic> _$LessonHistoryFieldToJson(LessonHistoryField instance) =>
    <String, dynamic>{
      'field': historyFieldToJson(instance.field),
      'new_value': instance.newValue,
      'old_value': instance.oldValue,
    };

LessonInDb _$LessonInDbFromJson(Map<String, dynamic> json) => LessonInDb(
      id: json['id'] as int,
      theme: json['theme'] as String?,
      status: lessonStatusFromJson(json['status']),
      groups:
          (json['groups'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              [],
      teachers:
          (json['teachers'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              [],
      number: json['number'] as int,
      isRemotely: json['is_remotely'] as bool,
      isElective: json['is_elective'] as bool,
      typeId: json['type_id'] as int,
      disciplineId: json['discipline_id'] as int?,
      placeId: json['place_id'] as int?,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$LessonInDbToJson(LessonInDb instance) =>
    <String, dynamic>{
      'id': instance.id,
      'theme': instance.theme,
      'status': lessonStatusToJson(instance.status),
      'groups': instance.groups,
      'teachers': instance.teachers,
      'number': instance.number,
      'is_remotely': instance.isRemotely,
      'is_elective': instance.isElective,
      'type_id': instance.typeId,
      'discipline_id': instance.disciplineId,
      'place_id': instance.placeId,
      'date': _dateToJson(instance.date),
    };

LessonRelated _$LessonRelatedFromJson(Map<String, dynamic> json) =>
    LessonRelated(
      id: json['id'] as int,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$LessonRelatedToJson(LessonRelated instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': _dateToJson(instance.date),
    };

LessonResults _$LessonResultsFromJson(Map<String, dynamic> json) =>
    LessonResults(
      headerIds: (json['header_ids'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      lessons: (json['lessons'] as List<dynamic>?)
              ?.map((e) => LessonInDb.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      lastChange: json['last_change'] == null
          ? null
          : LastChange.fromJson(json['last_change'] as Map<String, dynamic>),
      mode: viewModeFromJson(json['mode']),
    );

Map<String, dynamic> _$LessonResultsToJson(LessonResults instance) =>
    <String, dynamic>{
      'header_ids': instance.headerIds,
      'lessons': instance.lessons.map((e) => e.toJson()).toList(),
      'last_change': instance.lastChange?.toJson(),
      'mode': viewModeToJson(instance.mode),
    };

LessonTypeInDb _$LessonTypeInDbFromJson(Map<String, dynamic> json) =>
    LessonTypeInDb(
      name: json['name'] as String,
      shortName: json['short_name'] as String,
      color: json['color'] as String,
      id: json['id'] as int,
    );

Map<String, dynamic> _$LessonTypeInDbToJson(LessonTypeInDb instance) =>
    <String, dynamic>{
      'name': instance.name,
      'short_name': instance.shortName,
      'color': instance.color,
      'id': instance.id,
    };

LessonUpdate _$LessonUpdateFromJson(Map<String, dynamic> json) => LessonUpdate(
      disciplineId: json['discipline_id'] as int?,
      number: json['number'] as int?,
      typeId: json['type_id'] as int?,
      isRemotely: json['is_remotely'] as bool? ?? false,
      isElective: json['is_elective'] as bool? ?? false,
      groups:
          (json['groups'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              [],
      teachers:
          (json['teachers'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              [],
      placeId: json['place_id'] as int?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$LessonUpdateToJson(LessonUpdate instance) =>
    <String, dynamic>{
      'discipline_id': instance.disciplineId,
      'number': instance.number,
      'type_id': instance.typeId,
      'is_remotely': instance.isRemotely,
      'is_elective': instance.isElective,
      'groups': instance.groups,
      'teachers': instance.teachers,
      'place_id': instance.placeId,
      'date': instance.date,
    };

LessonUpdateWithParams _$LessonUpdateWithParamsFromJson(
        Map<String, dynamic> json) =>
    LessonUpdateWithParams(
      ignoreCollisions: json['ignore_collisions'] as bool? ?? false,
      notify: json['notify'] as bool? ?? false,
      lesson: LessonUpdate.fromJson(json['lesson'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LessonUpdateWithParamsToJson(
        LessonUpdateWithParams instance) =>
    <String, dynamic>{
      'ignore_collisions': instance.ignoreCollisions,
      'notify': instance.notify,
      'lesson': instance.lesson.toJson(),
    };

LessonsSettings _$LessonsSettingsFromJson(Map<String, dynamic> json) =>
    LessonsSettings(
      durationMinutes: json['duration_minutes'] as int,
    );

Map<String, dynamic> _$LessonsSettingsToJson(LessonsSettings instance) =>
    <String, dynamic>{
      'duration_minutes': instance.durationMinutes,
    };

Log _$LogFromJson(Map<String, dynamic> json) => Log(
      id: json['id'] as int,
      message: json['message'] as String,
      data: json['data'],
      status: logStatusAttrFromJson(json['status']),
      date: DateTime.parse(json['date'] as String),
      time: json['time'] as String,
      module: LogModule.fromJson(json['module'] as Map<String, dynamic>),
      entity: json['entity'] == null
          ? null
          : LogEntity.fromJson(json['entity'] as Map<String, dynamic>),
      action: LogAction.fromJson(json['action'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : AppSchemasUserUserFullNameInDb.fromJson(
              json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LogToJson(Log instance) => <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'data': instance.data,
      'status': logStatusAttrToJson(instance.status),
      'date': _dateToJson(instance.date),
      'time': instance.time,
      'module': instance.module.toJson(),
      'entity': instance.entity?.toJson(),
      'action': instance.action.toJson(),
      'user': instance.user?.toJson(),
    };

LogAction _$LogActionFromJson(Map<String, dynamic> json) => LogAction(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$LogActionToJson(LogAction instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

LogEntity _$LogEntityFromJson(Map<String, dynamic> json) => LogEntity(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$LogEntityToJson(LogEntity instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

LogModule _$LogModuleFromJson(Map<String, dynamic> json) => LogModule(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$LogModuleToJson(LogModule instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

MainLessonCollision _$MainLessonCollisionFromJson(Map<String, dynamic> json) =>
    MainLessonCollision(
      field: json['field'] as String,
      data: MainLessonCollisionInfo.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MainLessonCollisionToJson(
        MainLessonCollision instance) =>
    <String, dynamic>{
      'field': instance.field,
      'data': instance.data.toJson(),
    };

MainLessonCollisionInfo _$MainLessonCollisionInfoFromJson(
        Map<String, dynamic> json) =>
    MainLessonCollisionInfo(
      number: json['number'] as int,
      isRemotely: json['is_remotely'] as bool,
      isElective: json['is_elective'] as bool,
      type: LessonTypeInDb.fromJson(json['type'] as Map<String, dynamic>),
      discipline: json['discipline'] == null
          ? null
          : DisciplineInDb.fromJson(json['discipline'] as Map<String, dynamic>),
      place: json['place'] == null
          ? null
          : PlaceInDb.fromJson(json['place'] as Map<String, dynamic>),
      id: json['id'] as int,
      weekday: json['weekday'] as int,
      parity: json['parity'] as int?,
      groupNames: (json['group_names'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      teacherNames: (json['teacher_names'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$MainLessonCollisionInfoToJson(
        MainLessonCollisionInfo instance) =>
    <String, dynamic>{
      'number': instance.number,
      'is_remotely': instance.isRemotely,
      'is_elective': instance.isElective,
      'type': instance.type.toJson(),
      'discipline': instance.discipline?.toJson(),
      'place': instance.place?.toJson(),
      'id': instance.id,
      'weekday': instance.weekday,
      'parity': instance.parity,
      'group_names': instance.groupNames,
      'teacher_names': instance.teacherNames,
    };

MainLessonCreate _$MainLessonCreateFromJson(Map<String, dynamic> json) =>
    MainLessonCreate(
      number: json['number'] as int,
      typeId: json['type_id'] as int,
      disciplineId: json['discipline_id'] as int?,
      isRemotely: json['is_remotely'] as bool? ?? false,
      isElective: json['is_elective'] as bool? ?? false,
      groups:
          (json['groups'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              [],
      teachers:
          (json['teachers'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              [],
      placeId: json['place_id'] as int?,
      semesterFacultyId: json['semester_faculty_id'] as int,
      weekday: json['weekday'] as int,
      parity: json['parity'] as int?,
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
    );

Map<String, dynamic> _$MainLessonCreateToJson(MainLessonCreate instance) =>
    <String, dynamic>{
      'number': instance.number,
      'type_id': instance.typeId,
      'discipline_id': instance.disciplineId,
      'is_remotely': instance.isRemotely,
      'is_elective': instance.isElective,
      'groups': instance.groups,
      'teachers': instance.teachers,
      'place_id': instance.placeId,
      'semester_faculty_id': instance.semesterFacultyId,
      'weekday': instance.weekday,
      'parity': instance.parity,
      'start_date': _dateToJson(instance.startDate),
      'end_date': _dateToJson(instance.endDate),
    };

MainLessonCreateWithParams _$MainLessonCreateWithParamsFromJson(
        Map<String, dynamic> json) =>
    MainLessonCreateWithParams(
      ignoreCollisions: json['ignore_collisions'] as bool? ?? false,
      notify: json['notify'] as bool? ?? false,
      lesson: MainLessonCreate.fromJson(json['lesson'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MainLessonCreateWithParamsToJson(
        MainLessonCreateWithParams instance) =>
    <String, dynamic>{
      'ignore_collisions': instance.ignoreCollisions,
      'notify': instance.notify,
      'lesson': instance.lesson.toJson(),
    };

MainLessonExport _$MainLessonExportFromJson(Map<String, dynamic> json) =>
    MainLessonExport(
      facultyId: json['faculty_id'] as int,
      semesterFacultyId: json['semester_faculty_id'] as int?,
      directions: (json['directions'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      profiles:
          (json['profiles'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              [],
      courses:
          (json['courses'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              [],
      groups:
          (json['groups'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              [],
      extra: json['extra'] == null
          ? null
          : ExportExtraInfo.fromJson(json['extra'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MainLessonExportToJson(MainLessonExport instance) =>
    <String, dynamic>{
      'faculty_id': instance.facultyId,
      'semester_faculty_id': instance.semesterFacultyId,
      'directions': instance.directions,
      'profiles': instance.profiles,
      'courses': instance.courses,
      'groups': instance.groups,
      'extra': instance.extra?.toJson(),
    };

MainLessonFullWithRelated _$MainLessonFullWithRelatedFromJson(
        Map<String, dynamic> json) =>
    MainLessonFullWithRelated(
      number: json['number'] as int,
      isRemotely: json['is_remotely'] as bool,
      isElective: json['is_elective'] as bool,
      type: LessonTypeInDb.fromJson(json['type'] as Map<String, dynamic>),
      discipline: json['discipline'] == null
          ? null
          : DisciplineInDb.fromJson(json['discipline'] as Map<String, dynamic>),
      place: json['place'] == null
          ? null
          : PlaceInDb.fromJson(json['place'] as Map<String, dynamic>),
      id: json['id'] as int,
      weekday: json['weekday'] as int,
      parity: json['parity'] as int?,
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
      groups:
          (json['groups'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              [],
      teachers:
          (json['teachers'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              [],
      relatedLessons: (json['related_lessons'] as List<dynamic>?)
              ?.map((e) => LessonRelated.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$MainLessonFullWithRelatedToJson(
        MainLessonFullWithRelated instance) =>
    <String, dynamic>{
      'number': instance.number,
      'is_remotely': instance.isRemotely,
      'is_elective': instance.isElective,
      'type': instance.type.toJson(),
      'discipline': instance.discipline?.toJson(),
      'place': instance.place?.toJson(),
      'id': instance.id,
      'weekday': instance.weekday,
      'parity': instance.parity,
      'start_date': _dateToJson(instance.startDate),
      'end_date': _dateToJson(instance.endDate),
      'groups': instance.groups,
      'teachers': instance.teachers,
      'related_lessons':
          instance.relatedLessons?.map((e) => e.toJson()).toList(),
    };

MainLessonHistory _$MainLessonHistoryFromJson(Map<String, dynamic> json) =>
    MainLessonHistory(
      id: json['id'] as int,
      user: AppSchemasUserUserFullNameInDb.fromJson(
          json['user'] as Map<String, dynamic>),
      changes: (json['changes'] as List<dynamic>?)
              ?.map((e) =>
                  MainLessonHistoryField.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$MainLessonHistoryToJson(MainLessonHistory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user.toJson(),
      'changes': instance.changes.map((e) => e.toJson()).toList(),
      'timestamp': instance.timestamp.toIso8601String(),
    };

MainLessonHistoryField _$MainLessonHistoryFieldFromJson(
        Map<String, dynamic> json) =>
    MainLessonHistoryField(
      field: historyFieldFromJson(json['field']),
      newValue: json['new_value'] as String?,
      oldValue: json['old_value'] as String?,
    );

Map<String, dynamic> _$MainLessonHistoryFieldToJson(
        MainLessonHistoryField instance) =>
    <String, dynamic>{
      'field': historyFieldToJson(instance.field),
      'new_value': instance.newValue,
      'old_value': instance.oldValue,
    };

MainLessonInfo _$MainLessonInfoFromJson(Map<String, dynamic> json) =>
    MainLessonInfo(
      number: json['number'] as int,
      isRemotely: json['is_remotely'] as bool,
      isElective: json['is_elective'] as bool,
      typeId: json['type_id'] as int,
      disciplineId: json['discipline_id'] as int?,
      placeId: json['place_id'] as int?,
      id: json['id'] as int,
      weekday: json['weekday'] as int,
      parity: json['parity'] as int?,
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
      groups:
          (json['groups'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              [],
      teachers:
          (json['teachers'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              [],
    );

Map<String, dynamic> _$MainLessonInfoToJson(MainLessonInfo instance) =>
    <String, dynamic>{
      'number': instance.number,
      'is_remotely': instance.isRemotely,
      'is_elective': instance.isElective,
      'type_id': instance.typeId,
      'discipline_id': instance.disciplineId,
      'place_id': instance.placeId,
      'id': instance.id,
      'weekday': instance.weekday,
      'parity': instance.parity,
      'start_date': _dateToJson(instance.startDate),
      'end_date': _dateToJson(instance.endDate),
      'groups': instance.groups,
      'teachers': instance.teachers,
    };

MainLessonResults _$MainLessonResultsFromJson(Map<String, dynamic> json) =>
    MainLessonResults(
      headerIds: (json['header_ids'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      lessons: (json['lessons'] as List<dynamic>?)
              ?.map((e) => MainLessonInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      lastChange: json['last_change'] == null
          ? null
          : LastChange.fromJson(json['last_change'] as Map<String, dynamic>),
      mode: viewModeFromJson(json['mode']),
    );

Map<String, dynamic> _$MainLessonResultsToJson(MainLessonResults instance) =>
    <String, dynamic>{
      'header_ids': instance.headerIds,
      'lessons': instance.lessons.map((e) => e.toJson()).toList(),
      'last_change': instance.lastChange?.toJson(),
      'mode': viewModeToJson(instance.mode),
    };

MainLessonUpdate _$MainLessonUpdateFromJson(Map<String, dynamic> json) =>
    MainLessonUpdate(
      disciplineId: json['discipline_id'] as int?,
      number: json['number'] as int?,
      typeId: json['type_id'] as int?,
      isRemotely: json['is_remotely'] as bool? ?? false,
      isElective: json['is_elective'] as bool? ?? false,
      groups:
          (json['groups'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              [],
      teachers:
          (json['teachers'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              [],
      placeId: json['place_id'] as int?,
      weekday: json['weekday'] as int?,
      parity: json['parity'] as int?,
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
    );

Map<String, dynamic> _$MainLessonUpdateToJson(MainLessonUpdate instance) =>
    <String, dynamic>{
      'discipline_id': instance.disciplineId,
      'number': instance.number,
      'type_id': instance.typeId,
      'is_remotely': instance.isRemotely,
      'is_elective': instance.isElective,
      'groups': instance.groups,
      'teachers': instance.teachers,
      'place_id': instance.placeId,
      'weekday': instance.weekday,
      'parity': instance.parity,
      'start_date': _dateToJson(instance.startDate),
      'end_date': _dateToJson(instance.endDate),
    };

MainLessonUpdateWithParams _$MainLessonUpdateWithParamsFromJson(
        Map<String, dynamic> json) =>
    MainLessonUpdateWithParams(
      ignoreCollisions: json['ignore_collisions'] as bool? ?? false,
      notify: json['notify'] as bool? ?? false,
      lesson: MainLessonUpdate.fromJson(json['lesson'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MainLessonUpdateWithParamsToJson(
        MainLessonUpdateWithParams instance) =>
    <String, dynamic>{
      'ignore_collisions': instance.ignoreCollisions,
      'notify': instance.notify,
      'lesson': instance.lesson.toJson(),
    };

MainLessonWithRelated _$MainLessonWithRelatedFromJson(
        Map<String, dynamic> json) =>
    MainLessonWithRelated(
      number: json['number'] as int,
      isRemotely: json['is_remotely'] as bool,
      isElective: json['is_elective'] as bool,
      typeId: json['type_id'] as int,
      disciplineId: json['discipline_id'] as int?,
      placeId: json['place_id'] as int?,
      id: json['id'] as int,
      weekday: json['weekday'] as int,
      parity: json['parity'] as int?,
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
      groups:
          (json['groups'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              [],
      teachers:
          (json['teachers'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              [],
      relatedLessons: (json['related_lessons'] as List<dynamic>?)
              ?.map((e) => LessonRelated.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$MainLessonWithRelatedToJson(
        MainLessonWithRelated instance) =>
    <String, dynamic>{
      'number': instance.number,
      'is_remotely': instance.isRemotely,
      'is_elective': instance.isElective,
      'type_id': instance.typeId,
      'discipline_id': instance.disciplineId,
      'place_id': instance.placeId,
      'id': instance.id,
      'weekday': instance.weekday,
      'parity': instance.parity,
      'start_date': _dateToJson(instance.startDate),
      'end_date': _dateToJson(instance.endDate),
      'groups': instance.groups,
      'teachers': instance.teachers,
      'related_lessons':
          instance.relatedLessons?.map((e) => e.toJson()).toList(),
    };

PageLog _$PageLogFromJson(Map<String, dynamic> json) => PageLog(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => Log.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      total: json['total'] as int,
      page: json['page'] as int,
      size: json['size'] as int,
    );

Map<String, dynamic> _$PageLogToJson(PageLog instance) => <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'total': instance.total,
      'page': instance.page,
      'size': instance.size,
    };

PageStudentShortInDb _$PageStudentShortInDbFromJson(
        Map<String, dynamic> json) =>
    PageStudentShortInDb(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => StudentShortInDb.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      total: json['total'] as int,
      page: json['page'] as int,
      size: json['size'] as int,
    );

Map<String, dynamic> _$PageStudentShortInDbToJson(
        PageStudentShortInDb instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'total': instance.total,
      'page': instance.page,
      'size': instance.size,
    };

PageUserFullInDb _$PageUserFullInDbFromJson(Map<String, dynamic> json) =>
    PageUserFullInDb(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => UserFullInDb.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      total: json['total'] as int,
      page: json['page'] as int,
      size: json['size'] as int,
    );

Map<String, dynamic> _$PageUserFullInDbToJson(PageUserFullInDb instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'total': instance.total,
      'page': instance.page,
      'size': instance.size,
    };

PersonCreate _$PersonCreateFromJson(Map<String, dynamic> json) => PersonCreate(
      middleName: json['middle_name'] as String?,
      gender: json['gender'] as bool?,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
    );

Map<String, dynamic> _$PersonCreateToJson(PersonCreate instance) =>
    <String, dynamic>{
      'middle_name': instance.middleName,
      'gender': instance.gender,
      'birthday': _dateToJson(instance.birthday),
      'first_name': instance.firstName,
      'last_name': instance.lastName,
    };

PersonFullName _$PersonFullNameFromJson(Map<String, dynamic> json) =>
    PersonFullName(
      fullName: json['full_name'] as String,
    );

Map<String, dynamic> _$PersonFullNameToJson(PersonFullName instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
    };

PersonInDb _$PersonInDbFromJson(Map<String, dynamic> json) => PersonInDb(
      fullName: json['full_name'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      middleName: json['middle_name'] as String?,
      type: personTypeFromJson(json['type']),
      gender: json['gender'] as bool?,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      id: json['id'] as int,
    );

Map<String, dynamic> _$PersonInDbToJson(PersonInDb instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'middle_name': instance.middleName,
      'type': personTypeToJson(instance.type),
      'gender': instance.gender,
      'birthday': _dateToJson(instance.birthday),
      'id': instance.id,
    };

PersonShortInDb _$PersonShortInDbFromJson(Map<String, dynamic> json) =>
    PersonShortInDb(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      middleName: json['middle_name'] as String?,
      id: json['id'] as int,
    );

Map<String, dynamic> _$PersonShortInDbToJson(PersonShortInDb instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'middle_name': instance.middleName,
      'id': instance.id,
    };

PersonUpdate _$PersonUpdateFromJson(Map<String, dynamic> json) => PersonUpdate(
      middleName: json['middle_name'] as String?,
      gender: json['gender'] as bool?,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
    );

Map<String, dynamic> _$PersonUpdateToJson(PersonUpdate instance) =>
    <String, dynamic>{
      'middle_name': instance.middleName,
      'gender': instance.gender,
      'birthday': _dateToJson(instance.birthday),
      'first_name': instance.firstName,
      'last_name': instance.lastName,
    };

PlaceCreate _$PlaceCreateFromJson(Map<String, dynamic> json) => PlaceCreate(
      address: json['address'] as String,
      name: json['name'] as String,
      size: json['size'] as int?,
      facultyId: json['faculty_id'] as int?,
      equipments: (json['equipments'] as List<dynamic>?)
              ?.map((e) =>
                  PlaceEquipmentShortInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PlaceCreateToJson(PlaceCreate instance) =>
    <String, dynamic>{
      'address': instance.address,
      'name': instance.name,
      'size': instance.size,
      'faculty_id': instance.facultyId,
      'equipments': instance.equipments?.map((e) => e.toJson()).toList(),
    };

PlaceEquipmentInfo _$PlaceEquipmentInfoFromJson(Map<String, dynamic> json) =>
    PlaceEquipmentInfo(
      equipment:
          EquipmentInDb.fromJson(json['equipment'] as Map<String, dynamic>),
      amount: json['amount'] as int?,
    );

Map<String, dynamic> _$PlaceEquipmentInfoToJson(PlaceEquipmentInfo instance) =>
    <String, dynamic>{
      'equipment': instance.equipment.toJson(),
      'amount': instance.amount,
    };

PlaceEquipmentShortInfo _$PlaceEquipmentShortInfoFromJson(
        Map<String, dynamic> json) =>
    PlaceEquipmentShortInfo(
      equipmentId: json['equipment_id'] as int,
      amount: json['amount'] as int?,
    );

Map<String, dynamic> _$PlaceEquipmentShortInfoToJson(
        PlaceEquipmentShortInfo instance) =>
    <String, dynamic>{
      'equipment_id': instance.equipmentId,
      'amount': instance.amount,
    };

PlaceExport _$PlaceExportFromJson(Map<String, dynamic> json) => PlaceExport(
      facultyId: json['faculty_id'] as int?,
    );

Map<String, dynamic> _$PlaceExportToJson(PlaceExport instance) =>
    <String, dynamic>{
      'faculty_id': instance.facultyId,
    };

PlaceInDb _$PlaceInDbFromJson(Map<String, dynamic> json) => PlaceInDb(
      address: json['address'] as String,
      name: json['name'] as String,
      facultyId: json['faculty_id'] as int?,
      size: json['size'] as int?,
      placeEquipments: (json['place_equipments'] as List<dynamic>?)
              ?.map(
                  (e) => PlaceEquipmentInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      id: json['id'] as int,
    );

Map<String, dynamic> _$PlaceInDbToJson(PlaceInDb instance) => <String, dynamic>{
      'address': instance.address,
      'name': instance.name,
      'faculty_id': instance.facultyId,
      'size': instance.size,
      'place_equipments':
          instance.placeEquipments?.map((e) => e.toJson()).toList(),
      'id': instance.id,
    };

PlaceNameInDb _$PlaceNameInDbFromJson(Map<String, dynamic> json) =>
    PlaceNameInDb(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$PlaceNameInDbToJson(PlaceNameInDb instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

PlaceShortInDb _$PlaceShortInDbFromJson(Map<String, dynamic> json) =>
    PlaceShortInDb(
      address: json['address'] as String,
      name: json['name'] as String,
      facultyId: json['faculty_id'] as int?,
      size: json['size'] as int?,
      id: json['id'] as int,
      equipments: (json['equipments'] as List<dynamic>?)
              ?.map((e) =>
                  PlaceEquipmentShortInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PlaceShortInDbToJson(PlaceShortInDb instance) =>
    <String, dynamic>{
      'address': instance.address,
      'name': instance.name,
      'faculty_id': instance.facultyId,
      'size': instance.size,
      'id': instance.id,
      'equipments': instance.equipments?.map((e) => e.toJson()).toList(),
    };

PlaceUpdate _$PlaceUpdateFromJson(Map<String, dynamic> json) => PlaceUpdate(
      address: json['address'] as String,
      name: json['name'] as String,
      size: json['size'] as int?,
      facultyId: json['faculty_id'] as int?,
      equipments: (json['equipments'] as List<dynamic>?)
              ?.map((e) =>
                  PlaceEquipmentShortInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PlaceUpdateToJson(PlaceUpdate instance) =>
    <String, dynamic>{
      'address': instance.address,
      'name': instance.name,
      'size': instance.size,
      'faculty_id': instance.facultyId,
      'equipments': instance.equipments?.map((e) => e.toJson()).toList(),
    };

ProductionCalendarDayCreate _$ProductionCalendarDayCreateFromJson(
        Map<String, dynamic> json) =>
    ProductionCalendarDayCreate(
      date: json['date'] as String,
      isHoliday: json['is_holiday'] as bool,
    );

Map<String, dynamic> _$ProductionCalendarDayCreateToJson(
        ProductionCalendarDayCreate instance) =>
    <String, dynamic>{
      'date': instance.date,
      'is_holiday': instance.isHoliday,
    };

ProductionCalendarDayInDb _$ProductionCalendarDayInDbFromJson(
        Map<String, dynamic> json) =>
    ProductionCalendarDayInDb(
      date: DateTime.parse(json['date'] as String),
      isHoliday: json['is_holiday'] as bool,
      id: json['id'] as int,
    );

Map<String, dynamic> _$ProductionCalendarDayInDbToJson(
        ProductionCalendarDayInDb instance) =>
    <String, dynamic>{
      'date': _dateToJson(instance.date),
      'is_holiday': instance.isHoliday,
      'id': instance.id,
    };

ProductionCalendarDayUpdate _$ProductionCalendarDayUpdateFromJson(
        Map<String, dynamic> json) =>
    ProductionCalendarDayUpdate(
      isHoliday: json['is_holiday'] as bool,
    );

Map<String, dynamic> _$ProductionCalendarDayUpdateToJson(
        ProductionCalendarDayUpdate instance) =>
    <String, dynamic>{
      'is_holiday': instance.isHoliday,
    };

ProfileCreate _$ProfileCreateFromJson(Map<String, dynamic> json) =>
    ProfileCreate(
      name: json['name'] as String,
      shortName: json['short_name'] as String?,
      directionId: json['direction_id'] as int,
    );

Map<String, dynamic> _$ProfileCreateToJson(ProfileCreate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'short_name': instance.shortName,
      'direction_id': instance.directionId,
    };

ProfileInDb _$ProfileInDbFromJson(Map<String, dynamic> json) => ProfileInDb(
      name: json['name'] as String,
      shortName: json['short_name'] as String?,
      directionId: json['direction_id'] as int,
      id: json['id'] as int,
    );

Map<String, dynamic> _$ProfileInDbToJson(ProfileInDb instance) =>
    <String, dynamic>{
      'name': instance.name,
      'short_name': instance.shortName,
      'direction_id': instance.directionId,
      'id': instance.id,
    };

ProfileUpdate _$ProfileUpdateFromJson(Map<String, dynamic> json) =>
    ProfileUpdate(
      name: json['name'] as String,
      shortName: json['short_name'] as String?,
      directionId: json['direction_id'] as int,
    );

Map<String, dynamic> _$ProfileUpdateToJson(ProfileUpdate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'short_name': instance.shortName,
      'direction_id': instance.directionId,
    };

RoleCreate _$RoleCreateFromJson(Map<String, dynamic> json) => RoleCreate(
      name: json['name'] as String,
      permissionNames:
          permissionsListFromJson(json['permission_names'] as List?),
    );

Map<String, dynamic> _$RoleCreateToJson(RoleCreate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'permission_names': permissionsListToJson(instance.permissionNames),
    };

RoleInDb _$RoleInDbFromJson(Map<String, dynamic> json) => RoleInDb(
      name: json['name'] as String,
      id: json['id'] as int,
    );

Map<String, dynamic> _$RoleInDbToJson(RoleInDb instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };

RolePermissionsInDb _$RolePermissionsInDbFromJson(Map<String, dynamic> json) =>
    RolePermissionsInDb(
      name: json['name'] as String,
      id: json['id'] as int,
      permissionsNames:
          permissionsListFromJson(json['permissions_names'] as List?),
    );

Map<String, dynamic> _$RolePermissionsInDbToJson(
        RolePermissionsInDb instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'permissions_names': permissionsListToJson(instance.permissionsNames),
    };

RoleUpdate _$RoleUpdateFromJson(Map<String, dynamic> json) => RoleUpdate(
      name: json['name'] as String,
      permissionNames:
          permissionsListFromJson(json['permission_names'] as List?),
    );

Map<String, dynamic> _$RoleUpdateToJson(RoleUpdate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'permission_names': permissionsListToJson(instance.permissionNames),
    };

SemesterCreate _$SemesterCreateFromJson(Map<String, dynamic> json) =>
    SemesterCreate(
      type: semesterTypeFromJson(json['type']),
      studyYear: json['study_year'] as String,
    );

Map<String, dynamic> _$SemesterCreateToJson(SemesterCreate instance) =>
    <String, dynamic>{
      'type': semesterTypeToJson(instance.type),
      'study_year': instance.studyYear,
    };

SemesterFacultyCreate _$SemesterFacultyCreateFromJson(
        Map<String, dynamic> json) =>
    SemesterFacultyCreate(
      semesterId: json['semester_id'] as int,
      facultyId: json['faculty_id'] as int,
      $part: json['part'] as int?,
      week: json['week'] == null
          ? null
          : SemesterFacultyWeekCreate.fromJson(
              json['week'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SemesterFacultyCreateToJson(
        SemesterFacultyCreate instance) =>
    <String, dynamic>{
      'semester_id': instance.semesterId,
      'faculty_id': instance.facultyId,
      'part': instance.$part,
      'week': instance.week?.toJson(),
    };

SemesterFacultyInDb _$SemesterFacultyInDbFromJson(Map<String, dynamic> json) =>
    SemesterFacultyInDb(
      id: json['id'] as int,
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
      $part: json['part'] as int?,
      semesterId: json['semester_id'] as int,
      facultyId: json['faculty_id'] as int,
      isCurrent: json['is_current'] as bool,
      mode: viewModeFromJson(json['mode']),
      week: json['week'] == null
          ? null
          : SemesterFacultyWeek.fromJson(json['week'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SemesterFacultyInDbToJson(
        SemesterFacultyInDb instance) =>
    <String, dynamic>{
      'id': instance.id,
      'start_date': _dateToJson(instance.startDate),
      'end_date': _dateToJson(instance.endDate),
      'part': instance.$part,
      'semester_id': instance.semesterId,
      'faculty_id': instance.facultyId,
      'is_current': instance.isCurrent,
      'mode': viewModeToJson(instance.mode),
      'week': instance.week?.toJson(),
    };

SemesterFacultyUpdate _$SemesterFacultyUpdateFromJson(
        Map<String, dynamic> json) =>
    SemesterFacultyUpdate(
      type: weekTypeFromJson(json['type']),
      revert: json['revert'] as bool?,
      changeWeekOnStartDay: json['change_week_on_start_day'] as bool?,
      mode: viewModeFromJson(json['mode']),
    );

Map<String, dynamic> _$SemesterFacultyUpdateToJson(
        SemesterFacultyUpdate instance) =>
    <String, dynamic>{
      'type': weekTypeToJson(instance.type),
      'revert': instance.revert,
      'change_week_on_start_day': instance.changeWeekOnStartDay,
      'mode': viewModeToJson(instance.mode),
    };

SemesterFacultyWeek _$SemesterFacultyWeekFromJson(Map<String, dynamic> json) =>
    SemesterFacultyWeek(
      type: weekTypeFromJson(json['type']),
      revert: json['revert'] as bool?,
      changeWeekOnStartDay: json['change_week_on_start_day'] as bool?,
    );

Map<String, dynamic> _$SemesterFacultyWeekToJson(
        SemesterFacultyWeek instance) =>
    <String, dynamic>{
      'type': weekTypeToJson(instance.type),
      'revert': instance.revert,
      'change_week_on_start_day': instance.changeWeekOnStartDay,
    };

SemesterFacultyWeekCreate _$SemesterFacultyWeekCreateFromJson(
        Map<String, dynamic> json) =>
    SemesterFacultyWeekCreate(
      type: weekTypeFromJson(json['type']),
      revert: json['revert'] as bool?,
      changeWeekOnStartDay: json['change_week_on_start_day'] as bool?,
    );

Map<String, dynamic> _$SemesterFacultyWeekCreateToJson(
        SemesterFacultyWeekCreate instance) =>
    <String, dynamic>{
      'type': weekTypeToJson(instance.type),
      'revert': instance.revert,
      'change_week_on_start_day': instance.changeWeekOnStartDay,
    };

SemesterInDb _$SemesterInDbFromJson(Map<String, dynamic> json) => SemesterInDb(
      id: json['id'] as int,
      type: semesterTypeFromJson(json['type']),
      studyYear: json['study_year'] as String,
      isCurrentLessons: json['is_current_lessons'] as bool,
      isCurrentSession: json['is_current_session'] as bool,
    );

Map<String, dynamic> _$SemesterInDbToJson(SemesterInDb instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': semesterTypeToJson(instance.type),
      'study_year': instance.studyYear,
      'is_current_lessons': instance.isCurrentLessons,
      'is_current_session': instance.isCurrentSession,
    };

SemesterLessonsDirectionCreate _$SemesterLessonsDirectionCreateFromJson(
        Map<String, dynamic> json) =>
    SemesterLessonsDirectionCreate(
      directionId: json['direction_id'] as int,
      course: json['course'] as int,
      groupId: json['group_id'] as int?,
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
      semesterFacultyId: json['semester_faculty_id'] as int,
    );

Map<String, dynamic> _$SemesterLessonsDirectionCreateToJson(
        SemesterLessonsDirectionCreate instance) =>
    <String, dynamic>{
      'direction_id': instance.directionId,
      'course': instance.course,
      'group_id': instance.groupId,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'semester_faculty_id': instance.semesterFacultyId,
    };

SemesterLessonsDirectionInDb _$SemesterLessonsDirectionInDbFromJson(
        Map<String, dynamic> json) =>
    SemesterLessonsDirectionInDb(
      id: json['id'] as int,
      semesterFacultyId: json['semester_faculty_id'] as int,
      directionId: json['direction_id'] as int,
      course: json['course'] as int,
      groupId: json['group_id'] as int?,
      startDate: DateTime.parse(json['start_date'] as String),
      endDate: DateTime.parse(json['end_date'] as String),
    );

Map<String, dynamic> _$SemesterLessonsDirectionInDbToJson(
        SemesterLessonsDirectionInDb instance) =>
    <String, dynamic>{
      'id': instance.id,
      'semester_faculty_id': instance.semesterFacultyId,
      'direction_id': instance.directionId,
      'course': instance.course,
      'group_id': instance.groupId,
      'start_date': _dateToJson(instance.startDate),
      'end_date': _dateToJson(instance.endDate),
    };

SemesterLessonsDirectionUpdate _$SemesterLessonsDirectionUpdateFromJson(
        Map<String, dynamic> json) =>
    SemesterLessonsDirectionUpdate(
      directionId: json['direction_id'] as int,
      course: json['course'] as int,
      groupId: json['group_id'] as int?,
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
    );

Map<String, dynamic> _$SemesterLessonsDirectionUpdateToJson(
        SemesterLessonsDirectionUpdate instance) =>
    <String, dynamic>{
      'direction_id': instance.directionId,
      'course': instance.course,
      'group_id': instance.groupId,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
    };

SemesterSessionDirectionCreate _$SemesterSessionDirectionCreateFromJson(
        Map<String, dynamic> json) =>
    SemesterSessionDirectionCreate(
      semesterId: json['semester_id'] as int,
      directionId: json['direction_id'] as int,
      groupId: json['group_id'] as int?,
      course: json['course'] as int,
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
    );

Map<String, dynamic> _$SemesterSessionDirectionCreateToJson(
        SemesterSessionDirectionCreate instance) =>
    <String, dynamic>{
      'semester_id': instance.semesterId,
      'direction_id': instance.directionId,
      'group_id': instance.groupId,
      'course': instance.course,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
    };

SemesterSessionDirectionInDb _$SemesterSessionDirectionInDbFromJson(
        Map<String, dynamic> json) =>
    SemesterSessionDirectionInDb(
      id: json['id'] as int,
      semesterId: json['semester_id'] as int,
      directionId: json['direction_id'] as int,
      groupId: json['group_id'] as int?,
      course: json['course'] as int,
      startDate: DateTime.parse(json['start_date'] as String),
      endDate: DateTime.parse(json['end_date'] as String),
    );

Map<String, dynamic> _$SemesterSessionDirectionInDbToJson(
        SemesterSessionDirectionInDb instance) =>
    <String, dynamic>{
      'id': instance.id,
      'semester_id': instance.semesterId,
      'direction_id': instance.directionId,
      'group_id': instance.groupId,
      'course': instance.course,
      'start_date': _dateToJson(instance.startDate),
      'end_date': _dateToJson(instance.endDate),
    };

SemesterSessionDirectionUpdate _$SemesterSessionDirectionUpdateFromJson(
        Map<String, dynamic> json) =>
    SemesterSessionDirectionUpdate(
      semesterId: json['semester_id'] as int,
      directionId: json['direction_id'] as int,
      groupId: json['group_id'] as int?,
      course: json['course'] as int,
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
    );

Map<String, dynamic> _$SemesterSessionDirectionUpdateToJson(
        SemesterSessionDirectionUpdate instance) =>
    <String, dynamic>{
      'semester_id': instance.semesterId,
      'direction_id': instance.directionId,
      'group_id': instance.groupId,
      'course': instance.course,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
    };

SemesterUpdate _$SemesterUpdateFromJson(Map<String, dynamic> json) =>
    SemesterUpdate(
      type: semesterTypeFromJson(json['type']),
      studyYear: json['study_year'] as String,
    );

Map<String, dynamic> _$SemesterUpdateToJson(SemesterUpdate instance) =>
    <String, dynamic>{
      'type': semesterTypeToJson(instance.type),
      'study_year': instance.studyYear,
    };

SessionEventCollision _$SessionEventCollisionFromJson(
        Map<String, dynamic> json) =>
    SessionEventCollision(
      field: json['field'] as String,
      data: SessionEventCollisionInfo.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SessionEventCollisionToJson(
        SessionEventCollision instance) =>
    <String, dynamic>{
      'field': instance.field,
      'data': instance.data.toJson(),
    };

SessionEventCollisionInfo _$SessionEventCollisionInfoFromJson(
        Map<String, dynamic> json) =>
    SessionEventCollisionInfo(
      eventTypeId: sessionEventTypeFromJson(json['event_type_id']),
      date: DateTime.parse(json['date'] as String),
      time: json['time'],
      isRemotely: json['is_remotely'] as bool,
      discipline:
          DisciplineInDb.fromJson(json['discipline'] as Map<String, dynamic>),
      place: json['place'] == null
          ? null
          : PlaceInDb.fromJson(json['place'] as Map<String, dynamic>),
      semesterId: json['semester_id'] as int,
      createdUserId: json['created_user_id'] as int,
      id: json['id'] as int,
      groupNames: (json['group_names'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      teacherNames: (json['teacher_names'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$SessionEventCollisionInfoToJson(
        SessionEventCollisionInfo instance) =>
    <String, dynamic>{
      'event_type_id': sessionEventTypeToJson(instance.eventTypeId),
      'date': _dateToJson(instance.date),
      'time': instance.time,
      'is_remotely': instance.isRemotely,
      'discipline': instance.discipline.toJson(),
      'place': instance.place?.toJson(),
      'semester_id': instance.semesterId,
      'created_user_id': instance.createdUserId,
      'id': instance.id,
      'group_names': instance.groupNames,
      'teacher_names': instance.teacherNames,
    };

SessionEventCreate _$SessionEventCreateFromJson(Map<String, dynamic> json) =>
    SessionEventCreate(
      eventTypeId: sessionEventTypeFromJson(json['event_type_id']),
      date: json['date'] as String,
      time: json['time'] as String,
      isRemotely: json['is_remotely'] as bool? ?? false,
      disciplineId: json['discipline_id'] as int,
      placeId: json['place_id'] as int?,
      groups:
          (json['groups'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              [],
      teachers:
          (json['teachers'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              [],
      semesterId: json['semester_id'] as int,
    );

Map<String, dynamic> _$SessionEventCreateToJson(SessionEventCreate instance) =>
    <String, dynamic>{
      'event_type_id': sessionEventTypeToJson(instance.eventTypeId),
      'date': instance.date,
      'time': instance.time,
      'is_remotely': instance.isRemotely,
      'discipline_id': instance.disciplineId,
      'place_id': instance.placeId,
      'groups': instance.groups,
      'teachers': instance.teachers,
      'semester_id': instance.semesterId,
    };

SessionEventCreateWithParams _$SessionEventCreateWithParamsFromJson(
        Map<String, dynamic> json) =>
    SessionEventCreateWithParams(
      ignoreCollisions: json['ignore_collisions'] as bool? ?? false,
      notify: json['notify'] as bool? ?? false,
      sessionEvent: SessionEventCreate.fromJson(
          json['session_event'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SessionEventCreateWithParamsToJson(
        SessionEventCreateWithParams instance) =>
    <String, dynamic>{
      'ignore_collisions': instance.ignoreCollisions,
      'notify': instance.notify,
      'session_event': instance.sessionEvent.toJson(),
    };

SessionEventData _$SessionEventDataFromJson(Map<String, dynamic> json) =>
    SessionEventData(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => SessionEventInDb.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
      mode: viewModeFromJson(json['mode']),
    );

Map<String, dynamic> _$SessionEventDataToJson(SessionEventData instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'start_date': _dateToJson(instance.startDate),
      'end_date': _dateToJson(instance.endDate),
      'mode': viewModeToJson(instance.mode),
    };

SessionEventExport _$SessionEventExportFromJson(Map<String, dynamic> json) =>
    SessionEventExport(
      facultyId: json['faculty_id'] as int,
      semesterId: json['semester_id'] as int?,
      directions: (json['directions'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      profiles:
          (json['profiles'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              [],
      courses:
          (json['courses'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              [],
      groups:
          (json['groups'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              [],
      extra: json['extra'] == null
          ? null
          : ExportExtraInfo.fromJson(json['extra'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SessionEventExportToJson(SessionEventExport instance) =>
    <String, dynamic>{
      'faculty_id': instance.facultyId,
      'semester_id': instance.semesterId,
      'directions': instance.directions,
      'profiles': instance.profiles,
      'courses': instance.courses,
      'groups': instance.groups,
      'extra': instance.extra?.toJson(),
    };

SessionEventInDb _$SessionEventInDbFromJson(Map<String, dynamic> json) =>
    SessionEventInDb(
      id: json['id'] as int,
      eventTypeId: sessionEventTypeFromJson(json['event_type_id']),
      date: json['date'],
      time: json['time'],
      isRemotely: json['is_remotely'] as bool,
      disciplineId: json['discipline_id'] as int,
      placeId: json['place_id'] as int?,
      groups:
          (json['groups'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              [],
      teachers:
          (json['teachers'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              [],
      semesterId: json['semester_id'] as int,
      createdUserId: json['created_user_id'] as int,
    );

Map<String, dynamic> _$SessionEventInDbToJson(SessionEventInDb instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event_type_id': sessionEventTypeToJson(instance.eventTypeId),
      'date': instance.date,
      'time': instance.time,
      'is_remotely': instance.isRemotely,
      'discipline_id': instance.disciplineId,
      'place_id': instance.placeId,
      'groups': instance.groups,
      'teachers': instance.teachers,
      'semester_id': instance.semesterId,
      'created_user_id': instance.createdUserId,
    };

SessionEventUpdate _$SessionEventUpdateFromJson(Map<String, dynamic> json) =>
    SessionEventUpdate(
      eventTypeId: sessionEventTypeFromJson(json['event_type_id']),
      date: json['date'] as String?,
      time: json['time'] as String?,
      isRemotely: json['is_remotely'] as bool?,
      disciplineId: json['discipline_id'] as int?,
      placeId: json['place_id'] as int?,
      groups:
          (json['groups'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              [],
      teachers:
          (json['teachers'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              [],
    );

Map<String, dynamic> _$SessionEventUpdateToJson(SessionEventUpdate instance) =>
    <String, dynamic>{
      'event_type_id': sessionEventTypeToJson(instance.eventTypeId),
      'date': instance.date,
      'time': instance.time,
      'is_remotely': instance.isRemotely,
      'discipline_id': instance.disciplineId,
      'place_id': instance.placeId,
      'groups': instance.groups,
      'teachers': instance.teachers,
    };

SessionEventUpdateWithParams _$SessionEventUpdateWithParamsFromJson(
        Map<String, dynamic> json) =>
    SessionEventUpdateWithParams(
      ignoreCollisions: json['ignore_collisions'] as bool? ?? false,
      notify: json['notify'] as bool? ?? false,
      sessionEvent: SessionEventUpdate.fromJson(
          json['session_event'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SessionEventUpdateWithParamsToJson(
        SessionEventUpdateWithParams instance) =>
    <String, dynamic>{
      'ignore_collisions': instance.ignoreCollisions,
      'notify': instance.notify,
      'session_event': instance.sessionEvent.toJson(),
    };

SessionSettingsUpdate _$SessionSettingsUpdateFromJson(
        Map<String, dynamic> json) =>
    SessionSettingsUpdate(
      sessionEventBeforeDays: json['session_event_before_days'] as int?,
      sessionEventBeforeDaysTime:
          json['session_event_before_days_time'] as String?,
      sessionEventTomorrowTime: json['session_event_tomorrow_time'] as String?,
    );

Map<String, dynamic> _$SessionSettingsUpdateToJson(
        SessionSettingsUpdate instance) =>
    <String, dynamic>{
      'session_event_before_days': instance.sessionEventBeforeDays,
      'session_event_before_days_time': instance.sessionEventBeforeDaysTime,
      'session_event_tomorrow_time': instance.sessionEventTomorrowTime,
    };

SessionViewInDb _$SessionViewInDbFromJson(Map<String, dynamic> json) =>
    SessionViewInDb(
      facultyId: json['faculty_id'] as int,
      semesterId: json['semester_id'] as int,
      mode: viewModeFromJson(json['mode']),
    );

Map<String, dynamic> _$SessionViewInDbToJson(SessionViewInDb instance) =>
    <String, dynamic>{
      'faculty_id': instance.facultyId,
      'semester_id': instance.semesterId,
      'mode': viewModeToJson(instance.mode),
    };

SessionViewUpdate _$SessionViewUpdateFromJson(Map<String, dynamic> json) =>
    SessionViewUpdate(
      facultyId: json['faculty_id'] as int,
      semesterId: json['semester_id'] as int,
      mode: viewModeFromJson(json['mode']),
      isNotify: json['is_notify'] as bool? ?? false,
    );

Map<String, dynamic> _$SessionViewUpdateToJson(SessionViewUpdate instance) =>
    <String, dynamic>{
      'faculty_id': instance.facultyId,
      'semester_id': instance.semesterId,
      'mode': viewModeToJson(instance.mode),
      'is_notify': instance.isNotify,
    };

Statistic _$StatisticFromJson(Map<String, dynamic> json) => Statistic(
      lastActivityBot: json['last_activity_bot'] == null
          ? null
          : DateTime.parse(json['last_activity_bot'] as String),
      lastActivityWeb: json['last_activity_web'] == null
          ? null
          : DateTime.parse(json['last_activity_web'] as String),
    );

Map<String, dynamic> _$StatisticToJson(Statistic instance) => <String, dynamic>{
      'last_activity_bot': instance.lastActivityBot?.toIso8601String(),
      'last_activity_web': instance.lastActivityWeb?.toIso8601String(),
    };

Status _$StatusFromJson(Map<String, dynamic> json) => Status(
      status: json['status'] as String,
    );

Map<String, dynamic> _$StatusToJson(Status instance) => <String, dynamic>{
      'status': instance.status,
    };

StudentCreate _$StudentCreateFromJson(Map<String, dynamic> json) =>
    StudentCreate(
      groupId: json['group_id'] as int,
      isMain: json['is_main'] as bool? ?? false,
      isDeputyMain: json['is_deputy_main'] as bool? ?? false,
      user: json['user'] == null
          ? null
          : UserBaseCreate.fromJson(json['user'] as Map<String, dynamic>),
      person: PersonCreate.fromJson(json['person'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StudentCreateToJson(StudentCreate instance) =>
    <String, dynamic>{
      'group_id': instance.groupId,
      'is_main': instance.isMain,
      'is_deputy_main': instance.isDeputyMain,
      'user': instance.user?.toJson(),
      'person': instance.person.toJson(),
    };

StudentInDb _$StudentInDbFromJson(Map<String, dynamic> json) => StudentInDb(
      fullName: json['full_name'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      middleName: json['middle_name'] as String?,
      type: personTypeFromJson(json['type']),
      gender: json['gender'] as bool?,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      id: json['id'] as int,
      group: GroupFullInDb.fromJson(json['group'] as Map<String, dynamic>),
      isMain: json['is_main'] as bool,
      isDeputyMain: json['is_deputy_main'] as bool,
    );

Map<String, dynamic> _$StudentInDbToJson(StudentInDb instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'middle_name': instance.middleName,
      'type': personTypeToJson(instance.type),
      'gender': instance.gender,
      'birthday': _dateToJson(instance.birthday),
      'id': instance.id,
      'group': instance.group.toJson(),
      'is_main': instance.isMain,
      'is_deputy_main': instance.isDeputyMain,
    };

StudentShortInDb _$StudentShortInDbFromJson(Map<String, dynamic> json) =>
    StudentShortInDb(
      fullName: json['full_name'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      middleName: json['middle_name'] as String?,
      type: personTypeFromJson(json['type']),
      gender: json['gender'] as bool?,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      groupId: json['group_id'] as int,
      isMain: json['is_main'] as bool? ?? false,
      isDeputyMain: json['is_deputy_main'] as bool? ?? false,
      id: json['id'] as int,
    );

Map<String, dynamic> _$StudentShortInDbToJson(StudentShortInDb instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'middle_name': instance.middleName,
      'type': personTypeToJson(instance.type),
      'gender': instance.gender,
      'birthday': _dateToJson(instance.birthday),
      'group_id': instance.groupId,
      'is_main': instance.isMain,
      'is_deputy_main': instance.isDeputyMain,
      'id': instance.id,
    };

StudentUpdate _$StudentUpdateFromJson(Map<String, dynamic> json) =>
    StudentUpdate(
      groupId: json['group_id'] as int,
      isMain: json['is_main'] as bool? ?? false,
      isDeputyMain: json['is_deputy_main'] as bool? ?? false,
      person: PersonUpdate.fromJson(json['person'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StudentUpdateToJson(StudentUpdate instance) =>
    <String, dynamic>{
      'group_id': instance.groupId,
      'is_main': instance.isMain,
      'is_deputy_main': instance.isDeputyMain,
      'person': instance.person.toJson(),
    };

TeacherAcademicDegreeInDb _$TeacherAcademicDegreeInDbFromJson(
        Map<String, dynamic> json) =>
    TeacherAcademicDegreeInDb(
      name: json['name'] as String,
      shortName: json['short_name'] as String,
      id: json['id'] as int,
    );

Map<String, dynamic> _$TeacherAcademicDegreeInDbToJson(
        TeacherAcademicDegreeInDb instance) =>
    <String, dynamic>{
      'name': instance.name,
      'short_name': instance.shortName,
      'id': instance.id,
    };

TeacherCreate _$TeacherCreateFromJson(Map<String, dynamic> json) =>
    TeacherCreate(
      academicTitle: teacherAcademicTitleFromJson(json['academic_title']),
      academicDegreeId: json['academic_degree_id'] as int?,
      user: json['user'] == null
          ? null
          : UserBaseCreate.fromJson(json['user'] as Map<String, dynamic>),
      person: PersonCreate.fromJson(json['person'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TeacherCreateToJson(TeacherCreate instance) =>
    <String, dynamic>{
      'academic_title': teacherAcademicTitleToJson(instance.academicTitle),
      'academic_degree_id': instance.academicDegreeId,
      'user': instance.user?.toJson(),
      'person': instance.person.toJson(),
    };

TeacherFullInDb _$TeacherFullInDbFromJson(Map<String, dynamic> json) =>
    TeacherFullInDb(
      fullName: json['full_name'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      middleName: json['middle_name'] as String?,
      type: personTypeFromJson(json['type']),
      gender: json['gender'] as bool?,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      academicTitle: teacherAcademicTitleFromJson(json['academic_title']),
      academicDegree: json['academic_degree'] == null
          ? null
          : TeacherAcademicDegreeInDb.fromJson(
              json['academic_degree'] as Map<String, dynamic>),
      id: json['id'] as int,
      faculties: (json['faculties'] as List<dynamic>?)
              ?.map((e) => FacultyInDb.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TeacherFullInDbToJson(TeacherFullInDb instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'middle_name': instance.middleName,
      'type': personTypeToJson(instance.type),
      'gender': instance.gender,
      'birthday': _dateToJson(instance.birthday),
      'academic_title': teacherAcademicTitleToJson(instance.academicTitle),
      'academic_degree': instance.academicDegree?.toJson(),
      'id': instance.id,
      'faculties': instance.faculties?.map((e) => e.toJson()).toList(),
    };

TeacherInDb _$TeacherInDbFromJson(Map<String, dynamic> json) => TeacherInDb(
      academicTitle: teacherAcademicTitleFromJson(json['academic_title']),
      academicDegreeId: json['academic_degree_id'] as int?,
      fullName: json['full_name'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      middleName: json['middle_name'] as String?,
      type: personTypeFromJson(json['type']),
      gender: json['gender'] as bool?,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      id: json['id'] as int,
      facultiesIds: (json['faculties_ids'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
    );

Map<String, dynamic> _$TeacherInDbToJson(TeacherInDb instance) =>
    <String, dynamic>{
      'academic_title': teacherAcademicTitleToJson(instance.academicTitle),
      'academic_degree_id': instance.academicDegreeId,
      'full_name': instance.fullName,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'middle_name': instance.middleName,
      'type': personTypeToJson(instance.type),
      'gender': instance.gender,
      'birthday': _dateToJson(instance.birthday),
      'id': instance.id,
      'faculties_ids': instance.facultiesIds,
    };

TeacherShortInDb _$TeacherShortInDbFromJson(Map<String, dynamic> json) =>
    TeacherShortInDb(
      id: json['id'] as int,
      fullName: json['full_name'] as String,
    );

Map<String, dynamic> _$TeacherShortInDbToJson(TeacherShortInDb instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
    };

TeacherUpdate _$TeacherUpdateFromJson(Map<String, dynamic> json) =>
    TeacherUpdate(
      academicTitle: teacherAcademicTitleFromJson(json['academic_title']),
      academicDegreeId: json['academic_degree_id'] as int?,
      person: PersonUpdate.fromJson(json['person'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TeacherUpdateToJson(TeacherUpdate instance) =>
    <String, dynamic>{
      'academic_title': teacherAcademicTitleToJson(instance.academicTitle),
      'academic_degree_id': instance.academicDegreeId,
      'person': instance.person.toJson(),
    };

Telegram _$TelegramFromJson(Map<String, dynamic> json) => Telegram(
      timetableTodayLessons: json['timetable_today_lessons'] as String?,
      timetableTomorrowLessons: json['timetable_tomorrow_lessons'] as String?,
      timetableIsBeforeLesson: json['timetable_is_before_lesson'] as String?,
      sessionEventBeforeDays: json['session_event_before_days'] as int?,
      sessionEventBeforeDaysTime:
          json['session_event_before_days_time'] as String?,
      sessionEventTomorrowTime: json['session_event_tomorrow_time'] as String?,
      weatherSendTime: json['weather_send_time'] as String?,
      weatherSendDaily: json['weather_send_daily'] as bool?,
      weatherSendLessons: json['weather_send_lessons'] as bool?,
      weatherSendIsWeekend: json['weather_send_is_weekend'] as bool?,
      attendanceLectureTime: json['attendance_lecture_time'] as String?,
      attendancePracticeTime: json['attendance_practice_time'] as String?,
      setThemeTime: json['set_theme_time'] as String?,
    );

Map<String, dynamic> _$TelegramToJson(Telegram instance) => <String, dynamic>{
      'timetable_today_lessons': instance.timetableTodayLessons,
      'timetable_tomorrow_lessons': instance.timetableTomorrowLessons,
      'timetable_is_before_lesson': instance.timetableIsBeforeLesson,
      'session_event_before_days': instance.sessionEventBeforeDays,
      'session_event_before_days_time': instance.sessionEventBeforeDaysTime,
      'session_event_tomorrow_time': instance.sessionEventTomorrowTime,
      'weather_send_time': instance.weatherSendTime,
      'weather_send_daily': instance.weatherSendDaily,
      'weather_send_lessons': instance.weatherSendLessons,
      'weather_send_is_weekend': instance.weatherSendIsWeekend,
      'attendance_lecture_time': instance.attendanceLectureTime,
      'attendance_practice_time': instance.attendancePracticeTime,
      'set_theme_time': instance.setThemeTime,
    };

TelegramId _$TelegramIdFromJson(Map<String, dynamic> json) => TelegramId(
      telegramId: json['telegram_id'] as String,
    );

Map<String, dynamic> _$TelegramIdToJson(TelegramId instance) =>
    <String, dynamic>{
      'telegram_id': instance.telegramId,
    };

TimetableSettingsUpdate _$TimetableSettingsUpdateFromJson(
        Map<String, dynamic> json) =>
    TimetableSettingsUpdate(
      timetableTodayLessons: json['timetable_today_lessons'] as String?,
      timetableTomorrowLessons: json['timetable_tomorrow_lessons'] as String?,
      timetableIsBeforeLesson: json['timetable_is_before_lesson'] as String?,
    );

Map<String, dynamic> _$TimetableSettingsUpdateToJson(
        TimetableSettingsUpdate instance) =>
    <String, dynamic>{
      'timetable_today_lessons': instance.timetableTodayLessons,
      'timetable_tomorrow_lessons': instance.timetableTomorrowLessons,
      'timetable_is_before_lesson': instance.timetableIsBeforeLesson,
    };

TimetableViewInDb _$TimetableViewInDbFromJson(Map<String, dynamic> json) =>
    TimetableViewInDb(
      semesterFacultyId: json['semester_faculty_id'] as int,
      mode: viewModeFromJson(json['mode']),
    );

Map<String, dynamic> _$TimetableViewInDbToJson(TimetableViewInDb instance) =>
    <String, dynamic>{
      'semester_faculty_id': instance.semesterFacultyId,
      'mode': viewModeToJson(instance.mode),
    };

TimetableViewUpdate _$TimetableViewUpdateFromJson(Map<String, dynamic> json) =>
    TimetableViewUpdate(
      semesterFacultyId: json['semester_faculty_id'] as int,
      mode: viewModeFromJson(json['mode']),
      isNotify: json['is_notify'] as bool? ?? false,
    );

Map<String, dynamic> _$TimetableViewUpdateToJson(
        TimetableViewUpdate instance) =>
    <String, dynamic>{
      'semester_faculty_id': instance.semesterFacultyId,
      'mode': viewModeToJson(instance.mode),
      'is_notify': instance.isNotify,
    };

UserBaseCreate _$UserBaseCreateFromJson(Map<String, dynamic> json) =>
    UserBaseCreate(
      password: json['password'] as String,
      confirmPassword: json['confirm_password'] as String,
      login: json['login'] as String,
      roleId: json['role_id'] as int,
    );

Map<String, dynamic> _$UserBaseCreateToJson(UserBaseCreate instance) =>
    <String, dynamic>{
      'password': instance.password,
      'confirm_password': instance.confirmPassword,
      'login': instance.login,
      'role_id': instance.roleId,
    };

UserChangePassword _$UserChangePasswordFromJson(Map<String, dynamic> json) =>
    UserChangePassword(
      password: json['password'] as String,
      confirmPassword: json['confirm_password'] as String,
      currentPassword: json['current_password'] as String,
    );

Map<String, dynamic> _$UserChangePasswordToJson(UserChangePassword instance) =>
    <String, dynamic>{
      'password': instance.password,
      'confirm_password': instance.confirmPassword,
      'current_password': instance.currentPassword,
    };

UserCreate _$UserCreateFromJson(Map<String, dynamic> json) => UserCreate(
      password: json['password'] as String,
      confirmPassword: json['confirm_password'] as String,
      login: json['login'] as String,
      roleId: json['role_id'] as int,
      person: PersonCreate.fromJson(json['person'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserCreateToJson(UserCreate instance) =>
    <String, dynamic>{
      'password': instance.password,
      'confirm_password': instance.confirmPassword,
      'login': instance.login,
      'role_id': instance.roleId,
      'person': instance.person.toJson(),
    };

UserCreateFromPerson _$UserCreateFromPersonFromJson(
        Map<String, dynamic> json) =>
    UserCreateFromPerson(
      password: json['password'] as String,
      confirmPassword: json['confirm_password'] as String,
      login: json['login'] as String,
      roleId: json['role_id'] as int,
      personId: json['person_id'] as int,
    );

Map<String, dynamic> _$UserCreateFromPersonToJson(
        UserCreateFromPerson instance) =>
    <String, dynamic>{
      'password': instance.password,
      'confirm_password': instance.confirmPassword,
      'login': instance.login,
      'role_id': instance.roleId,
      'person_id': instance.personId,
    };

UserFacultyForbiddenCreate _$UserFacultyForbiddenCreateFromJson(
        Map<String, dynamic> json) =>
    UserFacultyForbiddenCreate(
      facultyId: json['faculty_id'] as int,
      userId: json['user_id'] as int,
    );

Map<String, dynamic> _$UserFacultyForbiddenCreateToJson(
        UserFacultyForbiddenCreate instance) =>
    <String, dynamic>{
      'faculty_id': instance.facultyId,
      'user_id': instance.userId,
    };

UserFacultyForbiddenInDb _$UserFacultyForbiddenInDbFromJson(
        Map<String, dynamic> json) =>
    UserFacultyForbiddenInDb(
      facultyId: json['faculty_id'] as int,
      userId: json['user_id'] as int,
      faculty: FacultyInDb.fromJson(json['faculty'] as Map<String, dynamic>),
      user: AppSchemasOtherPermissionUserFullNameInDb.fromJson(
          json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserFacultyForbiddenInDbToJson(
        UserFacultyForbiddenInDb instance) =>
    <String, dynamic>{
      'faculty_id': instance.facultyId,
      'user_id': instance.userId,
      'faculty': instance.faculty.toJson(),
      'user': instance.user.toJson(),
    };

UserFacultyForbiddenUpdate _$UserFacultyForbiddenUpdateFromJson(
        Map<String, dynamic> json) =>
    UserFacultyForbiddenUpdate(
      users: (json['users'] as List<dynamic>?)?.map((e) => e as int).toList() ??
          [],
    );

Map<String, dynamic> _$UserFacultyForbiddenUpdateToJson(
        UserFacultyForbiddenUpdate instance) =>
    <String, dynamic>{
      'users': instance.users,
    };

UserFullInDb _$UserFullInDbFromJson(Map<String, dynamic> json) => UserFullInDb(
      login: json['login'] as String,
      id: json['id'] as int,
      person: PersonInDb.fromJson(json['person'] as Map<String, dynamic>),
      role: RoleInDb.fromJson(json['role'] as Map<String, dynamic>),
      telegram: json['telegram'] == null
          ? null
          : TelegramId.fromJson(json['telegram'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserFullInDbToJson(UserFullInDb instance) =>
    <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'person': instance.person.toJson(),
      'role': instance.role.toJson(),
      'telegram': instance.telegram?.toJson(),
    };

UserFullWithStatisticInDb _$UserFullWithStatisticInDbFromJson(
        Map<String, dynamic> json) =>
    UserFullWithStatisticInDb(
      login: json['login'] as String,
      id: json['id'] as int,
      person: PersonInDb.fromJson(json['person'] as Map<String, dynamic>),
      role: RoleInDb.fromJson(json['role'] as Map<String, dynamic>),
      statistic: Statistic.fromJson(json['statistic'] as Map<String, dynamic>),
      telegram: json['telegram'] == null
          ? null
          : TelegramId.fromJson(json['telegram'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserFullWithStatisticInDbToJson(
        UserFullWithStatisticInDb instance) =>
    <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'person': instance.person.toJson(),
      'role': instance.role.toJson(),
      'statistic': instance.statistic.toJson(),
      'telegram': instance.telegram?.toJson(),
    };

UserMeInDb _$UserMeInDbFromJson(Map<String, dynamic> json) => UserMeInDb(
      login: json['login'] as String,
      id: json['id'] as int,
      isAuth: json['is_auth'] as bool,
      person: PersonInDb.fromJson(json['person'] as Map<String, dynamic>),
      role: RolePermissionsInDb.fromJson(json['role'] as Map<String, dynamic>),
      otherPermissions: FacultyForbidden.fromJson(
          json['other_permissions'] as Map<String, dynamic>),
      userPermissions:
          permissionsListFromJson(json['user_permissions'] as List?),
    );

Map<String, dynamic> _$UserMeInDbToJson(UserMeInDb instance) =>
    <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'is_auth': instance.isAuth,
      'person': instance.person.toJson(),
      'role': instance.role.toJson(),
      'other_permissions': instance.otherPermissions.toJson(),
      'user_permissions': permissionsListToJson(instance.userPermissions),
    };

UserPassword _$UserPasswordFromJson(Map<String, dynamic> json) => UserPassword(
      password: json['password'] as String,
      confirmPassword: json['confirm_password'] as String,
    );

Map<String, dynamic> _$UserPasswordToJson(UserPassword instance) =>
    <String, dynamic>{
      'password': instance.password,
      'confirm_password': instance.confirmPassword,
    };

UserPermissionBase _$UserPermissionBaseFromJson(Map<String, dynamic> json) =>
    UserPermissionBase(
      userPermissions:
          permissionsListFromJson(json['user_permissions'] as List?),
    );

Map<String, dynamic> _$UserPermissionBaseToJson(UserPermissionBase instance) =>
    <String, dynamic>{
      'user_permissions': permissionsListToJson(instance.userPermissions),
    };

UserPermissionCreate _$UserPermissionCreateFromJson(
        Map<String, dynamic> json) =>
    UserPermissionCreate(
      userPermissions:
          permissionsListFromJson(json['user_permissions'] as List?),
    );

Map<String, dynamic> _$UserPermissionCreateToJson(
        UserPermissionCreate instance) =>
    <String, dynamic>{
      'user_permissions': permissionsListToJson(instance.userPermissions),
    };

UserPermissionUpdate _$UserPermissionUpdateFromJson(
        Map<String, dynamic> json) =>
    UserPermissionUpdate(
      userPermissions:
          permissionsListFromJson(json['user_permissions'] as List?),
    );

Map<String, dynamic> _$UserPermissionUpdateToJson(
        UserPermissionUpdate instance) =>
    <String, dynamic>{
      'user_permissions': permissionsListToJson(instance.userPermissions),
    };

UserShortTelegram _$UserShortTelegramFromJson(Map<String, dynamic> json) =>
    UserShortTelegram(
      person: PersonShortInDb.fromJson(json['person'] as Map<String, dynamic>),
      telegram: json['telegram'] == null
          ? null
          : TelegramId.fromJson(json['telegram'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserShortTelegramToJson(UserShortTelegram instance) =>
    <String, dynamic>{
      'person': instance.person.toJson(),
      'telegram': instance.telegram?.toJson(),
    };

UserUpdate _$UserUpdateFromJson(Map<String, dynamic> json) => UserUpdate(
      telegramId: json['telegram_id'] as String?,
      login: json['login'] as String?,
      roleId: json['role_id'] as int?,
      person: PersonUpdate.fromJson(json['person'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUpdateToJson(UserUpdate instance) =>
    <String, dynamic>{
      'telegram_id': instance.telegramId,
      'login': instance.login,
      'role_id': instance.roleId,
      'person': instance.person.toJson(),
    };

UsersSettings _$UsersSettingsFromJson(Map<String, dynamic> json) =>
    UsersSettings(
      auth: AuthSettings.fromJson(json['auth'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersSettingsToJson(UsersSettings instance) =>
    <String, dynamic>{
      'auth': instance.auth.toJson(),
    };

ValidationError _$ValidationErrorFromJson(Map<String, dynamic> json) =>
    ValidationError(
      loc: (json['loc'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          [],
      msg: json['msg'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$ValidationErrorToJson(ValidationError instance) =>
    <String, dynamic>{
      'loc': instance.loc,
      'msg': instance.msg,
      'type': instance.type,
    };

WeatherSettingsUpdate _$WeatherSettingsUpdateFromJson(
        Map<String, dynamic> json) =>
    WeatherSettingsUpdate(
      weatherSendTime: json['weather_send_time'] as String?,
      weatherSendDaily: json['weather_send_daily'] as bool?,
      weatherSendLessons: json['weather_send_lessons'] as bool?,
      weatherSendIsWeekend: json['weather_send_is_weekend'] as bool?,
    );

Map<String, dynamic> _$WeatherSettingsUpdateToJson(
        WeatherSettingsUpdate instance) =>
    <String, dynamic>{
      'weather_send_time': instance.weatherSendTime,
      'weather_send_daily': instance.weatherSendDaily,
      'weather_send_lessons': instance.weatherSendLessons,
      'weather_send_is_weekend': instance.weatherSendIsWeekend,
    };

AppSchemasOtherPermissionUserFullNameInDb
    _$AppSchemasOtherPermissionUserFullNameInDbFromJson(
            Map<String, dynamic> json) =>
        AppSchemasOtherPermissionUserFullNameInDb(
          id: json['id'] as int,
          person:
              PersonFullName.fromJson(json['person'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AppSchemasOtherPermissionUserFullNameInDbToJson(
        AppSchemasOtherPermissionUserFullNameInDb instance) =>
    <String, dynamic>{
      'id': instance.id,
      'person': instance.person.toJson(),
    };

AppSchemasUserUserFullNameInDb _$AppSchemasUserUserFullNameInDbFromJson(
        Map<String, dynamic> json) =>
    AppSchemasUserUserFullNameInDb(
      id: json['id'] as int,
      person: PersonFullName.fromJson(json['person'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AppSchemasUserUserFullNameInDbToJson(
        AppSchemasUserUserFullNameInDb instance) =>
    <String, dynamic>{
      'id': instance.id,
      'person': instance.person.toJson(),
    };
