import 'package:json_annotation/json_annotation.dart';

enum DegreeStudy {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Бакалавриат')
  undefined('Бакалавриат'),
  @JsonValue('Магистратура')
  $undefined('Магистратура'),
  @JsonValue('Специалитет')
  $$undefined('Специалитет'),
  @JsonValue('СПО')
  $$$undefined('СПО');

  final String? value;

  const DegreeStudy(this.value);
}

enum GetLessonHeader {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('groups')
  groups('groups'),
  @JsonValue('teachers')
  teachers('teachers'),
  @JsonValue('places')
  places('places');

  final String? value;

  const GetLessonHeader(this.value);
}

enum HistoryField {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue(1)
  value_1(1),
  @JsonValue(2)
  value_2(2),
  @JsonValue(3)
  value_3(3),
  @JsonValue(4)
  value_4(4),
  @JsonValue(5)
  value_5(5),
  @JsonValue(6)
  value_6(6),
  @JsonValue(7)
  value_7(7),
  @JsonValue(8)
  value_8(8),
  @JsonValue(9)
  value_9(9),
  @JsonValue(10)
  value_10(10),
  @JsonValue(11)
  value_11(11),
  @JsonValue(12)
  value_12(12),
  @JsonValue(13)
  value_13(13),
  @JsonValue(14)
  value_14(14),
  @JsonValue(15)
  value_15(15);

  final int? value;

  const HistoryField(this.value);
}

enum LessonSortBy {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('number')
  number('number'),
  @JsonValue('direction')
  direction('direction'),
  @JsonValue('profile')
  profile('profile'),
  @JsonValue('course')
  course('course'),
  @JsonValue('group')
  group('group'),
  @JsonValue('discipline')
  discipline('discipline'),
  @JsonValue('place')
  place('place'),
  @JsonValue('type')
  type('type');

  final String? value;

  const LessonSortBy(this.value);
}

enum LessonStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue(1)
  value_1(1),
  @JsonValue(2)
  value_2(2),
  @JsonValue(3)
  value_3(3);

  final int? value;

  const LessonStatus(this.value);
}

enum LogStatusAttr {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('SUCCESS')
  success('SUCCESS'),
  @JsonValue('WARNING')
  warning('WARNING'),
  @JsonValue('ERROR')
  error('ERROR');

  final String? value;

  const LogStatusAttr(this.value);
}

enum Permissions {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('faculty_create')
  facultyCreate('faculty_create'),
  @JsonValue('faculty_read')
  facultyRead('faculty_read'),
  @JsonValue('faculty_update')
  facultyUpdate('faculty_update'),
  @JsonValue('faculty_delete')
  facultyDelete('faculty_delete'),
  @JsonValue('faculty_import')
  facultyImport('faculty_import'),
  @JsonValue('faculty_export')
  facultyExport('faculty_export'),
  @JsonValue('group_create')
  groupCreate('group_create'),
  @JsonValue('group_read')
  groupRead('group_read'),
  @JsonValue('group_update')
  groupUpdate('group_update'),
  @JsonValue('group_delete')
  groupDelete('group_delete'),
  @JsonValue('group_import')
  groupImport('group_import'),
  @JsonValue('group_export')
  groupExport('group_export'),
  @JsonValue('direction_create')
  directionCreate('direction_create'),
  @JsonValue('direction_read')
  directionRead('direction_read'),
  @JsonValue('direction_update')
  directionUpdate('direction_update'),
  @JsonValue('direction_delete')
  directionDelete('direction_delete'),
  @JsonValue('direction_import')
  directionImport('direction_import'),
  @JsonValue('direction_export')
  directionExport('direction_export'),
  @JsonValue('profile_create')
  profileCreate('profile_create'),
  @JsonValue('profile_read')
  profileRead('profile_read'),
  @JsonValue('profile_update')
  profileUpdate('profile_update'),
  @JsonValue('profile_delete')
  profileDelete('profile_delete'),
  @JsonValue('profile_import')
  profileImport('profile_import'),
  @JsonValue('profile_export')
  profileExport('profile_export'),
  @JsonValue('equipment_create')
  equipmentCreate('equipment_create'),
  @JsonValue('equipment_read')
  equipmentRead('equipment_read'),
  @JsonValue('equipment_update')
  equipmentUpdate('equipment_update'),
  @JsonValue('equipment_delete')
  equipmentDelete('equipment_delete'),
  @JsonValue('equipment_import')
  equipmentImport('equipment_import'),
  @JsonValue('equipment_export')
  equipmentExport('equipment_export'),
  @JsonValue('place_create')
  placeCreate('place_create'),
  @JsonValue('place_read')
  placeRead('place_read'),
  @JsonValue('place_update')
  placeUpdate('place_update'),
  @JsonValue('place_delete')
  placeDelete('place_delete'),
  @JsonValue('place_import')
  placeImport('place_import'),
  @JsonValue('place_export')
  placeExport('place_export'),
  @JsonValue('discipline_create')
  disciplineCreate('discipline_create'),
  @JsonValue('discipline_read')
  disciplineRead('discipline_read'),
  @JsonValue('discipline_update')
  disciplineUpdate('discipline_update'),
  @JsonValue('discipline_delete')
  disciplineDelete('discipline_delete'),
  @JsonValue('discipline_import')
  disciplineImport('discipline_import'),
  @JsonValue('discipline_export')
  disciplineExport('discipline_export'),
  @JsonValue('bell_create')
  bellCreate('bell_create'),
  @JsonValue('bell_read')
  bellRead('bell_read'),
  @JsonValue('bell_update')
  bellUpdate('bell_update'),
  @JsonValue('bell_delete')
  bellDelete('bell_delete'),
  @JsonValue('bell_import')
  bellImport('bell_import'),
  @JsonValue('bell_export')
  bellExport('bell_export'),
  @JsonValue('lesson_create')
  lessonCreate('lesson_create'),
  @JsonValue('lesson_read')
  lessonRead('lesson_read'),
  @JsonValue('lesson_history_read')
  lessonHistoryRead('lesson_history_read'),
  @JsonValue('lesson_update')
  lessonUpdate('lesson_update'),
  @JsonValue('lesson_set_status')
  lessonSetStatus('lesson_set_status'),
  @JsonValue('lesson_set_theme')
  lessonSetTheme('lesson_set_theme'),
  @JsonValue('lesson_delete')
  lessonDelete('lesson_delete'),
  @JsonValue('lesson_import')
  lessonImport('lesson_import'),
  @JsonValue('lesson_export')
  lessonExport('lesson_export'),
  @JsonValue('teacher_create')
  teacherCreate('teacher_create'),
  @JsonValue('teacher_read')
  teacherRead('teacher_read'),
  @JsonValue('teacher_update')
  teacherUpdate('teacher_update'),
  @JsonValue('teacher_delete')
  teacherDelete('teacher_delete'),
  @JsonValue('teacher_import')
  teacherImport('teacher_import'),
  @JsonValue('teacher_export')
  teacherExport('teacher_export'),
  @JsonValue('student_create')
  studentCreate('student_create'),
  @JsonValue('student_read')
  studentRead('student_read'),
  @JsonValue('student_update')
  studentUpdate('student_update'),
  @JsonValue('student_delete')
  studentDelete('student_delete'),
  @JsonValue('student_import')
  studentImport('student_import'),
  @JsonValue('student_export')
  studentExport('student_export'),
  @JsonValue('semester_create')
  semesterCreate('semester_create'),
  @JsonValue('semester_read')
  semesterRead('semester_read'),
  @JsonValue('semester_update')
  semesterUpdate('semester_update'),
  @JsonValue('semester_delete')
  semesterDelete('semester_delete'),
  @JsonValue('semester_import')
  semesterImport('semester_import'),
  @JsonValue('semester_export')
  semesterExport('semester_export'),
  @JsonValue('semester_faculty_create')
  semesterFacultyCreate('semester_faculty_create'),
  @JsonValue('semester_faculty_read')
  semesterFacultyRead('semester_faculty_read'),
  @JsonValue('semester_faculty_update')
  semesterFacultyUpdate('semester_faculty_update'),
  @JsonValue('semester_faculty_delete')
  semesterFacultyDelete('semester_faculty_delete'),
  @JsonValue('semester_lessons_direction_create')
  semesterLessonsDirectionCreate('semester_lessons_direction_create'),
  @JsonValue('semester_lessons_direction_read')
  semesterLessonsDirectionRead('semester_lessons_direction_read'),
  @JsonValue('semester_lessons_direction_update')
  semesterLessonsDirectionUpdate('semester_lessons_direction_update'),
  @JsonValue('semester_lessons_direction_delete')
  semesterLessonsDirectionDelete('semester_lessons_direction_delete'),
  @JsonValue('semester_lessons_direction_import')
  semesterLessonsDirectionImport('semester_lessons_direction_import'),
  @JsonValue('semester_session_direction_create')
  semesterSessionDirectionCreate('semester_session_direction_create'),
  @JsonValue('semester_session_direction_read')
  semesterSessionDirectionRead('semester_session_direction_read'),
  @JsonValue('semester_session_direction_update')
  semesterSessionDirectionUpdate('semester_session_direction_update'),
  @JsonValue('semester_session_direction_delete')
  semesterSessionDirectionDelete('semester_session_direction_delete'),
  @JsonValue('semester_session_direction_import')
  semesterSessionDirectionImport('semester_session_direction_import'),
  @JsonValue('session_event_create')
  sessionEventCreate('session_event_create'),
  @JsonValue('session_event_read')
  sessionEventRead('session_event_read'),
  @JsonValue('session_event_update')
  sessionEventUpdate('session_event_update'),
  @JsonValue('session_event_delete')
  sessionEventDelete('session_event_delete'),
  @JsonValue('session_event_import')
  sessionEventImport('session_event_import'),
  @JsonValue('session_event_export')
  sessionEventExport('session_event_export'),
  @JsonValue('user_create')
  userCreate('user_create'),
  @JsonValue('user_read')
  userRead('user_read'),
  @JsonValue('user_update')
  userUpdate('user_update'),
  @JsonValue('user_set_password')
  userSetPassword('user_set_password'),
  @JsonValue('user_delete')
  userDelete('user_delete'),
  @JsonValue('user_permission_create')
  userPermissionCreate('user_permission_create'),
  @JsonValue('user_permission_read')
  userPermissionRead('user_permission_read'),
  @JsonValue('user_permission_update')
  userPermissionUpdate('user_permission_update'),
  @JsonValue('user_permission_delete')
  userPermissionDelete('user_permission_delete'),
  @JsonValue('role_create')
  roleCreate('role_create'),
  @JsonValue('role_read')
  roleRead('role_read'),
  @JsonValue('role_update')
  roleUpdate('role_update'),
  @JsonValue('role_delete')
  roleDelete('role_delete'),
  @JsonValue('role_import')
  roleImport('role_import'),
  @JsonValue('role_export')
  roleExport('role_export'),
  @JsonValue('permission_create')
  permissionCreate('permission_create'),
  @JsonValue('permission_read')
  permissionRead('permission_read'),
  @JsonValue('permission_update')
  permissionUpdate('permission_update'),
  @JsonValue('permission_delete')
  permissionDelete('permission_delete'),
  @JsonValue('journal_create')
  journalCreate('journal_create'),
  @JsonValue('journal_update')
  journalUpdate('journal_update'),
  @JsonValue('journal_read')
  journalRead('journal_read'),
  @JsonValue('journal_delete')
  journalDelete('journal_delete'),
  @JsonValue('journal_import')
  journalImport('journal_import'),
  @JsonValue('journal_export')
  journalExport('journal_export'),
  @JsonValue('production_calendar_create')
  productionCalendarCreate('production_calendar_create'),
  @JsonValue('production_calendar_read')
  productionCalendarRead('production_calendar_read'),
  @JsonValue('production_calendar_update')
  productionCalendarUpdate('production_calendar_update'),
  @JsonValue('production_calendar_delete')
  productionCalendarDelete('production_calendar_delete'),
  @JsonValue('production_calendar_import')
  productionCalendarImport('production_calendar_import'),
  @JsonValue('production_calendar_export')
  productionCalendarExport('production_calendar_export'),
  @JsonValue('setting_read')
  settingRead('setting_read'),
  @JsonValue('setting_update')
  settingUpdate('setting_update'),
  @JsonValue('timetable_mode_update')
  timetableModeUpdate('timetable_mode_update'),
  @JsonValue('timetable_draft_read')
  timetableDraftRead('timetable_draft_read'),
  @JsonValue('timetable_closed_read')
  timetableClosedRead('timetable_closed_read'),
  @JsonValue('statistic_read')
  statisticRead('statistic_read'),
  @JsonValue('log_read')
  logRead('log_read'),
  @JsonValue('log_export')
  logExport('log_export'),
  @JsonValue('bot_broadcast')
  botBroadcast('bot_broadcast');

  final String? value;

  const Permissions(this.value);
}

enum PersonType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue(1)
  value_1(1),
  @JsonValue(2)
  value_2(2),
  @JsonValue(3)
  value_3(3);

  final int? value;

  const PersonType(this.value);
}

enum SemesterType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('Осенний')
  undefined('Осенний'),
  @JsonValue('Весенний')
  $undefined('Весенний');

  final String? value;

  const SemesterType(this.value);
}

enum SessionEventType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue(1)
  value_1(1),
  @JsonValue(2)
  value_2(2);

  final int? value;

  const SessionEventType(this.value);
}

enum SortOrder {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('asc')
  asc('asc'),
  @JsonValue('desc')
  desc('desc');

  final String? value;

  const SortOrder(this.value);
}

enum StudentSortBy {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('group')
  group('group'),
  @JsonValue('first_name')
  firstName('first_name'),
  @JsonValue('last_name')
  lastName('last_name'),
  @JsonValue('middle_name')
  middleName('middle_name'),
  @JsonValue('birthday')
  birthday('birthday'),
  @JsonValue('gender')
  gender('gender');

  final String? value;

  const StudentSortBy(this.value);
}

enum TeacherAcademicTitle {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue(1)
  value_1(1),
  @JsonValue(2)
  value_2(2),
  @JsonValue(3)
  value_3(3),
  @JsonValue(4)
  value_4(4),
  @JsonValue(5)
  value_5(5),
  @JsonValue(6)
  value_6(6),
  @JsonValue(7)
  value_7(7),
  @JsonValue(8)
  value_8(8),
  @JsonValue(9)
  value_9(9),
  @JsonValue(10)
  value_10(10),
  @JsonValue(11)
  value_11(11);

  final int? value;

  const TeacherAcademicTitle(this.value);
}

enum UserSortBy {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('login')
  login('login'),
  @JsonValue('role')
  role('role'),
  @JsonValue('first_name')
  firstName('first_name'),
  @JsonValue('last_name')
  lastName('last_name'),
  @JsonValue('middle_name')
  middleName('middle_name'),
  @JsonValue('birthday')
  birthday('birthday'),
  @JsonValue('gender')
  gender('gender');

  final String? value;

  const UserSortBy(this.value);
}

enum ViewMode {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue(1)
  value_1(1),
  @JsonValue(2)
  value_2(2),
  @JsonValue(3)
  value_3(3);

  final int? value;

  const ViewMode(this.value);
}

enum WeekType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue(1)
  value_1(1),
  @JsonValue(2)
  value_2(2),
  @JsonValue(3)
  value_3(3),
  @JsonValue(4)
  value_4(4);

  final int? value;

  const WeekType(this.value);
}
