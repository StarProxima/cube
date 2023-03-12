// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cube_api.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$CubeApi extends CubeApi {
  _$CubeApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = CubeApi;

  @override
  Future<Response<AccessToken>> _apiAuthLoginPost({
    required BodyLoginApiAuthLoginPost? body,
  }) {
    final Uri $url = Uri.parse('/api/auth/login');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AccessToken, AccessToken>($request);
  }

  @override
  Future<Response<Status>> _apiAuthLogoutPost() {
    final Uri $url = Uri.parse('/api/auth/logout');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<Status>> _apiAuthFirstPasswordPost({
    String? clientName,
    required UserPassword? body,
  }) {
    final Uri $url = Uri.parse('/api/auth/first_password');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<AccessToken>> _apiAuthTokenGet() {
    final Uri $url = Uri.parse('/api/auth/token');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<AccessToken, AccessToken>($request);
  }

  @override
  Future<Response<dynamic>> _apiPingGet() {
    final Uri $url = Uri.parse('/api/ping');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<Object>> _apiPersonsTypesGet() {
    final Uri $url = Uri.parse('/api/persons/types');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<List<PersonInDb>>> _apiPersonsGet({
    String? search,
    bool? students,
    bool? teachers,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/persons');
    final Map<String, dynamic> $params = <String, dynamic>{
      'search': search,
      'students': students,
      'teachers': teachers,
    };
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<List<PersonInDb>, PersonInDb>($request);
  }

  @override
  Future<Response<Object>> _apiRolesPermissionsGet({String? clientName}) {
    final Uri $url = Uri.parse('/api/roles/permissions');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<List<RoleInDb>>> _apiRolesGet({
    String? name,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/roles');
    final Map<String, dynamic> $params = <String, dynamic>{'name': name};
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<List<RoleInDb>, RoleInDb>($request);
  }

  @override
  Future<Response<int>> _apiRolesPost({
    String? clientName,
    required RoleCreate? body,
  }) {
    final Uri $url = Uri.parse('/api/roles');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<int, int>($request);
  }

  @override
  Future<Response<RolePermissionsInDb>> _apiRolesRoleIdGet({
    required int? roleId,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/roles/${roleId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<RolePermissionsInDb, RolePermissionsInDb>($request);
  }

  @override
  Future<Response<Status>> _apiRolesRoleIdPut({
    required int? roleId,
    String? clientName,
    required RoleUpdate? body,
  }) {
    final Uri $url = Uri.parse('/api/roles/${roleId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<Status>> _apiRolesRoleIdDelete({
    required int? roleId,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/roles/${roleId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<List<UserFacultyForbiddenInDb>>> _apiOtherPermissionGet({
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/other_permission');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<UserFacultyForbiddenInDb>,
        UserFacultyForbiddenInDb>($request);
  }

  @override
  Future<Response<Status>> _apiOtherPermissionPost({
    String? clientName,
    required UserFacultyForbiddenCreate? body,
  }) {
    final Uri $url = Uri.parse('/api/other_permission');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<Status>> _apiOtherPermissionFacultyIdPut({
    required int? facultyId,
    String? clientName,
    required UserFacultyForbiddenUpdate? body,
  }) {
    final Uri $url = Uri.parse('/api/other_permission/${facultyId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<Object>> _apiUsersSettingsGet({String? clientName}) {
    final Uri $url = Uri.parse('/api/users/settings');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<Status>> _apiUsersSettingsPut({
    String? clientName,
    required UsersSettings? body,
  }) {
    final Uri $url = Uri.parse('/api/users/settings');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<PageUserFullInDb>> _apiUsersGet({
    String? search,
    List<int>? roleIds,
    dynamic sortBy,
    dynamic sortOrder,
    int? page,
    int? size,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/users');
    final Map<String, dynamic> $params = <String, dynamic>{
      'search': search,
      'role_ids': roleIds,
      'sort_by': sortBy,
      'sort_order': sortOrder,
      'page': page,
      'size': size,
    };
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<PageUserFullInDb, PageUserFullInDb>($request);
  }

  @override
  Future<Response<int>> _apiUsersPost({
    String? clientName,
    required UserCreate? body,
  }) {
    final Uri $url = Uri.parse('/api/users');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<int, int>($request);
  }

  @override
  Future<Response<int>> _apiUsersFromPersonPost({
    String? clientName,
    required UserCreateFromPerson? body,
  }) {
    final Uri $url = Uri.parse('/api/users/from_person');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<int, int>($request);
  }

  @override
  Future<Response<UserPermissionBase>> _apiUsersUserIdPermissionsGet({
    required int? userId,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/users/${userId}/permissions');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<UserPermissionBase, UserPermissionBase>($request);
  }

  @override
  Future<Response<Status>> _apiUsersUserIdPermissionsPut({
    required int? userId,
    String? clientName,
    required UserPermissionUpdate? body,
  }) {
    final Uri $url = Uri.parse('/api/users/${userId}/permissions');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<Status>> _apiUsersUserIdPermissionsPost({
    required int? userId,
    String? clientName,
    required UserPermissionCreate? body,
  }) {
    final Uri $url = Uri.parse('/api/users/${userId}/permissions');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<Status>> _apiUsersUserIdPermissionsDelete({
    required int? userId,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/users/${userId}/permissions');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<UserMeInDb>> _apiUsersMeGet({String? clientName}) {
    final Uri $url = Uri.parse('/api/users/me');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<UserMeInDb, UserMeInDb>($request);
  }

  @override
  Future<Response<List<UserShortTelegram>>> _apiUsersTeachersGet() {
    final Uri $url = Uri.parse('/api/users/teachers');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<UserShortTelegram>, UserShortTelegram>($request);
  }

  @override
  Future<Response<List<UserShortTelegram>>> _apiUsersMainStudentsGet({
    List<int>? groups,
  }) {
    final Uri $url = Uri.parse('/api/users/main_students');
    final Map<String, dynamic> $params = <String, dynamic>{'groups': groups};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<UserShortTelegram>, UserShortTelegram>($request);
  }

  @override
  Future<Response<List<AppSchemasUserUserFullNameInDb>>> _apiUsersPersonsGet({
    String? search,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/users/persons');
    final Map<String, dynamic> $params = <String, dynamic>{'search': search};
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<List<AppSchemasUserUserFullNameInDb>,
        AppSchemasUserUserFullNameInDb>($request);
  }

  @override
  Future<Response<UserFullWithStatisticInDb>> _apiUsersUserIdGet({
    required int? userId,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/users/${userId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client
        .send<UserFullWithStatisticInDb, UserFullWithStatisticInDb>($request);
  }

  @override
  Future<Response<Status>> _apiUsersUserIdPut({
    required int? userId,
    String? clientName,
    required UserUpdate? body,
  }) {
    final Uri $url = Uri.parse('/api/users/${userId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<Status>> _apiUsersUserIdDelete({
    required int? userId,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/users/${userId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<Status>> _apiUsersMePasswordPost({
    String? clientName,
    required UserChangePassword? body,
  }) {
    final Uri $url = Uri.parse('/api/users/me/password');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<Status>> _apiUsersUserIdPasswordPut({
    required int? userId,
    String? clientName,
    required UserChangePassword? body,
  }) {
    final Uri $url = Uri.parse('/api/users/${userId}/password');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<Status>> _apiBotGuestPost({required String? telegramId}) {
    final Uri $url = Uri.parse('/api/bot/guest');
    final Map<String, dynamic> $params = <String, dynamic>{
      'telegram_id': telegramId
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<Status>> _apiBotUserPost({
    required String? telegramId,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/bot/user');
    final Map<String, dynamic> $params = <String, dynamic>{
      'telegram_id': telegramId
    };
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<Status>> _apiBotUserDelete({String? clientName}) {
    final Uri $url = Uri.parse('/api/bot/user');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<Telegram>> _apiBotSettingsGet({String? clientName}) {
    final Uri $url = Uri.parse('/api/bot/settings');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Telegram, Telegram>($request);
  }

  @override
  Future<Response<Object>> _apiBotNotificationTimesGet() {
    final Uri $url = Uri.parse('/api/bot/notification_times');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<TelegramId>> _apiBotUserIdGet({required int? userId}) {
    final Uri $url = Uri.parse('/api/bot/${userId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<TelegramId, TelegramId>($request);
  }

  @override
  Future<Response<dynamic>> _apiBotTimetableSettingsPut({
    String? clientName,
    required TimetableSettingsUpdate? body,
  }) {
    final Uri $url = Uri.parse('/api/bot/timetable_settings');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiBotSessionSettingsPut({
    String? clientName,
    required SessionSettingsUpdate? body,
  }) {
    final Uri $url = Uri.parse('/api/bot/session_settings');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiBotAttendanceSettingsPut({
    String? clientName,
    required AttendanceSettingsUpdate? body,
  }) {
    final Uri $url = Uri.parse('/api/bot/attendance_settings');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiBotWeatherSettingsPut({
    String? clientName,
    required WeatherSettingsUpdate? body,
  }) {
    final Uri $url = Uri.parse('/api/bot/weather_settings');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiBotHourlyReportSettingsPut({
    String? clientName,
    required HourlyReportSettingsUpdate? body,
  }) {
    final Uri $url = Uri.parse('/api/bot/hourly_report_settings');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<BellInDb>>> _apiBellsGet() {
    final Uri $url = Uri.parse('/api/bells');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<BellInDb>, BellInDb>($request);
  }

  @override
  Future<Response<int>> _apiBellsPost({
    String? clientName,
    required BellCreate? body,
  }) {
    final Uri $url = Uri.parse('/api/bells');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<int, int>($request);
  }

  @override
  Future<Response<BellInDb>> _apiBellsBellIdGet({required int? bellId}) {
    final Uri $url = Uri.parse('/api/bells/${bellId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<BellInDb, BellInDb>($request);
  }

  @override
  Future<Response<Status>> _apiBellsBellIdPut({
    required int? bellId,
    String? clientName,
    required BellUpdate? body,
  }) {
    final Uri $url = Uri.parse('/api/bells/${bellId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<Status>> _apiBellsBellIdDelete({
    required int? bellId,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/bells/${bellId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<List<BellInDb>>> _apiBellsImportPost({
    String? clientName,
    required BodyImportBellsApiBellsImportPost body,
  }) {
    final Uri $url = Uri.parse('/api/bells/import');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<BellInDb>, BellInDb>($request);
  }

  @override
  Future<Response<List<FacultyInDb>>> _apiFacultiesGet({
    String? search,
    String? name,
  }) {
    final Uri $url = Uri.parse('/api/faculties');
    final Map<String, dynamic> $params = <String, dynamic>{
      'search': search,
      'name': name,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<FacultyInDb>, FacultyInDb>($request);
  }

  @override
  Future<Response<int>> _apiFacultiesPost({
    String? clientName,
    required FacultyCreate? body,
  }) {
    final Uri $url = Uri.parse('/api/faculties');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<int, int>($request);
  }

  @override
  Future<Response<List<int>>> _apiFacultiesFacultyIdGroupsIdsGet({
    required int? facultyId,
    int? disciplineId,
    int? teacherId,
    int? lessonTypeId,
  }) {
    final Uri $url = Uri.parse('/api/faculties/${facultyId}/groups_ids');
    final Map<String, dynamic> $params = <String, dynamic>{
      'discipline_id': disciplineId,
      'teacher_id': teacherId,
      'lesson_type_id': lessonTypeId,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<int>, int>($request);
  }

  @override
  Future<Response<FacultyInDb>> _apiFacultiesFacultyIdGet({
    required int? facultyId,
  }) {
    final Uri $url = Uri.parse('/api/faculties/${facultyId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<FacultyInDb, FacultyInDb>($request);
  }

  @override
  Future<Response<Status>> _apiFacultiesFacultyIdPut({
    required int? facultyId,
    String? clientName,
    required FacultyUpdate? body,
  }) {
    final Uri $url = Uri.parse('/api/faculties/${facultyId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<Status>> _apiFacultiesFacultyIdDelete({
    required int? facultyId,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/faculties/${facultyId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<List<FacultyInDb>>> _apiFacultiesImportPost({
    String? clientName,
    required BodyImportFacultiesApiFacultiesImportPost body,
  }) {
    final Uri $url = Uri.parse('/api/faculties/import');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<FacultyInDb>, FacultyInDb>($request);
  }

  @override
  Future<Response<List<DirectionInDb>>> _apiDirectionsGet({
    String? search,
    int? facultyId,
    String? name,
    String? cipher,
    List<String?>? degreeStudy,
  }) {
    final Uri $url = Uri.parse('/api/directions');
    final Map<String, dynamic> $params = <String, dynamic>{
      'search': search,
      'faculty_id': facultyId,
      'name': name,
      'cipher': cipher,
      'degree_study': degreeStudy,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<DirectionInDb>, DirectionInDb>($request);
  }

  @override
  Future<Response<int>> _apiDirectionsPost({
    String? clientName,
    required DirectionCreate? body,
  }) {
    final Uri $url = Uri.parse('/api/directions');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<int, int>($request);
  }

  @override
  Future<Response<DirectionInDb>> _apiDirectionsDirectionIdGet({
    required int? directionId,
  }) {
    final Uri $url = Uri.parse('/api/directions/${directionId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<DirectionInDb, DirectionInDb>($request);
  }

  @override
  Future<Response<Status>> _apiDirectionsDirectionIdPut({
    required int? directionId,
    String? clientName,
    required DirectionUpdate? body,
  }) {
    final Uri $url = Uri.parse('/api/directions/${directionId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<Status>> _apiDirectionsDirectionIdDelete({
    required int? directionId,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/directions/${directionId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<List<DirectionInDb>>> _apiDirectionsImportPost({
    String? clientName,
    required BodyImportDirectionsApiDirectionsImportPost body,
  }) {
    final Uri $url = Uri.parse('/api/directions/import');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<DirectionInDb>, DirectionInDb>($request);
  }

  @override
  Future<Response<List<ProfileInDb>>> _apiProfilesGet({
    String? search,
    List<int>? directions,
  }) {
    final Uri $url = Uri.parse('/api/profiles');
    final Map<String, dynamic> $params = <String, dynamic>{
      'search': search,
      'directions': directions,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<ProfileInDb>, ProfileInDb>($request);
  }

  @override
  Future<Response<int>> _apiProfilesPost({
    String? clientName,
    required ProfileCreate? body,
  }) {
    final Uri $url = Uri.parse('/api/profiles');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<int, int>($request);
  }

  @override
  Future<Response<ProfileInDb>> _apiProfilesProfileIdGet({
    required int? profileId,
  }) {
    final Uri $url = Uri.parse('/api/profiles/${profileId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ProfileInDb, ProfileInDb>($request);
  }

  @override
  Future<Response<Status>> _apiProfilesProfileIdPut({
    required int? profileId,
    String? clientName,
    required ProfileUpdate? body,
  }) {
    final Uri $url = Uri.parse('/api/profiles/${profileId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<Status>> _apiProfilesProfileIdDelete({
    required int? profileId,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/profiles/${profileId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<List<ProfileInDb>>> _apiProfilesImportPost({
    String? clientName,
    required BodyImportProfilesApiProfilesImportPost body,
  }) {
    final Uri $url = Uri.parse('/api/profiles/import');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<ProfileInDb>, ProfileInDb>($request);
  }

  @override
  Future<Response<List<SemesterInDb>>> _apiSemestersGet() {
    final Uri $url = Uri.parse('/api/semesters');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<SemesterInDb>, SemesterInDb>($request);
  }

  @override
  Future<Response<int>> _apiSemestersPost({
    String? clientName,
    required SemesterCreate? body,
  }) {
    final Uri $url = Uri.parse('/api/semesters');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<int, int>($request);
  }

  @override
  Future<Response<Status>> _apiSemestersSemesterIdPut({
    required int? semesterId,
    String? clientName,
    required SemesterUpdate? body,
  }) {
    final Uri $url = Uri.parse('/api/semesters/${semesterId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<Status>> _apiSemestersSemesterIdDelete({
    required int? semesterId,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/semesters/${semesterId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<List<SemesterDirectionInDb>>> _apiSemesterDirectionsGet({
    int? semesterId,
    List<int>? directions,
    List<int>? courses,
    bool? currentSemester,
  }) {
    final Uri $url = Uri.parse('/api/semester_directions');
    final Map<String, dynamic> $params = <String, dynamic>{
      'semester_id': semesterId,
      'directions': directions,
      'courses': courses,
      'current_semester': currentSemester,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<List<SemesterDirectionInDb>, SemesterDirectionInDb>($request);
  }

  @override
  Future<Response<int>> _apiSemesterDirectionsPost({
    String? clientName,
    required SemesterDirectionCreate? body,
  }) {
    final Uri $url = Uri.parse('/api/semester_directions');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<int, int>($request);
  }

  @override
  Future<Response<Status>> _apiSemesterDirectionsSemesterDirectionIdPut({
    required int? semesterDirectionId,
    String? clientName,
    required SemesterDirectionUpdate? body,
  }) {
    final Uri $url =
        Uri.parse('/api/semester_directions/${semesterDirectionId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<Status>> _apiSemesterDirectionsSemesterDirectionIdDelete({
    required int? semesterDirectionId,
    String? clientName,
  }) {
    final Uri $url =
        Uri.parse('/api/semester_directions/${semesterDirectionId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<Object>> _apiTimetableViewsModesGet() {
    final Uri $url = Uri.parse('/api/timetable_views/modes');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<List<TimetableViewInDb>>> _apiTimetableViewsGet({
    int? semesterId,
    int? facultyId,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/timetable_views');
    final Map<String, dynamic> $params = <String, dynamic>{
      'semester_id': semesterId,
      'faculty_id': facultyId,
    };
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<List<TimetableViewInDb>, TimetableViewInDb>($request);
  }

  @override
  Future<Response<Status>> _apiTimetableViewsPost({
    String? clientName,
    required TimetableViewUpdate? body,
  }) {
    final Uri $url = Uri.parse('/api/timetable_views');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<List<GroupInDb>>> _apiGroupsGet({String? search}) {
    final Uri $url = Uri.parse('/api/groups');
    final Map<String, dynamic> $params = <String, dynamic>{'search': search};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<GroupInDb>, GroupInDb>($request);
  }

  @override
  Future<Response<int>> _apiGroupsPost({
    String? clientName,
    required GroupCreate? body,
  }) {
    final Uri $url = Uri.parse('/api/groups');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<int, int>($request);
  }

  @override
  Future<Response<List<int>>> _apiGroupsGroupIdDisciplinesIdsGet({
    required int? groupId,
  }) {
    final Uri $url = Uri.parse('/api/groups/${groupId}/disciplines_ids');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<int>, int>($request);
  }

  @override
  Future<Response<List<int>>>
      _apiGroupsGroupIdDisciplinesDisciplineIdTypesIdsGet({
    required int? groupId,
    required int? disciplineId,
  }) {
    final Uri $url = Uri.parse(
      '/api/groups/${groupId}/disciplines/${disciplineId}/types_ids',
    );
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<int>, int>($request);
  }

  @override
  Future<Response<GroupFullInDb>> _apiGroupsGroupIdGet({
    required int? groupId,
  }) {
    final Uri $url = Uri.parse('/api/groups/${groupId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<GroupFullInDb, GroupFullInDb>($request);
  }

  @override
  Future<Response<Status>> _apiGroupsGroupIdPut({
    required int? groupId,
    String? clientName,
    required GroupCreate? body,
  }) {
    final Uri $url = Uri.parse('/api/groups/${groupId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<Status>> _apiGroupsGroupIdDelete({
    required int? groupId,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/groups/${groupId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<List<GroupInDb>>> _apiGroupsImportPost({
    String? clientName,
    required BodyImportGroupsApiGroupsImportPost body,
  }) {
    final Uri $url = Uri.parse('/api/groups/import');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<GroupInDb>, GroupInDb>($request);
  }

  @override
  Future<Response<List<DisciplineInDb>>> _apiDisciplinesGet({String? search}) {
    final Uri $url = Uri.parse('/api/disciplines');
    final Map<String, dynamic> $params = <String, dynamic>{'search': search};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<DisciplineInDb>, DisciplineInDb>($request);
  }

  @override
  Future<Response<int>> _apiDisciplinesPost({
    String? clientName,
    required DisciplineCreate? body,
  }) {
    final Uri $url = Uri.parse('/api/disciplines');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<int, int>($request);
  }

  @override
  Future<Response<List<int>>> _apiDisciplinesDisciplineIdFacultiesIdsGet({
    required int? disciplineId,
    int? teacherId,
    int? lessonTypeId,
  }) {
    final Uri $url =
        Uri.parse('/api/disciplines/${disciplineId}/faculties_ids');
    final Map<String, dynamic> $params = <String, dynamic>{
      'teacher_id': teacherId,
      'lesson_type_id': lessonTypeId,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<int>, int>($request);
  }

  @override
  Future<Response<DisciplineInDb>> _apiDisciplinesDisciplineIdGet({
    required int? disciplineId,
  }) {
    final Uri $url = Uri.parse('/api/disciplines/${disciplineId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<DisciplineInDb, DisciplineInDb>($request);
  }

  @override
  Future<Response<Status>> _apiDisciplinesDisciplineIdPut({
    required int? disciplineId,
    String? clientName,
    required DisciplineUpdate? body,
  }) {
    final Uri $url = Uri.parse('/api/disciplines/${disciplineId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<Status>> _apiDisciplinesDisciplineIdDelete({
    required int? disciplineId,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/disciplines/${disciplineId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<List<DisciplineInDb>>> _apiDisciplinesImportPost({
    String? clientName,
    required BodyImportDisciplinesApiDisciplinesImportPost body,
  }) {
    final Uri $url = Uri.parse('/api/disciplines/import');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<DisciplineInDb>, DisciplineInDb>($request);
  }

  @override
  Future<Response<List<TeacherInDb>>> _apiTeachersGet({
    String? search,
    List<dynamic>? academicTitles,
    List<int>? academicDegrees,
  }) {
    final Uri $url = Uri.parse('/api/teachers');
    final Map<String, dynamic> $params = <String, dynamic>{
      'search': search,
      'academic_titles': academicTitles,
      'academic_degrees': academicDegrees,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<TeacherInDb>, TeacherInDb>($request);
  }

  @override
  Future<Response<int>> _apiTeachersPost({
    String? clientName,
    required TeacherCreate? body,
  }) {
    final Uri $url = Uri.parse('/api/teachers');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<int, int>($request);
  }

  @override
  Future<Response<Object>> _apiTeachersAcademicTitlesGet() {
    final Uri $url = Uri.parse('/api/teachers/academic_titles');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<List<TeacherAcademicDegreeInDb>>>
      _apiTeachersAcademicDegreesGet() {
    final Uri $url = Uri.parse('/api/teachers/academic_degrees');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<TeacherAcademicDegreeInDb>,
        TeacherAcademicDegreeInDb>($request);
  }

  @override
  Future<Response<List<int>>> _apiTeachersTeacherIdGroupsIdsGet({
    required int? teacherId,
  }) {
    final Uri $url = Uri.parse('/api/teachers/${teacherId}/groups_ids');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<int>, int>($request);
  }

  @override
  Future<Response<List<int>>> _apiTeachersTeacherIdDisciplinesIdsGet({
    required int? teacherId,
  }) {
    final Uri $url = Uri.parse('/api/teachers/${teacherId}/disciplines_ids');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<int>, int>($request);
  }

  @override
  Future<Response<List<int>>>
      _apiTeachersTeacherIdDisciplinesDisciplineIdTypesIdsGet({
    required int? teacherId,
    required int? disciplineId,
    int? groupId,
  }) {
    final Uri $url = Uri.parse(
      '/api/teachers/${teacherId}/disciplines/${disciplineId}/types_ids',
    );
    final Map<String, dynamic> $params = <String, dynamic>{'group_id': groupId};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<int>, int>($request);
  }

  @override
  Future<Response<TeacherFullInDb>> _apiTeachersTeacherIdGet({
    required int? teacherId,
  }) {
    final Uri $url = Uri.parse('/api/teachers/${teacherId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<TeacherFullInDb, TeacherFullInDb>($request);
  }

  @override
  Future<Response<Status>> _apiTeachersTeacherIdPut({
    required int? teacherId,
    String? clientName,
    required TeacherUpdate? body,
  }) {
    final Uri $url = Uri.parse('/api/teachers/${teacherId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<Status>> _apiTeachersTeacherIdDelete({
    required int? teacherId,
    bool? withUser,
    bool? withLessons,
    int? newLessonsTeacherId,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/teachers/${teacherId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_user': withUser,
      'with_lessons': withLessons,
      'new_lessons_teacher_id': newLessonsTeacherId,
    };
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<dynamic>> _apiTeachersImportPost({
    String? clientName,
    required BodyImportTeachersApiTeachersImportPost body,
  }) {
    final Uri $url = Uri.parse('/api/teachers/import');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<PageStudentShortInDb>> _apiStudentsGet({
    String? search,
    List<int>? groups,
    bool? isMain,
    bool? isDeputyMain,
    dynamic sortBy,
    dynamic sortOrder,
    int? page,
    int? size,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/students');
    final Map<String, dynamic> $params = <String, dynamic>{
      'search': search,
      'groups': groups,
      'is_main': isMain,
      'is_deputy_main': isDeputyMain,
      'sort_by': sortBy,
      'sort_order': sortOrder,
      'page': page,
      'size': size,
    };
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<PageStudentShortInDb, PageStudentShortInDb>($request);
  }

  @override
  Future<Response<int>> _apiStudentsPost({
    String? clientName,
    required StudentCreate? body,
  }) {
    final Uri $url = Uri.parse('/api/students');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<int, int>($request);
  }

  @override
  Future<Response<StudentInDb>> _apiStudentsStudentIdGet({
    required int? studentId,
  }) {
    final Uri $url = Uri.parse('/api/students/${studentId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<StudentInDb, StudentInDb>($request);
  }

  @override
  Future<Response<Status>> _apiStudentsStudentIdPut({
    required int? studentId,
    String? clientName,
    required StudentUpdate? body,
  }) {
    final Uri $url = Uri.parse('/api/students/${studentId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<Status>> _apiStudentsStudentIdDelete({
    required int? studentId,
    bool? withUser,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/students/${studentId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_user': withUser
    };
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<dynamic>> _apiStudentsImportPost({
    String? clientName,
    required BodyImportStudentsApiStudentsImportPost body,
  }) {
    final Uri $url = Uri.parse('/api/students/import');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiPlacesExportPost({
    String? clientName,
    required PlaceExport? body,
  }) {
    final Uri $url = Uri.parse('/api/places/export');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<PlaceShortInDb>>> _apiPlacesGet({
    String? search,
    List<int>? equipments,
  }) {
    final Uri $url = Uri.parse('/api/places');
    final Map<String, dynamic> $params = <String, dynamic>{
      'search': search,
      'equipments': equipments,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<PlaceShortInDb>, PlaceShortInDb>($request);
  }

  @override
  Future<Response<int>> _apiPlacesPost({
    String? clientName,
    required PlaceCreate? body,
  }) {
    final Uri $url = Uri.parse('/api/places');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<int, int>($request);
  }

  @override
  Future<Response<PlaceInDb>> _apiPlacesPlaceIdGet({required int? placeId}) {
    final Uri $url = Uri.parse('/api/places/${placeId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<PlaceInDb, PlaceInDb>($request);
  }

  @override
  Future<Response<Status>> _apiPlacesPlaceIdPut({
    required int? placeId,
    String? clientName,
    required PlaceUpdate? body,
  }) {
    final Uri $url = Uri.parse('/api/places/${placeId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<Status>> _apiPlacesPlaceIdDelete({
    required int? placeId,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/places/${placeId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<List<PlaceInDb>>> _apiPlacesImportPost({
    String? clientName,
    required BodyImportPlacesApiPlacesImportPost body,
  }) {
    final Uri $url = Uri.parse('/api/places/import');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<PlaceInDb>, PlaceInDb>($request);
  }

  @override
  Future<Response<List<EquipmentInDb>>> _apiEquipmentsGet() {
    final Uri $url = Uri.parse('/api/equipments');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<EquipmentInDb>, EquipmentInDb>($request);
  }

  @override
  Future<Response<int>> _apiEquipmentsPost({
    String? clientName,
    required EquipmentCreate? body,
  }) {
    final Uri $url = Uri.parse('/api/equipments');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<int, int>($request);
  }

  @override
  Future<Response<EquipmentInDb>> _apiEquipmentsEquipmentIdGet({
    required int? equipmentId,
  }) {
    final Uri $url = Uri.parse('/api/equipments/${equipmentId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<EquipmentInDb, EquipmentInDb>($request);
  }

  @override
  Future<Response<Status>> _apiEquipmentsEquipmentIdPut({
    required int? equipmentId,
    String? clientName,
    required EquipmentUpdate? body,
  }) {
    final Uri $url = Uri.parse('/api/equipments/${equipmentId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<Status>> _apiEquipmentsEquipmentIdDelete({
    required int? equipmentId,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/equipments/${equipmentId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<List<EquipmentInDb>>> _apiEquipmentsImportPost({
    String? clientName,
    required BodyImportEquipmentsApiEquipmentsImportPost body,
  }) {
    final Uri $url = Uri.parse('/api/equipments/import');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<EquipmentInDb>, EquipmentInDb>($request);
  }

  @override
  Future<Response<List<LessonCollision>>> _apiLessonsCollisionGet({
    required String? date,
    required int? number,
    int? semesterId,
    int? typeId,
    int? disciplineId,
    int? placeId,
    required List<int>? groups,
    List<int>? teachers,
    bool? isRemotely,
    int? lessonId,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/lessons/collision');
    final Map<String, dynamic> $params = <String, dynamic>{
      'date': date,
      'number': number,
      'semester_id': semesterId,
      'type_id': typeId,
      'discipline_id': disciplineId,
      'place_id': placeId,
      'groups': groups,
      'teachers': teachers,
      'is_remotely': isRemotely,
      'lesson_id': lessonId,
    };
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<List<LessonCollision>, LessonCollision>($request);
  }

  @override
  Future<Response<LessonAutocomplete>> _apiLessonsAutocompleteGet({
    required String? q,
  }) {
    final Uri $url = Uri.parse('/api/lessons/autocomplete');
    final Map<String, dynamic> $params = <String, dynamic>{'q': q};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<LessonAutocomplete, LessonAutocomplete>($request);
  }

  @override
  Future<Response<Object>> _apiLessonsSettingsGet() {
    final Uri $url = Uri.parse('/api/lessons/settings');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<Status>> _apiLessonsSettingsPut({
    String? clientName,
    required LessonsSettings? body,
  }) {
    final Uri $url = Uri.parse('/api/lessons/settings');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<Object>> _apiLessonsTimetableSettingsGet() {
    final Uri $url = Uri.parse('/api/lessons/timetable_settings');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<List<LessonTypeInDb>>> _apiLessonsTypesGet() {
    final Uri $url = Uri.parse('/api/lessons/types');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<LessonTypeInDb>, LessonTypeInDb>($request);
  }

  @override
  Future<Response<LessonTypeInDb>> _apiLessonsTypesTypeIdGet({
    required int? typeId,
  }) {
    final Uri $url = Uri.parse('/api/lessons/types/${typeId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<LessonTypeInDb, LessonTypeInDb>($request);
  }

  @override
  Future<Response<Object>> _apiLessonsStatusesGet() {
    final Uri $url = Uri.parse('/api/lessons/statuses');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<Object>> _apiLessonsHistoryFieldsGet() {
    final Uri $url = Uri.parse('/api/lessons/history_fields');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<List<LessonHistory>>> _apiLessonsLessonIdHistoryGet({
    required int? lessonId,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/lessons/${lessonId}/history');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<LessonHistory>, LessonHistory>($request);
  }

  @override
  Future<Response<dynamic>> _apiLessonsExportIcalPost({
    String? clientName,
    required ExportIcal? body,
  }) {
    final Uri $url = Uri.parse('/api/lessons/export_ical');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<LessonFullNamesInDb>>> _apiLessonsGet({
    dynamic header,
    bool? fullData,
    String? search,
    required String? startDate,
    required String? endDate,
    List<int>? numbers,
    int? semesterId,
    int? facultyId,
    List<String?>? degreeStudies,
    List<int>? directions,
    List<int>? profiles,
    List<int>? courses,
    List<int>? groups,
    List<int>? teachers,
    List<int>? disciplines,
    List<int>? places,
    List<int>? types,
    bool? themeIsNull,
    String? status,
    dynamic sortBy,
    dynamic sortOrder,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/lessons');
    final Map<String, dynamic> $params = <String, dynamic>{
      'header': header,
      'full_data': fullData,
      'search': search,
      'start_date': startDate,
      'end_date': endDate,
      'numbers': numbers,
      'semester_id': semesterId,
      'faculty_id': facultyId,
      'degree_studies': degreeStudies,
      'directions': directions,
      'profiles': profiles,
      'courses': courses,
      'groups': groups,
      'teachers': teachers,
      'disciplines': disciplines,
      'places': places,
      'types': types,
      'theme_is_null': themeIsNull,
      'status': status,
      'sort_by': sortBy,
      'sort_order': sortOrder,
    };
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client
        .send<List<LessonFullNamesInDb>, LessonFullNamesInDb>($request);
  }

  @override
  Future<Response<int>> _apiLessonsPost({
    String? clientName,
    required LessonCreateWithParams? body,
  }) {
    final Uri $url = Uri.parse('/api/lessons');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<int, int>($request);
  }

  @override
  Future<Response<LessonInDb>> _apiLessonsLessonIdGet({
    required int? lessonId,
  }) {
    final Uri $url = Uri.parse('/api/lessons/${lessonId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<LessonInDb, LessonInDb>($request);
  }

  @override
  Future<Response<Status>> _apiLessonsLessonIdPut({
    required int? lessonId,
    String? clientName,
    required LessonUpdateWithParams? body,
  }) {
    final Uri $url = Uri.parse('/api/lessons/${lessonId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<Status>> _apiLessonsLessonIdDelete({
    required int? lessonId,
    bool? notify,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/lessons/${lessonId}');
    final Map<String, dynamic> $params = <String, dynamic>{'notify': notify};
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<LessonFullInDb>> _apiLessonsLessonIdFullGet({
    required int? lessonId,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/lessons/${lessonId}/full');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<LessonFullInDb, LessonFullInDb>($request);
  }

  @override
  Future<Response<Status>> _apiLessonsLessonIdCancelPut({
    required int? lessonId,
    String? clientName,
    required LessonCancelReason? body,
  }) {
    final Uri $url = Uri.parse('/api/lessons/${lessonId}/cancel');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<dynamic>> _apiLessonsLessonIdThemePut({
    required int? lessonId,
    required String? theme,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/lessons/${lessonId}/theme');
    final Map<String, dynamic> $params = <String, dynamic>{'theme': theme};
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<MainLessonCollision>>> _apiMainLessonsCollisionGet({
    required int? weekday,
    int? parity,
    required int? number,
    int? semesterId,
    int? typeId,
    int? disciplineId,
    int? placeId,
    required List<int>? groups,
    List<int>? teachers,
    bool? isRemotely,
    int? mainLessonId,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/main_lessons/collision');
    final Map<String, dynamic> $params = <String, dynamic>{
      'weekday': weekday,
      'parity': parity,
      'number': number,
      'semester_id': semesterId,
      'type_id': typeId,
      'discipline_id': disciplineId,
      'place_id': placeId,
      'groups': groups,
      'teachers': teachers,
      'is_remotely': isRemotely,
      'main_lesson_id': mainLessonId,
    };
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client
        .send<List<MainLessonCollision>, MainLessonCollision>($request);
  }

  @override
  Future<Response<dynamic>> _apiMainLessonsExportPost({
    String? clientName,
    required MainLessonExport? body,
  }) {
    final Uri $url = Uri.parse('/api/main_lessons/export');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<MainLessonResults>> _apiMainLessonsGet({
    dynamic header,
    String? search,
    int? facultyId,
    int? semesterId,
    List<int>? numbers,
    List<String?>? degreeStudies,
    List<int>? directions,
    List<int>? profiles,
    List<int>? courses,
    List<int>? groups,
    List<int>? teachers,
    List<int>? disciplines,
    List<int>? places,
    List<int>? types,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/main_lessons');
    final Map<String, dynamic> $params = <String, dynamic>{
      'header': header,
      'search': search,
      'faculty_id': facultyId,
      'semester_id': semesterId,
      'numbers': numbers,
      'degree_studies': degreeStudies,
      'directions': directions,
      'profiles': profiles,
      'courses': courses,
      'groups': groups,
      'teachers': teachers,
      'disciplines': disciplines,
      'places': places,
      'types': types,
    };
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<MainLessonResults, MainLessonResults>($request);
  }

  @override
  Future<Response<int>> _apiMainLessonsPost({
    String? clientName,
    required MainLessonCreateWithParams? body,
  }) {
    final Uri $url = Uri.parse('/api/main_lessons');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<int, int>($request);
  }

  @override
  Future<Response<dynamic>> _apiMainLessonsMainLessonIdGet({
    required int? mainLessonId,
    bool? fullInfo,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/main_lessons/${mainLessonId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'full_info': fullInfo
    };
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<Status>> _apiMainLessonsMainLessonIdPut({
    required int? mainLessonId,
    String? clientName,
    required MainLessonUpdateWithParams? body,
  }) {
    final Uri $url = Uri.parse('/api/main_lessons/${mainLessonId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<Status>> _apiMainLessonsMainLessonIdDelete({
    required int? mainLessonId,
    bool? withCompleted,
    bool? notify,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/main_lessons/${mainLessonId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'with_completed': withCompleted,
      'notify': notify,
    };
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<List<MainLessonHistory>>>
      _apiMainLessonsMainLessonIdHistoryGet({
    required int? mainLessonId,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/main_lessons/${mainLessonId}/history');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<MainLessonHistory>, MainLessonHistory>($request);
  }

  @override
  Future<Response<int>> _apiMainLessonsMainLessonIdDividePost({
    required int? mainLessonId,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/main_lessons/${mainLessonId}/divide');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<int, int>($request);
  }

  @override
  Future<Response<dynamic>> _apiJournalPost({
    String? clientName,
    required JournalCreate? body,
  }) {
    final Uri $url = Uri.parse('/api/journal');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<Object>> _apiJournalGroupsGroupIdDisciplinesDisciplineIdGet({
    required int? groupId,
    required int? disciplineId,
    int? lessonTypeId,
  }) {
    final Uri $url =
        Uri.parse('/api/journal/groups/${groupId}/disciplines/${disciplineId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'lesson_type_id': lessonTypeId
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<List<ProductionCalendarDayInDb>>> _apiProductionCalendarGet({
    required int? year,
  }) {
    final Uri $url = Uri.parse('/api/production_calendar');
    final Map<String, dynamic> $params = <String, dynamic>{'year': year};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<ProductionCalendarDayInDb>,
        ProductionCalendarDayInDb>($request);
  }

  @override
  Future<Response<List<ProductionCalendarDayInDb>>> _apiProductionCalendarPut({
    required int? year,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/production_calendar');
    final Map<String, dynamic> $params = <String, dynamic>{'year': year};
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<List<ProductionCalendarDayInDb>,
        ProductionCalendarDayInDb>($request);
  }

  @override
  Future<Response<ProductionCalendarDayInDb>> _apiProductionCalendarPost({
    String? clientName,
    required ProductionCalendarDayCreate? body,
  }) {
    final Uri $url = Uri.parse('/api/production_calendar');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client
        .send<ProductionCalendarDayInDb, ProductionCalendarDayInDb>($request);
  }

  @override
  Future<Response<Status>> _apiProductionCalendarDelete({
    required int? year,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/production_calendar');
    final Map<String, dynamic> $params = <String, dynamic>{'year': year};
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<int>> _apiProductionCalendarDayGet({required String? date}) {
    final Uri $url = Uri.parse('/api/production_calendar/day');
    final Map<String, dynamic> $params = <String, dynamic>{'date': date};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<int, int>($request);
  }

  @override
  Future<Response<Status>> _apiProductionCalendarProductionCalendarDayIdPut({
    required int? productionCalendarDayId,
    String? clientName,
    required ProductionCalendarDayUpdate? body,
  }) {
    final Uri $url =
        Uri.parse('/api/production_calendar/${productionCalendarDayId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<Status>> _apiProductionCalendarProductionCalendarDayIdDelete({
    required int? productionCalendarDayId,
    String? clientName,
  }) {
    final Uri $url =
        Uri.parse('/api/production_calendar/${productionCalendarDayId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<Object>> _apiStatisticsGet({String? clientName}) {
    final Uri $url = Uri.parse('/api/statistics');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<List<SessionEventCollision>>> _apiSessionEventsCollisionGet({
    required String? date,
    required String? time,
    bool? isRemotely,
    required int? eventTypeId,
    required int? disciplineId,
    int? placeId,
    required List<int>? groups,
    required List<int>? teachers,
    int? semesterId,
    int? sessionEventId,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/session_events/collision');
    final Map<String, dynamic> $params = <String, dynamic>{
      'date': date,
      'time': time,
      'is_remotely': isRemotely,
      'event_type_id': eventTypeId,
      'discipline_id': disciplineId,
      'place_id': placeId,
      'groups': groups,
      'teachers': teachers,
      'semester_id': semesterId,
      'session_event_id': sessionEventId,
    };
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client
        .send<List<SessionEventCollision>, SessionEventCollision>($request);
  }

  @override
  Future<Response<dynamic>> _apiSessionEventsExportPost({
    String? clientName,
    required SessionEventExport? body,
  }) {
    final Uri $url = Uri.parse('/api/session_events/export');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiSessionEventsExportIcalPost({
    String? clientName,
    required ExportIcal? body,
  }) {
    final Uri $url = Uri.parse('/api/session_events/export_ical');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<SessionEventData>> _apiSessionEventsGet({
    int? facultyId,
    int? semesterId,
    String? date,
    List<int>? directions,
    List<int>? courses,
    List<int>? places,
    List<int>? groups,
    List<int>? teachers,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/session_events');
    final Map<String, dynamic> $params = <String, dynamic>{
      'faculty_id': facultyId,
      'semester_id': semesterId,
      'date': date,
      'directions': directions,
      'courses': courses,
      'places': places,
      'groups': groups,
      'teachers': teachers,
    };
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<SessionEventData, SessionEventData>($request);
  }

  @override
  Future<Response<int>> _apiSessionEventsPost({
    String? clientName,
    required SessionEventCreateWithParams? body,
  }) {
    final Uri $url = Uri.parse('/api/session_events');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<int, int>($request);
  }

  @override
  Future<Response<Status>> _apiSessionEventsSessionEventIdPut({
    required int? sessionEventId,
    String? clientName,
    required SessionEventUpdateWithParams? body,
  }) {
    final Uri $url = Uri.parse('/api/session_events/${sessionEventId}');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<Status>> _apiSessionEventsSessionEventIdDelete({
    required int? sessionEventId,
    bool? notify,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/session_events/${sessionEventId}');
    final Map<String, dynamic> $params = <String, dynamic>{'notify': notify};
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<List<String>>> _apiTelegramUsersIdGet() {
    final Uri $url = Uri.parse('/api/telegram/users/id');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<String>, String>($request);
  }

  @override
  Future<Response<List<String>>> _apiTelegramStudentsIdGet({
    List<int>? groups,
  }) {
    final Uri $url = Uri.parse('/api/telegram/students/id');
    final Map<String, dynamic> $params = <String, dynamic>{'groups': groups};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<String>, String>($request);
  }

  @override
  Future<Response<Object>> _apiLogsStatusesGet({String? clientName}) {
    final Uri $url = Uri.parse('/api/logs/statuses');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<List<LogModule>>> _apiLogsModulesGet({String? clientName}) {
    final Uri $url = Uri.parse('/api/logs/modules');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<LogModule>, LogModule>($request);
  }

  @override
  Future<Response<List<LogEntity>>> _apiLogsEntitiesGet({String? clientName}) {
    final Uri $url = Uri.parse('/api/logs/entities');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<LogEntity>, LogEntity>($request);
  }

  @override
  Future<Response<List<LogAction>>> _apiLogsActionsGet({String? clientName}) {
    final Uri $url = Uri.parse('/api/logs/actions');
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<LogAction>, LogAction>($request);
  }

  @override
  Future<Response<PageLog>> _apiLogsGet({
    int? moduleId,
    int? entityId,
    int? actionId,
    int? userId,
    List<dynamic>? status,
    String? startDate,
    String? endDate,
    int? page,
    int? size,
    String? clientName,
  }) {
    final Uri $url = Uri.parse('/api/logs');
    final Map<String, dynamic> $params = <String, dynamic>{
      'module_id': moduleId,
      'entity_id': entityId,
      'action_id': actionId,
      'user_id': userId,
      'status': status,
      'start_date': startDate,
      'end_date': endDate,
      'page': page,
      'size': size,
    };
    final Map<String, String> $headers = {
      if (clientName != null) 'Client_name': clientName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<PageLog, PageLog>($request);
  }
}
