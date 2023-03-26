import 'cube_api.models.swagger.dart';
import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:chopper/chopper.dart' as chopper;
import 'cube_api.enums.swagger.dart' as enums;
export 'cube_api.enums.swagger.dart';
export 'cube_api.models.swagger.dart';

part 'cube_api.swagger.chopper.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class CubeApi extends ChopperService {
  static CubeApi create({
    ChopperClient? client,
    Authenticator? authenticator,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$CubeApi(client);
    }

    final newClient = ChopperClient(
        services: [_$CubeApi()],
        converter: $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$CubeApi(newClient);
  }

  ///Login
  Future<chopper.Response<AccessToken>> apiAuthLoginPost(
      {required BodyLoginApiAuthLoginPost? body}) {
    generatedMapping.putIfAbsent(
        AccessToken, () => AccessToken.fromJsonFactory);

    return _apiAuthLoginPost(body: body);
  }

  ///Login
  @Post(
    path: '/api/auth/login',
    optionalBody: true,
  )
  Future<chopper.Response<AccessToken>> _apiAuthLoginPost(
      {@Body() required BodyLoginApiAuthLoginPost? body});

  ///Logout
  Future<chopper.Response<Status>> apiAuthLogoutPost() {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiAuthLogoutPost();
  }

  ///Logout
  @Post(
    path: '/api/auth/logout',
    optionalBody: true,
  )
  Future<chopper.Response<Status>> _apiAuthLogoutPost();

  ///Update Me First Password
  ///@param Client_name
  Future<chopper.Response<Status>> apiAuthFirstPasswordPost({
    String? clientName,
    required UserPassword? body,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiAuthFirstPasswordPost(clientName: clientName, body: body);
  }

  ///Update Me First Password
  ///@param Client_name
  @Post(
    path: '/api/auth/first_password',
    optionalBody: true,
  )
  Future<chopper.Response<Status>> _apiAuthFirstPasswordPost({
    @Header('Client_name') String? clientName,
    @Body() required UserPassword? body,
  });

  ///Update Access Token
  Future<chopper.Response<AccessToken>> apiAuthTokenGet() {
    generatedMapping.putIfAbsent(
        AccessToken, () => AccessToken.fromJsonFactory);

    return _apiAuthTokenGet();
  }

  ///Update Access Token
  @Get(path: '/api/auth/token')
  Future<chopper.Response<AccessToken>> _apiAuthTokenGet();

  ///Ping
  Future<chopper.Response> apiPingGet() {
    return _apiPingGet();
  }

  ///Ping
  @Get(path: '/api/ping')
  Future<chopper.Response> _apiPingGet();

  ///Get Person Types
  Future<chopper.Response<Object>> apiPersonsTypesGet() {
    return _apiPersonsTypesGet();
  }

  ///Get Person Types
  @Get(path: '/api/persons/types')
  Future<chopper.Response<Object>> _apiPersonsTypesGet();

  ///Get Persons
  ///@param search Значение для поиска
  ///@param students Получить студентов
  ///@param teachers Получить преподавателей
  ///@param Client_name
  Future<chopper.Response<List<PersonInDb>>> apiPersonsGet({
    String? search,
    bool? students,
    bool? teachers,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(PersonInDb, () => PersonInDb.fromJsonFactory);

    return _apiPersonsGet(
        search: search,
        students: students,
        teachers: teachers,
        clientName: clientName);
  }

  ///Get Persons
  ///@param search Значение для поиска
  ///@param students Получить студентов
  ///@param teachers Получить преподавателей
  ///@param Client_name
  @Get(path: '/api/persons')
  Future<chopper.Response<List<PersonInDb>>> _apiPersonsGet({
    @Query('search') String? search,
    @Query('students') bool? students,
    @Query('teachers') bool? teachers,
    @Header('Client_name') String? clientName,
  });

  ///Get Permissions
  ///@param Client_name
  Future<chopper.Response<Object>> apiRolesPermissionsGet(
      {String? clientName}) {
    return _apiRolesPermissionsGet(clientName: clientName);
  }

  ///Get Permissions
  ///@param Client_name
  @Get(path: '/api/roles/permissions')
  Future<chopper.Response<Object>> _apiRolesPermissionsGet(
      {@Header('Client_name') String? clientName});

  ///Get Roles
  ///@param name Название роли
  ///@param Client_name
  Future<chopper.Response<List<RoleInDb>>> apiRolesGet({
    String? name,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(RoleInDb, () => RoleInDb.fromJsonFactory);

    return _apiRolesGet(name: name, clientName: clientName);
  }

  ///Get Roles
  ///@param name Название роли
  ///@param Client_name
  @Get(path: '/api/roles')
  Future<chopper.Response<List<RoleInDb>>> _apiRolesGet({
    @Query('name') String? name,
    @Header('Client_name') String? clientName,
  });

  ///Create Role
  ///@param Client_name
  Future<chopper.Response<int>> apiRolesPost({
    String? clientName,
    required RoleCreate? body,
  }) {
    return _apiRolesPost(clientName: clientName, body: body);
  }

  ///Create Role
  ///@param Client_name
  @Post(
    path: '/api/roles',
    optionalBody: true,
  )
  Future<chopper.Response<int>> _apiRolesPost({
    @Header('Client_name') String? clientName,
    @Body() required RoleCreate? body,
  });

  ///Get Role
  ///@param role_id
  ///@param Client_name
  Future<chopper.Response<RolePermissionsInDb>> apiRolesRoleIdGet({
    required int? roleId,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(
        RolePermissionsInDb, () => RolePermissionsInDb.fromJsonFactory);

    return _apiRolesRoleIdGet(roleId: roleId, clientName: clientName);
  }

  ///Get Role
  ///@param role_id
  ///@param Client_name
  @Get(path: '/api/roles/{role_id}')
  Future<chopper.Response<RolePermissionsInDb>> _apiRolesRoleIdGet({
    @Path('role_id') required int? roleId,
    @Header('Client_name') String? clientName,
  });

  ///Update Role
  ///@param role_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiRolesRoleIdPut({
    required int? roleId,
    String? clientName,
    required RoleUpdate? body,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiRolesRoleIdPut(
        roleId: roleId, clientName: clientName, body: body);
  }

  ///Update Role
  ///@param role_id
  ///@param Client_name
  @Put(
    path: '/api/roles/{role_id}',
    optionalBody: true,
  )
  Future<chopper.Response<Status>> _apiRolesRoleIdPut({
    @Path('role_id') required int? roleId,
    @Header('Client_name') String? clientName,
    @Body() required RoleUpdate? body,
  });

  ///Delete Role
  ///@param role_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiRolesRoleIdDelete({
    required int? roleId,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiRolesRoleIdDelete(roleId: roleId, clientName: clientName);
  }

  ///Delete Role
  ///@param role_id
  ///@param Client_name
  @Delete(path: '/api/roles/{role_id}')
  Future<chopper.Response<Status>> _apiRolesRoleIdDelete({
    @Path('role_id') required int? roleId,
    @Header('Client_name') String? clientName,
  });

  ///Get Users Faculties Forbidden
  ///@param Client_name
  Future<chopper.Response<List<UserFacultyForbiddenInDb>>>
      apiOtherPermissionGet({String? clientName}) {
    generatedMapping.putIfAbsent(UserFacultyForbiddenInDb,
        () => UserFacultyForbiddenInDb.fromJsonFactory);

    return _apiOtherPermissionGet(clientName: clientName);
  }

  ///Get Users Faculties Forbidden
  ///@param Client_name
  @Get(path: '/api/other_permission')
  Future<chopper.Response<List<UserFacultyForbiddenInDb>>>
      _apiOtherPermissionGet({@Header('Client_name') String? clientName});

  ///Create User Faculty Forbidden
  ///@param Client_name
  Future<chopper.Response<Status>> apiOtherPermissionPost({
    String? clientName,
    required UserFacultyForbiddenCreate? body,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiOtherPermissionPost(clientName: clientName, body: body);
  }

  ///Create User Faculty Forbidden
  ///@param Client_name
  @Post(
    path: '/api/other_permission',
    optionalBody: true,
  )
  Future<chopper.Response<Status>> _apiOtherPermissionPost({
    @Header('Client_name') String? clientName,
    @Body() required UserFacultyForbiddenCreate? body,
  });

  ///Update Users Faculties Forbidden
  ///@param faculty_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiOtherPermissionFacultyIdPut({
    required int? facultyId,
    String? clientName,
    required UserFacultyForbiddenUpdate? body,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiOtherPermissionFacultyIdPut(
        facultyId: facultyId, clientName: clientName, body: body);
  }

  ///Update Users Faculties Forbidden
  ///@param faculty_id
  ///@param Client_name
  @Put(
    path: '/api/other_permission/{faculty_id}',
    optionalBody: true,
  )
  Future<chopper.Response<Status>> _apiOtherPermissionFacultyIdPut({
    @Path('faculty_id') required int? facultyId,
    @Header('Client_name') String? clientName,
    @Body() required UserFacultyForbiddenUpdate? body,
  });

  ///Get Users Settings
  ///@param Client_name
  Future<chopper.Response<Object>> apiUsersSettingsGet({String? clientName}) {
    return _apiUsersSettingsGet(clientName: clientName);
  }

  ///Get Users Settings
  ///@param Client_name
  @Get(path: '/api/users/settings')
  Future<chopper.Response<Object>> _apiUsersSettingsGet(
      {@Header('Client_name') String? clientName});

  ///Update Users Settings
  ///@param Client_name
  Future<chopper.Response<Status>> apiUsersSettingsPut({
    String? clientName,
    required UsersSettings? body,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiUsersSettingsPut(clientName: clientName, body: body);
  }

  ///Update Users Settings
  ///@param Client_name
  @Put(
    path: '/api/users/settings',
    optionalBody: true,
  )
  Future<chopper.Response<Status>> _apiUsersSettingsPut({
    @Header('Client_name') String? clientName,
    @Body() required UsersSettings? body,
  });

  ///Get Users
  ///@param search Значение для поиска
  ///@param role_ids Список идентификаторов ролей пользователя
  ///@param sort_by Сортируемый столбец
  ///@param sort_order Параметр сортировки
  ///@param page
  ///@param size
  ///@param Client_name
  Future<chopper.Response<PageUserFullInDb>> apiUsersGet({
    String? search,
    List<int>? roleIds,
    UserSortBy? sortBy,
    SortOrder? sortOrder,
    int? page,
    int? size,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(
        PageUserFullInDb, () => PageUserFullInDb.fromJsonFactory);

    return _apiUsersGet(
        search: search,
        roleIds: roleIds,
        sortBy: sortBy,
        sortOrder: sortOrder,
        page: page,
        size: size,
        clientName: clientName);
  }

  ///Get Users
  ///@param search Значение для поиска
  ///@param role_ids Список идентификаторов ролей пользователя
  ///@param sort_by Сортируемый столбец
  ///@param sort_order Параметр сортировки
  ///@param page
  ///@param size
  ///@param Client_name
  @Get(path: '/api/users')
  Future<chopper.Response<PageUserFullInDb>> _apiUsersGet({
    @Query('search') String? search,
    @Query('role_ids') List<int>? roleIds,
    @Query('sort_by') UserSortBy? sortBy,
    @Query('sort_order') SortOrder? sortOrder,
    @Query('page') int? page,
    @Query('size') int? size,
    @Header('Client_name') String? clientName,
  });

  ///Create User
  ///@param Client_name
  Future<chopper.Response<int>> apiUsersPost({
    String? clientName,
    required UserCreate? body,
  }) {
    return _apiUsersPost(clientName: clientName, body: body);
  }

  ///Create User
  ///@param Client_name
  @Post(
    path: '/api/users',
    optionalBody: true,
  )
  Future<chopper.Response<int>> _apiUsersPost({
    @Header('Client_name') String? clientName,
    @Body() required UserCreate? body,
  });

  ///Create User From Person
  ///@param Client_name
  Future<chopper.Response<int>> apiUsersFromPersonPost({
    String? clientName,
    required UserCreateFromPerson? body,
  }) {
    return _apiUsersFromPersonPost(clientName: clientName, body: body);
  }

  ///Create User From Person
  ///@param Client_name
  @Post(
    path: '/api/users/from_person',
    optionalBody: true,
  )
  Future<chopper.Response<int>> _apiUsersFromPersonPost({
    @Header('Client_name') String? clientName,
    @Body() required UserCreateFromPerson? body,
  });

  ///Get User Permissions
  ///@param user_id
  ///@param Client_name
  Future<chopper.Response<UserPermissionBase>> apiUsersUserIdPermissionsGet({
    required int? userId,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(
        UserPermissionBase, () => UserPermissionBase.fromJsonFactory);

    return _apiUsersUserIdPermissionsGet(
        userId: userId, clientName: clientName);
  }

  ///Get User Permissions
  ///@param user_id
  ///@param Client_name
  @Get(path: '/api/users/{user_id}/permissions')
  Future<chopper.Response<UserPermissionBase>> _apiUsersUserIdPermissionsGet({
    @Path('user_id') required int? userId,
    @Header('Client_name') String? clientName,
  });

  ///Update User Permission
  ///@param user_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiUsersUserIdPermissionsPut({
    required int? userId,
    String? clientName,
    required UserPermissionUpdate? body,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiUsersUserIdPermissionsPut(
        userId: userId, clientName: clientName, body: body);
  }

  ///Update User Permission
  ///@param user_id
  ///@param Client_name
  @Put(
    path: '/api/users/{user_id}/permissions',
    optionalBody: true,
  )
  Future<chopper.Response<Status>> _apiUsersUserIdPermissionsPut({
    @Path('user_id') required int? userId,
    @Header('Client_name') String? clientName,
    @Body() required UserPermissionUpdate? body,
  });

  ///Create User Permission
  ///@param user_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiUsersUserIdPermissionsPost({
    required int? userId,
    String? clientName,
    required UserPermissionCreate? body,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiUsersUserIdPermissionsPost(
        userId: userId, clientName: clientName, body: body);
  }

  ///Create User Permission
  ///@param user_id
  ///@param Client_name
  @Post(
    path: '/api/users/{user_id}/permissions',
    optionalBody: true,
  )
  Future<chopper.Response<Status>> _apiUsersUserIdPermissionsPost({
    @Path('user_id') required int? userId,
    @Header('Client_name') String? clientName,
    @Body() required UserPermissionCreate? body,
  });

  ///Delete User Permission
  ///@param user_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiUsersUserIdPermissionsDelete({
    required int? userId,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiUsersUserIdPermissionsDelete(
        userId: userId, clientName: clientName);
  }

  ///Delete User Permission
  ///@param user_id
  ///@param Client_name
  @Delete(path: '/api/users/{user_id}/permissions')
  Future<chopper.Response<Status>> _apiUsersUserIdPermissionsDelete({
    @Path('user_id') required int? userId,
    @Header('Client_name') String? clientName,
  });

  ///Get User Me
  ///@param Client_name
  Future<chopper.Response<UserMeInDb>> apiUsersMeGet({String? clientName}) {
    generatedMapping.putIfAbsent(UserMeInDb, () => UserMeInDb.fromJsonFactory);

    return _apiUsersMeGet(clientName: clientName);
  }

  ///Get User Me
  ///@param Client_name
  @Get(path: '/api/users/me')
  Future<chopper.Response<UserMeInDb>> _apiUsersMeGet(
      {@Header('Client_name') String? clientName});

  ///Get Users Teachers
  Future<chopper.Response<List<UserShortTelegram>>> apiUsersTeachersGet() {
    generatedMapping.putIfAbsent(
        UserShortTelegram, () => UserShortTelegram.fromJsonFactory);

    return _apiUsersTeachersGet();
  }

  ///Get Users Teachers
  @Get(path: '/api/users/teachers')
  Future<chopper.Response<List<UserShortTelegram>>> _apiUsersTeachersGet();

  ///Get Users Main Students
  ///@param groups Список идентификаторов групп
  Future<chopper.Response<List<UserShortTelegram>>> apiUsersMainStudentsGet(
      {List<int>? groups}) {
    generatedMapping.putIfAbsent(
        UserShortTelegram, () => UserShortTelegram.fromJsonFactory);

    return _apiUsersMainStudentsGet(groups: groups);
  }

  ///Get Users Main Students
  ///@param groups Список идентификаторов групп
  @Get(path: '/api/users/main_students')
  Future<chopper.Response<List<UserShortTelegram>>> _apiUsersMainStudentsGet(
      {@Query('groups') List<int>? groups});

  ///Get Users Persons
  ///@param search Значение для поиска
  ///@param Client_name
  Future<chopper.Response<List<AppSchemasUserUserFullNameInDb>>>
      apiUsersPersonsGet({
    String? search,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(AppSchemasUserUserFullNameInDb,
        () => AppSchemasUserUserFullNameInDb.fromJsonFactory);

    return _apiUsersPersonsGet(search: search, clientName: clientName);
  }

  ///Get Users Persons
  ///@param search Значение для поиска
  ///@param Client_name
  @Get(path: '/api/users/persons')
  Future<chopper.Response<List<AppSchemasUserUserFullNameInDb>>>
      _apiUsersPersonsGet({
    @Query('search') String? search,
    @Header('Client_name') String? clientName,
  });

  ///Get User
  ///@param user_id
  ///@param Client_name
  Future<chopper.Response<UserFullWithStatisticInDb>> apiUsersUserIdGet({
    required int? userId,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(UserFullWithStatisticInDb,
        () => UserFullWithStatisticInDb.fromJsonFactory);

    return _apiUsersUserIdGet(userId: userId, clientName: clientName);
  }

  ///Get User
  ///@param user_id
  ///@param Client_name
  @Get(path: '/api/users/{user_id}')
  Future<chopper.Response<UserFullWithStatisticInDb>> _apiUsersUserIdGet({
    @Path('user_id') required int? userId,
    @Header('Client_name') String? clientName,
  });

  ///Update User
  ///@param user_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiUsersUserIdPut({
    required int? userId,
    String? clientName,
    required UserUpdate? body,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiUsersUserIdPut(
        userId: userId, clientName: clientName, body: body);
  }

  ///Update User
  ///@param user_id
  ///@param Client_name
  @Put(
    path: '/api/users/{user_id}',
    optionalBody: true,
  )
  Future<chopper.Response<Status>> _apiUsersUserIdPut({
    @Path('user_id') required int? userId,
    @Header('Client_name') String? clientName,
    @Body() required UserUpdate? body,
  });

  ///Delete User
  ///@param user_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiUsersUserIdDelete({
    required int? userId,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiUsersUserIdDelete(userId: userId, clientName: clientName);
  }

  ///Delete User
  ///@param user_id
  ///@param Client_name
  @Delete(path: '/api/users/{user_id}')
  Future<chopper.Response<Status>> _apiUsersUserIdDelete({
    @Path('user_id') required int? userId,
    @Header('Client_name') String? clientName,
  });

  ///Update Me Password
  ///@param Client_name
  Future<chopper.Response<Status>> apiUsersMePasswordPost({
    String? clientName,
    required UserChangePassword? body,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiUsersMePasswordPost(clientName: clientName, body: body);
  }

  ///Update Me Password
  ///@param Client_name
  @Post(
    path: '/api/users/me/password',
    optionalBody: true,
  )
  Future<chopper.Response<Status>> _apiUsersMePasswordPost({
    @Header('Client_name') String? clientName,
    @Body() required UserChangePassword? body,
  });

  ///Update User Password
  ///@param user_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiUsersUserIdPasswordPut({
    required int? userId,
    String? clientName,
    required UserChangePassword? body,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiUsersUserIdPasswordPut(
        userId: userId, clientName: clientName, body: body);
  }

  ///Update User Password
  ///@param user_id
  ///@param Client_name
  @Put(
    path: '/api/users/{user_id}/password',
    optionalBody: true,
  )
  Future<chopper.Response<Status>> _apiUsersUserIdPasswordPut({
    @Path('user_id') required int? userId,
    @Header('Client_name') String? clientName,
    @Body() required UserChangePassword? body,
  });

  ///Add Telegram Without Auth
  ///@param telegram_id
  Future<chopper.Response<Status>> apiBotGuestPost(
      {required String? telegramId}) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiBotGuestPost(telegramId: telegramId);
  }

  ///Add Telegram Without Auth
  ///@param telegram_id
  @Post(
    path: '/api/bot/guest',
    optionalBody: true,
  )
  Future<chopper.Response<Status>> _apiBotGuestPost(
      {@Query('telegram_id') required String? telegramId});

  ///Add Telegram
  ///@param telegram_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiBotUserPost({
    required String? telegramId,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiBotUserPost(telegramId: telegramId, clientName: clientName);
  }

  ///Add Telegram
  ///@param telegram_id
  ///@param Client_name
  @Post(
    path: '/api/bot/user',
    optionalBody: true,
  )
  Future<chopper.Response<Status>> _apiBotUserPost({
    @Query('telegram_id') required String? telegramId,
    @Header('Client_name') String? clientName,
  });

  ///Delete Telegram
  ///@param Client_name
  Future<chopper.Response<Status>> apiBotUserDelete({String? clientName}) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiBotUserDelete(clientName: clientName);
  }

  ///Delete Telegram
  ///@param Client_name
  @Delete(path: '/api/bot/user')
  Future<chopper.Response<Status>> _apiBotUserDelete(
      {@Header('Client_name') String? clientName});

  ///Get Settings
  ///@param Client_name
  Future<chopper.Response<Telegram>> apiBotSettingsGet({String? clientName}) {
    generatedMapping.putIfAbsent(Telegram, () => Telegram.fromJsonFactory);

    return _apiBotSettingsGet(clientName: clientName);
  }

  ///Get Settings
  ///@param Client_name
  @Get(path: '/api/bot/settings')
  Future<chopper.Response<Telegram>> _apiBotSettingsGet(
      {@Header('Client_name') String? clientName});

  ///Get Notification Times
  Future<chopper.Response<Object>> apiBotNotificationTimesGet() {
    return _apiBotNotificationTimesGet();
  }

  ///Get Notification Times
  @Get(path: '/api/bot/notification_times')
  Future<chopper.Response<Object>> _apiBotNotificationTimesGet();

  ///Get Telegram Id
  ///@param user_id
  Future<chopper.Response<TelegramId>> apiBotUserIdGet({required int? userId}) {
    generatedMapping.putIfAbsent(TelegramId, () => TelegramId.fromJsonFactory);

    return _apiBotUserIdGet(userId: userId);
  }

  ///Get Telegram Id
  ///@param user_id
  @Get(path: '/api/bot/{user_id}')
  Future<chopper.Response<TelegramId>> _apiBotUserIdGet(
      {@Path('user_id') required int? userId});

  ///Update Timetable Settings
  ///@param Client_name
  Future<chopper.Response> apiBotTimetableSettingsPut({
    String? clientName,
    required TimetableSettingsUpdate? body,
  }) {
    return _apiBotTimetableSettingsPut(clientName: clientName, body: body);
  }

  ///Update Timetable Settings
  ///@param Client_name
  @Put(
    path: '/api/bot/timetable_settings',
    optionalBody: true,
  )
  Future<chopper.Response> _apiBotTimetableSettingsPut({
    @Header('Client_name') String? clientName,
    @Body() required TimetableSettingsUpdate? body,
  });

  ///Update Session Settings
  ///@param Client_name
  Future<chopper.Response> apiBotSessionSettingsPut({
    String? clientName,
    required SessionSettingsUpdate? body,
  }) {
    return _apiBotSessionSettingsPut(clientName: clientName, body: body);
  }

  ///Update Session Settings
  ///@param Client_name
  @Put(
    path: '/api/bot/session_settings',
    optionalBody: true,
  )
  Future<chopper.Response> _apiBotSessionSettingsPut({
    @Header('Client_name') String? clientName,
    @Body() required SessionSettingsUpdate? body,
  });

  ///Update Attendance Settings
  ///@param Client_name
  Future<chopper.Response> apiBotAttendanceSettingsPut({
    String? clientName,
    required AttendanceSettingsUpdate? body,
  }) {
    return _apiBotAttendanceSettingsPut(clientName: clientName, body: body);
  }

  ///Update Attendance Settings
  ///@param Client_name
  @Put(
    path: '/api/bot/attendance_settings',
    optionalBody: true,
  )
  Future<chopper.Response> _apiBotAttendanceSettingsPut({
    @Header('Client_name') String? clientName,
    @Body() required AttendanceSettingsUpdate? body,
  });

  ///Update Weather Settings
  ///@param Client_name
  Future<chopper.Response> apiBotWeatherSettingsPut({
    String? clientName,
    required WeatherSettingsUpdate? body,
  }) {
    return _apiBotWeatherSettingsPut(clientName: clientName, body: body);
  }

  ///Update Weather Settings
  ///@param Client_name
  @Put(
    path: '/api/bot/weather_settings',
    optionalBody: true,
  )
  Future<chopper.Response> _apiBotWeatherSettingsPut({
    @Header('Client_name') String? clientName,
    @Body() required WeatherSettingsUpdate? body,
  });

  ///Update Hourly Report Settings
  ///@param Client_name
  Future<chopper.Response> apiBotHourlyReportSettingsPut({
    String? clientName,
    required HourlyReportSettingsUpdate? body,
  }) {
    return _apiBotHourlyReportSettingsPut(clientName: clientName, body: body);
  }

  ///Update Hourly Report Settings
  ///@param Client_name
  @Put(
    path: '/api/bot/hourly_report_settings',
    optionalBody: true,
  )
  Future<chopper.Response> _apiBotHourlyReportSettingsPut({
    @Header('Client_name') String? clientName,
    @Body() required HourlyReportSettingsUpdate? body,
  });

  ///Get Bells
  Future<chopper.Response<List<BellInDb>>> apiBellsGet() {
    generatedMapping.putIfAbsent(BellInDb, () => BellInDb.fromJsonFactory);

    return _apiBellsGet();
  }

  ///Get Bells
  @Get(path: '/api/bells')
  Future<chopper.Response<List<BellInDb>>> _apiBellsGet();

  ///Create Bell
  ///@param Client_name
  Future<chopper.Response<int>> apiBellsPost({
    String? clientName,
    required BellCreate? body,
  }) {
    return _apiBellsPost(clientName: clientName, body: body);
  }

  ///Create Bell
  ///@param Client_name
  @Post(
    path: '/api/bells',
    optionalBody: true,
  )
  Future<chopper.Response<int>> _apiBellsPost({
    @Header('Client_name') String? clientName,
    @Body() required BellCreate? body,
  });

  ///Get Bell
  ///@param bell_id
  Future<chopper.Response<BellInDb>> apiBellsBellIdGet({required int? bellId}) {
    generatedMapping.putIfAbsent(BellInDb, () => BellInDb.fromJsonFactory);

    return _apiBellsBellIdGet(bellId: bellId);
  }

  ///Get Bell
  ///@param bell_id
  @Get(path: '/api/bells/{bell_id}')
  Future<chopper.Response<BellInDb>> _apiBellsBellIdGet(
      {@Path('bell_id') required int? bellId});

  ///Update Bell
  ///@param bell_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiBellsBellIdPut({
    required int? bellId,
    String? clientName,
    required BellUpdate? body,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiBellsBellIdPut(
        bellId: bellId, clientName: clientName, body: body);
  }

  ///Update Bell
  ///@param bell_id
  ///@param Client_name
  @Put(
    path: '/api/bells/{bell_id}',
    optionalBody: true,
  )
  Future<chopper.Response<Status>> _apiBellsBellIdPut({
    @Path('bell_id') required int? bellId,
    @Header('Client_name') String? clientName,
    @Body() required BellUpdate? body,
  });

  ///Delete Bell
  ///@param bell_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiBellsBellIdDelete({
    required int? bellId,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiBellsBellIdDelete(bellId: bellId, clientName: clientName);
  }

  ///Delete Bell
  ///@param bell_id
  ///@param Client_name
  @Delete(path: '/api/bells/{bell_id}')
  Future<chopper.Response<Status>> _apiBellsBellIdDelete({
    @Path('bell_id') required int? bellId,
    @Header('Client_name') String? clientName,
  });

  ///Import Bells
  ///@param Client_name
  Future<chopper.Response<List<BellInDb>>> apiBellsImportPost({
    String? clientName,
    required BodyImportBellsApiBellsImportPost body,
  }) {
    generatedMapping.putIfAbsent(BellInDb, () => BellInDb.fromJsonFactory);

    return _apiBellsImportPost(clientName: clientName, body: body);
  }

  ///Import Bells
  ///@param Client_name
  @Post(
    path: '/api/bells/import',
    optionalBody: true,
  )
  Future<chopper.Response<List<BellInDb>>> _apiBellsImportPost({
    @Header('Client_name') String? clientName,
    @Part() required BodyImportBellsApiBellsImportPost body,
  });

  ///Get Faculties
  ///@param search Значение для поиска
  ///@param name Название факультета
  Future<chopper.Response<List<FacultyInDb>>> apiFacultiesGet({
    String? search,
    String? name,
  }) {
    generatedMapping.putIfAbsent(
        FacultyInDb, () => FacultyInDb.fromJsonFactory);

    return _apiFacultiesGet(search: search, name: name);
  }

  ///Get Faculties
  ///@param search Значение для поиска
  ///@param name Название факультета
  @Get(path: '/api/faculties')
  Future<chopper.Response<List<FacultyInDb>>> _apiFacultiesGet({
    @Query('search') String? search,
    @Query('name') String? name,
  });

  ///Create Faculty
  ///@param Client_name
  Future<chopper.Response<int>> apiFacultiesPost({
    String? clientName,
    required FacultyCreate? body,
  }) {
    return _apiFacultiesPost(clientName: clientName, body: body);
  }

  ///Create Faculty
  ///@param Client_name
  @Post(
    path: '/api/faculties',
    optionalBody: true,
  )
  Future<chopper.Response<int>> _apiFacultiesPost({
    @Header('Client_name') String? clientName,
    @Body() required FacultyCreate? body,
  });

  ///Get Faculty Groups
  ///@param faculty_id
  ///@param discipline_id
  ///@param teacher_id
  ///@param lesson_type_id
  Future<chopper.Response<List<int>>> apiFacultiesFacultyIdGroupsIdsGet({
    required int? facultyId,
    int? disciplineId,
    int? teacherId,
    int? lessonTypeId,
  }) {
    return _apiFacultiesFacultyIdGroupsIdsGet(
        facultyId: facultyId,
        disciplineId: disciplineId,
        teacherId: teacherId,
        lessonTypeId: lessonTypeId);
  }

  ///Get Faculty Groups
  ///@param faculty_id
  ///@param discipline_id
  ///@param teacher_id
  ///@param lesson_type_id
  @Get(path: '/api/faculties/{faculty_id}/groups_ids')
  Future<chopper.Response<List<int>>> _apiFacultiesFacultyIdGroupsIdsGet({
    @Path('faculty_id') required int? facultyId,
    @Query('discipline_id') int? disciplineId,
    @Query('teacher_id') int? teacherId,
    @Query('lesson_type_id') int? lessonTypeId,
  });

  ///Get Faculty
  ///@param faculty_id
  Future<chopper.Response<FacultyInDb>> apiFacultiesFacultyIdGet(
      {required int? facultyId}) {
    generatedMapping.putIfAbsent(
        FacultyInDb, () => FacultyInDb.fromJsonFactory);

    return _apiFacultiesFacultyIdGet(facultyId: facultyId);
  }

  ///Get Faculty
  ///@param faculty_id
  @Get(path: '/api/faculties/{faculty_id}')
  Future<chopper.Response<FacultyInDb>> _apiFacultiesFacultyIdGet(
      {@Path('faculty_id') required int? facultyId});

  ///Update Faculty
  ///@param faculty_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiFacultiesFacultyIdPut({
    required int? facultyId,
    String? clientName,
    required FacultyUpdate? body,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiFacultiesFacultyIdPut(
        facultyId: facultyId, clientName: clientName, body: body);
  }

  ///Update Faculty
  ///@param faculty_id
  ///@param Client_name
  @Put(
    path: '/api/faculties/{faculty_id}',
    optionalBody: true,
  )
  Future<chopper.Response<Status>> _apiFacultiesFacultyIdPut({
    @Path('faculty_id') required int? facultyId,
    @Header('Client_name') String? clientName,
    @Body() required FacultyUpdate? body,
  });

  ///Delete Faculty
  ///@param faculty_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiFacultiesFacultyIdDelete({
    required int? facultyId,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiFacultiesFacultyIdDelete(
        facultyId: facultyId, clientName: clientName);
  }

  ///Delete Faculty
  ///@param faculty_id
  ///@param Client_name
  @Delete(path: '/api/faculties/{faculty_id}')
  Future<chopper.Response<Status>> _apiFacultiesFacultyIdDelete({
    @Path('faculty_id') required int? facultyId,
    @Header('Client_name') String? clientName,
  });

  ///Import Faculties
  ///@param Client_name
  Future<chopper.Response<List<FacultyInDb>>> apiFacultiesImportPost({
    String? clientName,
    required BodyImportFacultiesApiFacultiesImportPost body,
  }) {
    generatedMapping.putIfAbsent(
        FacultyInDb, () => FacultyInDb.fromJsonFactory);

    return _apiFacultiesImportPost(clientName: clientName, body: body);
  }

  ///Import Faculties
  ///@param Client_name
  @Post(
    path: '/api/faculties/import',
    optionalBody: true,
  )
  Future<chopper.Response<List<FacultyInDb>>> _apiFacultiesImportPost({
    @Header('Client_name') String? clientName,
    @Part() required BodyImportFacultiesApiFacultiesImportPost body,
  });

  ///Get Directions
  ///@param search Значение для поиска
  ///@param faculty_id Идентификатор факультета
  ///@param name Название направления
  ///@param cipher Шифр
  ///@param degree_study Список академических степеней
  Future<chopper.Response<List<DirectionInDb>>> apiDirectionsGet({
    String? search,
    int? facultyId,
    String? name,
    String? cipher,
    List<enums.DegreeStudy>? degreeStudy,
  }) {
    generatedMapping.putIfAbsent(
        DirectionInDb, () => DirectionInDb.fromJsonFactory);

    return _apiDirectionsGet(
        search: search,
        facultyId: facultyId,
        name: name,
        cipher: cipher,
        degreeStudy: degreeStudyListToJson(degreeStudy));
  }

  ///Get Directions
  ///@param search Значение для поиска
  ///@param faculty_id Идентификатор факультета
  ///@param name Название направления
  ///@param cipher Шифр
  ///@param degree_study Список академических степеней
  @Get(path: '/api/directions')
  Future<chopper.Response<List<DirectionInDb>>> _apiDirectionsGet({
    @Query('search') String? search,
    @Query('faculty_id') int? facultyId,
    @Query('name') String? name,
    @Query('cipher') String? cipher,
    @Query('degree_study') List<String?>? degreeStudy,
  });

  ///Create Direction
  ///@param Client_name
  Future<chopper.Response<int>> apiDirectionsPost({
    String? clientName,
    required DirectionCreate? body,
  }) {
    return _apiDirectionsPost(clientName: clientName, body: body);
  }

  ///Create Direction
  ///@param Client_name
  @Post(
    path: '/api/directions',
    optionalBody: true,
  )
  Future<chopper.Response<int>> _apiDirectionsPost({
    @Header('Client_name') String? clientName,
    @Body() required DirectionCreate? body,
  });

  ///Get Direction
  ///@param direction_id
  Future<chopper.Response<DirectionInDb>> apiDirectionsDirectionIdGet(
      {required int? directionId}) {
    generatedMapping.putIfAbsent(
        DirectionInDb, () => DirectionInDb.fromJsonFactory);

    return _apiDirectionsDirectionIdGet(directionId: directionId);
  }

  ///Get Direction
  ///@param direction_id
  @Get(path: '/api/directions/{direction_id}')
  Future<chopper.Response<DirectionInDb>> _apiDirectionsDirectionIdGet(
      {@Path('direction_id') required int? directionId});

  ///Update Direction
  ///@param direction_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiDirectionsDirectionIdPut({
    required int? directionId,
    String? clientName,
    required DirectionUpdate? body,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiDirectionsDirectionIdPut(
        directionId: directionId, clientName: clientName, body: body);
  }

  ///Update Direction
  ///@param direction_id
  ///@param Client_name
  @Put(
    path: '/api/directions/{direction_id}',
    optionalBody: true,
  )
  Future<chopper.Response<Status>> _apiDirectionsDirectionIdPut({
    @Path('direction_id') required int? directionId,
    @Header('Client_name') String? clientName,
    @Body() required DirectionUpdate? body,
  });

  ///Delete Direction
  ///@param direction_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiDirectionsDirectionIdDelete({
    required int? directionId,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiDirectionsDirectionIdDelete(
        directionId: directionId, clientName: clientName);
  }

  ///Delete Direction
  ///@param direction_id
  ///@param Client_name
  @Delete(path: '/api/directions/{direction_id}')
  Future<chopper.Response<Status>> _apiDirectionsDirectionIdDelete({
    @Path('direction_id') required int? directionId,
    @Header('Client_name') String? clientName,
  });

  ///Import Directions
  ///@param Client_name
  Future<chopper.Response<List<DirectionInDb>>> apiDirectionsImportPost({
    String? clientName,
    required BodyImportDirectionsApiDirectionsImportPost body,
  }) {
    generatedMapping.putIfAbsent(
        DirectionInDb, () => DirectionInDb.fromJsonFactory);

    return _apiDirectionsImportPost(clientName: clientName, body: body);
  }

  ///Import Directions
  ///@param Client_name
  @Post(
    path: '/api/directions/import',
    optionalBody: true,
  )
  Future<chopper.Response<List<DirectionInDb>>> _apiDirectionsImportPost({
    @Header('Client_name') String? clientName,
    @Part() required BodyImportDirectionsApiDirectionsImportPost body,
  });

  ///Get Profiles
  ///@param search Значение для поиска
  ///@param directions Список идентификаторов направлений
  Future<chopper.Response<List<ProfileInDb>>> apiProfilesGet({
    String? search,
    List<int>? directions,
  }) {
    generatedMapping.putIfAbsent(
        ProfileInDb, () => ProfileInDb.fromJsonFactory);

    return _apiProfilesGet(search: search, directions: directions);
  }

  ///Get Profiles
  ///@param search Значение для поиска
  ///@param directions Список идентификаторов направлений
  @Get(path: '/api/profiles')
  Future<chopper.Response<List<ProfileInDb>>> _apiProfilesGet({
    @Query('search') String? search,
    @Query('directions') List<int>? directions,
  });

  ///Create Profile
  ///@param Client_name
  Future<chopper.Response<int>> apiProfilesPost({
    String? clientName,
    required ProfileCreate? body,
  }) {
    return _apiProfilesPost(clientName: clientName, body: body);
  }

  ///Create Profile
  ///@param Client_name
  @Post(
    path: '/api/profiles',
    optionalBody: true,
  )
  Future<chopper.Response<int>> _apiProfilesPost({
    @Header('Client_name') String? clientName,
    @Body() required ProfileCreate? body,
  });

  ///Get Profile
  ///@param profile_id
  Future<chopper.Response<ProfileInDb>> apiProfilesProfileIdGet(
      {required int? profileId}) {
    generatedMapping.putIfAbsent(
        ProfileInDb, () => ProfileInDb.fromJsonFactory);

    return _apiProfilesProfileIdGet(profileId: profileId);
  }

  ///Get Profile
  ///@param profile_id
  @Get(path: '/api/profiles/{profile_id}')
  Future<chopper.Response<ProfileInDb>> _apiProfilesProfileIdGet(
      {@Path('profile_id') required int? profileId});

  ///Update Profile
  ///@param profile_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiProfilesProfileIdPut({
    required int? profileId,
    String? clientName,
    required ProfileUpdate? body,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiProfilesProfileIdPut(
        profileId: profileId, clientName: clientName, body: body);
  }

  ///Update Profile
  ///@param profile_id
  ///@param Client_name
  @Put(
    path: '/api/profiles/{profile_id}',
    optionalBody: true,
  )
  Future<chopper.Response<Status>> _apiProfilesProfileIdPut({
    @Path('profile_id') required int? profileId,
    @Header('Client_name') String? clientName,
    @Body() required ProfileUpdate? body,
  });

  ///Delete Profile
  ///@param profile_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiProfilesProfileIdDelete({
    required int? profileId,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiProfilesProfileIdDelete(
        profileId: profileId, clientName: clientName);
  }

  ///Delete Profile
  ///@param profile_id
  ///@param Client_name
  @Delete(path: '/api/profiles/{profile_id}')
  Future<chopper.Response<Status>> _apiProfilesProfileIdDelete({
    @Path('profile_id') required int? profileId,
    @Header('Client_name') String? clientName,
  });

  ///Import Profiles
  ///@param Client_name
  Future<chopper.Response<List<ProfileInDb>>> apiProfilesImportPost({
    String? clientName,
    required BodyImportProfilesApiProfilesImportPost body,
  }) {
    generatedMapping.putIfAbsent(
        ProfileInDb, () => ProfileInDb.fromJsonFactory);

    return _apiProfilesImportPost(clientName: clientName, body: body);
  }

  ///Import Profiles
  ///@param Client_name
  @Post(
    path: '/api/profiles/import',
    optionalBody: true,
  )
  Future<chopper.Response<List<ProfileInDb>>> _apiProfilesImportPost({
    @Header('Client_name') String? clientName,
    @Part() required BodyImportProfilesApiProfilesImportPost body,
  });

  ///Get Semesters
  Future<chopper.Response<List<SemesterInDb>>> apiSemestersGet() {
    generatedMapping.putIfAbsent(
        SemesterInDb, () => SemesterInDb.fromJsonFactory);

    return _apiSemestersGet();
  }

  ///Get Semesters
  @Get(path: '/api/semesters')
  Future<chopper.Response<List<SemesterInDb>>> _apiSemestersGet();

  ///Create Semester
  ///@param Client_name
  Future<chopper.Response<int>> apiSemestersPost({
    String? clientName,
    required SemesterCreate? body,
  }) {
    return _apiSemestersPost(clientName: clientName, body: body);
  }

  ///Create Semester
  ///@param Client_name
  @Post(
    path: '/api/semesters',
    optionalBody: true,
  )
  Future<chopper.Response<int>> _apiSemestersPost({
    @Header('Client_name') String? clientName,
    @Body() required SemesterCreate? body,
  });

  ///Update Semester
  ///@param semester_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiSemestersSemesterIdPut({
    required int? semesterId,
    String? clientName,
    required SemesterUpdate? body,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiSemestersSemesterIdPut(
        semesterId: semesterId, clientName: clientName, body: body);
  }

  ///Update Semester
  ///@param semester_id
  ///@param Client_name
  @Put(
    path: '/api/semesters/{semester_id}',
    optionalBody: true,
  )
  Future<chopper.Response<Status>> _apiSemestersSemesterIdPut({
    @Path('semester_id') required int? semesterId,
    @Header('Client_name') String? clientName,
    @Body() required SemesterUpdate? body,
  });

  ///Delete Semester
  ///@param semester_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiSemestersSemesterIdDelete({
    required int? semesterId,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiSemestersSemesterIdDelete(
        semesterId: semesterId, clientName: clientName);
  }

  ///Delete Semester
  ///@param semester_id
  ///@param Client_name
  @Delete(path: '/api/semesters/{semester_id}')
  Future<chopper.Response<Status>> _apiSemestersSemesterIdDelete({
    @Path('semester_id') required int? semesterId,
    @Header('Client_name') String? clientName,
  });

  ///Get Semester Directions
  ///@param semester_id Идентификатор семестра
  ///@param directions Список идентификаторов направлений
  ///@param courses Список курсов
  ///@param current_semester Для текущего семестра
  Future<chopper.Response<List<SemesterDirectionInDb>>>
      apiSemesterDirectionsGet({
    int? semesterId,
    List<int>? directions,
    List<int>? courses,
    bool? currentSemester,
  }) {
    generatedMapping.putIfAbsent(
        SemesterDirectionInDb, () => SemesterDirectionInDb.fromJsonFactory);

    return _apiSemesterDirectionsGet(
        semesterId: semesterId,
        directions: directions,
        courses: courses,
        currentSemester: currentSemester);
  }

  ///Get Semester Directions
  ///@param semester_id Идентификатор семестра
  ///@param directions Список идентификаторов направлений
  ///@param courses Список курсов
  ///@param current_semester Для текущего семестра
  @Get(path: '/api/semester_directions')
  Future<chopper.Response<List<SemesterDirectionInDb>>>
      _apiSemesterDirectionsGet({
    @Query('semester_id') int? semesterId,
    @Query('directions') List<int>? directions,
    @Query('courses') List<int>? courses,
    @Query('current_semester') bool? currentSemester,
  });

  ///Create Semester Direction
  ///@param Client_name
  Future<chopper.Response<int>> apiSemesterDirectionsPost({
    String? clientName,
    required SemesterDirectionCreate? body,
  }) {
    return _apiSemesterDirectionsPost(clientName: clientName, body: body);
  }

  ///Create Semester Direction
  ///@param Client_name
  @Post(
    path: '/api/semester_directions',
    optionalBody: true,
  )
  Future<chopper.Response<int>> _apiSemesterDirectionsPost({
    @Header('Client_name') String? clientName,
    @Body() required SemesterDirectionCreate? body,
  });

  ///Update Semester Direction
  ///@param semester_direction_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiSemesterDirectionsSemesterDirectionIdPut({
    required int? semesterDirectionId,
    String? clientName,
    required SemesterDirectionUpdate? body,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiSemesterDirectionsSemesterDirectionIdPut(
        semesterDirectionId: semesterDirectionId,
        clientName: clientName,
        body: body);
  }

  ///Update Semester Direction
  ///@param semester_direction_id
  ///@param Client_name
  @Put(
    path: '/api/semester_directions/{semester_direction_id}',
    optionalBody: true,
  )
  Future<chopper.Response<Status>>
      _apiSemesterDirectionsSemesterDirectionIdPut({
    @Path('semester_direction_id') required int? semesterDirectionId,
    @Header('Client_name') String? clientName,
    @Body() required SemesterDirectionUpdate? body,
  });

  ///Delete Semester Direction
  ///@param semester_direction_id
  ///@param Client_name
  Future<chopper.Response<Status>>
      apiSemesterDirectionsSemesterDirectionIdDelete({
    required int? semesterDirectionId,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiSemesterDirectionsSemesterDirectionIdDelete(
        semesterDirectionId: semesterDirectionId, clientName: clientName);
  }

  ///Delete Semester Direction
  ///@param semester_direction_id
  ///@param Client_name
  @Delete(path: '/api/semester_directions/{semester_direction_id}')
  Future<chopper.Response<Status>>
      _apiSemesterDirectionsSemesterDirectionIdDelete({
    @Path('semester_direction_id') required int? semesterDirectionId,
    @Header('Client_name') String? clientName,
  });

  ///Get View Modes
  Future<chopper.Response<Object>> apiTimetableViewsModesGet() {
    return _apiTimetableViewsModesGet();
  }

  ///Get View Modes
  @Get(path: '/api/timetable_views/modes')
  Future<chopper.Response<Object>> _apiTimetableViewsModesGet();

  ///Get Timetable View
  ///@param semester_id Идентификатор семестра
  ///@param faculty_id Идентификатор факультета
  ///@param Client_name
  Future<chopper.Response<List<TimetableViewInDb>>> apiTimetableViewsGet({
    int? semesterId,
    int? facultyId,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(
        TimetableViewInDb, () => TimetableViewInDb.fromJsonFactory);

    return _apiTimetableViewsGet(
        semesterId: semesterId, facultyId: facultyId, clientName: clientName);
  }

  ///Get Timetable View
  ///@param semester_id Идентификатор семестра
  ///@param faculty_id Идентификатор факультета
  ///@param Client_name
  @Get(path: '/api/timetable_views')
  Future<chopper.Response<List<TimetableViewInDb>>> _apiTimetableViewsGet({
    @Query('semester_id') int? semesterId,
    @Query('faculty_id') int? facultyId,
    @Header('Client_name') String? clientName,
  });

  ///Update Timetable View
  ///@param Client_name
  Future<chopper.Response<Status>> apiTimetableViewsPost({
    String? clientName,
    required TimetableViewUpdate? body,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiTimetableViewsPost(clientName: clientName, body: body);
  }

  ///Update Timetable View
  ///@param Client_name
  @Post(
    path: '/api/timetable_views',
    optionalBody: true,
  )
  Future<chopper.Response<Status>> _apiTimetableViewsPost({
    @Header('Client_name') String? clientName,
    @Body() required TimetableViewUpdate? body,
  });

  ///Get Groups
  ///@param search Значение для поиска
  Future<chopper.Response<List<GroupInDb>>> apiGroupsGet({String? search}) {
    generatedMapping.putIfAbsent(GroupInDb, () => GroupInDb.fromJsonFactory);

    return _apiGroupsGet(search: search);
  }

  ///Get Groups
  ///@param search Значение для поиска
  @Get(path: '/api/groups')
  Future<chopper.Response<List<GroupInDb>>> _apiGroupsGet(
      {@Query('search') String? search});

  ///Create Group
  ///@param Client_name
  Future<chopper.Response<int>> apiGroupsPost({
    String? clientName,
    required GroupCreate? body,
  }) {
    return _apiGroupsPost(clientName: clientName, body: body);
  }

  ///Create Group
  ///@param Client_name
  @Post(
    path: '/api/groups',
    optionalBody: true,
  )
  Future<chopper.Response<int>> _apiGroupsPost({
    @Header('Client_name') String? clientName,
    @Body() required GroupCreate? body,
  });

  ///Get Group Disciplines
  ///@param group_id
  Future<chopper.Response<List<int>>> apiGroupsGroupIdDisciplinesIdsGet(
      {required int? groupId}) {
    return _apiGroupsGroupIdDisciplinesIdsGet(groupId: groupId);
  }

  ///Get Group Disciplines
  ///@param group_id
  @Get(path: '/api/groups/{group_id}/disciplines_ids')
  Future<chopper.Response<List<int>>> _apiGroupsGroupIdDisciplinesIdsGet(
      {@Path('group_id') required int? groupId});

  ///Get Group Discipline Types
  ///@param group_id
  ///@param discipline_id
  Future<chopper.Response<List<int>>>
      apiGroupsGroupIdDisciplinesDisciplineIdTypesIdsGet({
    required int? groupId,
    required int? disciplineId,
  }) {
    return _apiGroupsGroupIdDisciplinesDisciplineIdTypesIdsGet(
        groupId: groupId, disciplineId: disciplineId);
  }

  ///Get Group Discipline Types
  ///@param group_id
  ///@param discipline_id
  @Get(path: '/api/groups/{group_id}/disciplines/{discipline_id}/types_ids')
  Future<chopper.Response<List<int>>>
      _apiGroupsGroupIdDisciplinesDisciplineIdTypesIdsGet({
    @Path('group_id') required int? groupId,
    @Path('discipline_id') required int? disciplineId,
  });

  ///Get Group
  ///@param group_id
  Future<chopper.Response<GroupFullInDb>> apiGroupsGroupIdGet(
      {required int? groupId}) {
    generatedMapping.putIfAbsent(
        GroupFullInDb, () => GroupFullInDb.fromJsonFactory);

    return _apiGroupsGroupIdGet(groupId: groupId);
  }

  ///Get Group
  ///@param group_id
  @Get(path: '/api/groups/{group_id}')
  Future<chopper.Response<GroupFullInDb>> _apiGroupsGroupIdGet(
      {@Path('group_id') required int? groupId});

  ///Update Group
  ///@param group_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiGroupsGroupIdPut({
    required int? groupId,
    String? clientName,
    required GroupCreate? body,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiGroupsGroupIdPut(
        groupId: groupId, clientName: clientName, body: body);
  }

  ///Update Group
  ///@param group_id
  ///@param Client_name
  @Put(
    path: '/api/groups/{group_id}',
    optionalBody: true,
  )
  Future<chopper.Response<Status>> _apiGroupsGroupIdPut({
    @Path('group_id') required int? groupId,
    @Header('Client_name') String? clientName,
    @Body() required GroupCreate? body,
  });

  ///Delete Group
  ///@param group_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiGroupsGroupIdDelete({
    required int? groupId,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiGroupsGroupIdDelete(groupId: groupId, clientName: clientName);
  }

  ///Delete Group
  ///@param group_id
  ///@param Client_name
  @Delete(path: '/api/groups/{group_id}')
  Future<chopper.Response<Status>> _apiGroupsGroupIdDelete({
    @Path('group_id') required int? groupId,
    @Header('Client_name') String? clientName,
  });

  ///Import Groups
  ///@param Client_name
  Future<chopper.Response<List<GroupInDb>>> apiGroupsImportPost({
    String? clientName,
    required BodyImportGroupsApiGroupsImportPost body,
  }) {
    generatedMapping.putIfAbsent(GroupInDb, () => GroupInDb.fromJsonFactory);

    return _apiGroupsImportPost(clientName: clientName, body: body);
  }

  ///Import Groups
  ///@param Client_name
  @Post(
    path: '/api/groups/import',
    optionalBody: true,
  )
  Future<chopper.Response<List<GroupInDb>>> _apiGroupsImportPost({
    @Header('Client_name') String? clientName,
    @Part() required BodyImportGroupsApiGroupsImportPost body,
  });

  ///Get Disciplines
  ///@param search Значение для поиска
  Future<chopper.Response<List<DisciplineInDb>>> apiDisciplinesGet(
      {String? search}) {
    generatedMapping.putIfAbsent(
        DisciplineInDb, () => DisciplineInDb.fromJsonFactory);

    return _apiDisciplinesGet(search: search);
  }

  ///Get Disciplines
  ///@param search Значение для поиска
  @Get(path: '/api/disciplines')
  Future<chopper.Response<List<DisciplineInDb>>> _apiDisciplinesGet(
      {@Query('search') String? search});

  ///Create Discipline
  ///@param Client_name
  Future<chopper.Response<int>> apiDisciplinesPost({
    String? clientName,
    required DisciplineCreate? body,
  }) {
    return _apiDisciplinesPost(clientName: clientName, body: body);
  }

  ///Create Discipline
  ///@param Client_name
  @Post(
    path: '/api/disciplines',
    optionalBody: true,
  )
  Future<chopper.Response<int>> _apiDisciplinesPost({
    @Header('Client_name') String? clientName,
    @Body() required DisciplineCreate? body,
  });

  ///Get Discipline Faculties
  ///@param discipline_id
  ///@param teacher_id
  ///@param lesson_type_id
  Future<chopper.Response<List<int>>>
      apiDisciplinesDisciplineIdFacultiesIdsGet({
    required int? disciplineId,
    int? teacherId,
    int? lessonTypeId,
  }) {
    return _apiDisciplinesDisciplineIdFacultiesIdsGet(
        disciplineId: disciplineId,
        teacherId: teacherId,
        lessonTypeId: lessonTypeId);
  }

  ///Get Discipline Faculties
  ///@param discipline_id
  ///@param teacher_id
  ///@param lesson_type_id
  @Get(path: '/api/disciplines/{discipline_id}/faculties_ids')
  Future<chopper.Response<List<int>>>
      _apiDisciplinesDisciplineIdFacultiesIdsGet({
    @Path('discipline_id') required int? disciplineId,
    @Query('teacher_id') int? teacherId,
    @Query('lesson_type_id') int? lessonTypeId,
  });

  ///Get Discipline
  ///@param discipline_id
  Future<chopper.Response<DisciplineInDb>> apiDisciplinesDisciplineIdGet(
      {required int? disciplineId}) {
    generatedMapping.putIfAbsent(
        DisciplineInDb, () => DisciplineInDb.fromJsonFactory);

    return _apiDisciplinesDisciplineIdGet(disciplineId: disciplineId);
  }

  ///Get Discipline
  ///@param discipline_id
  @Get(path: '/api/disciplines/{discipline_id}')
  Future<chopper.Response<DisciplineInDb>> _apiDisciplinesDisciplineIdGet(
      {@Path('discipline_id') required int? disciplineId});

  ///Update Discipline
  ///@param discipline_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiDisciplinesDisciplineIdPut({
    required int? disciplineId,
    String? clientName,
    required DisciplineUpdate? body,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiDisciplinesDisciplineIdPut(
        disciplineId: disciplineId, clientName: clientName, body: body);
  }

  ///Update Discipline
  ///@param discipline_id
  ///@param Client_name
  @Put(
    path: '/api/disciplines/{discipline_id}',
    optionalBody: true,
  )
  Future<chopper.Response<Status>> _apiDisciplinesDisciplineIdPut({
    @Path('discipline_id') required int? disciplineId,
    @Header('Client_name') String? clientName,
    @Body() required DisciplineUpdate? body,
  });

  ///Delete Discipline
  ///@param discipline_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiDisciplinesDisciplineIdDelete({
    required int? disciplineId,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiDisciplinesDisciplineIdDelete(
        disciplineId: disciplineId, clientName: clientName);
  }

  ///Delete Discipline
  ///@param discipline_id
  ///@param Client_name
  @Delete(path: '/api/disciplines/{discipline_id}')
  Future<chopper.Response<Status>> _apiDisciplinesDisciplineIdDelete({
    @Path('discipline_id') required int? disciplineId,
    @Header('Client_name') String? clientName,
  });

  ///Import Disciplines
  ///@param Client_name
  Future<chopper.Response<List<DisciplineInDb>>> apiDisciplinesImportPost({
    String? clientName,
    required BodyImportDisciplinesApiDisciplinesImportPost body,
  }) {
    generatedMapping.putIfAbsent(
        DisciplineInDb, () => DisciplineInDb.fromJsonFactory);

    return _apiDisciplinesImportPost(clientName: clientName, body: body);
  }

  ///Import Disciplines
  ///@param Client_name
  @Post(
    path: '/api/disciplines/import',
    optionalBody: true,
  )
  Future<chopper.Response<List<DisciplineInDb>>> _apiDisciplinesImportPost({
    @Header('Client_name') String? clientName,
    @Part() required BodyImportDisciplinesApiDisciplinesImportPost body,
  });

  ///Get Teachers
  ///@param search Значение для поиска
  ///@param academic_titles Список ученых званий
  ///@param academic_degrees Список идентификаторов ученых степеней
  Future<chopper.Response<List<TeacherInDb>>> apiTeachersGet({
    String? search,
    List<TeacherAcademicTitle>? academicTitles,
    List<int>? academicDegrees,
  }) {
    generatedMapping.putIfAbsent(
        TeacherInDb, () => TeacherInDb.fromJsonFactory);

    return _apiTeachersGet(
        search: search,
        academicTitles: academicTitles,
        academicDegrees: academicDegrees);
  }

  ///Get Teachers
  ///@param search Значение для поиска
  ///@param academic_titles Список ученых званий
  ///@param academic_degrees Список идентификаторов ученых степеней
  @Get(path: '/api/teachers')
  Future<chopper.Response<List<TeacherInDb>>> _apiTeachersGet({
    @Query('search') String? search,
    @Query('academic_titles') List<TeacherAcademicTitle>? academicTitles,
    @Query('academic_degrees') List<int>? academicDegrees,
  });

  ///Create Teacher
  ///@param Client_name
  Future<chopper.Response<int>> apiTeachersPost({
    String? clientName,
    required TeacherCreate? body,
  }) {
    return _apiTeachersPost(clientName: clientName, body: body);
  }

  ///Create Teacher
  ///@param Client_name
  @Post(
    path: '/api/teachers',
    optionalBody: true,
  )
  Future<chopper.Response<int>> _apiTeachersPost({
    @Header('Client_name') String? clientName,
    @Body() required TeacherCreate? body,
  });

  ///Get Academic Titles
  Future<chopper.Response<Object>> apiTeachersAcademicTitlesGet() {
    return _apiTeachersAcademicTitlesGet();
  }

  ///Get Academic Titles
  @Get(path: '/api/teachers/academic_titles')
  Future<chopper.Response<Object>> _apiTeachersAcademicTitlesGet();

  ///Get Academic Degrees
  Future<chopper.Response<List<TeacherAcademicDegreeInDb>>>
      apiTeachersAcademicDegreesGet() {
    generatedMapping.putIfAbsent(TeacherAcademicDegreeInDb,
        () => TeacherAcademicDegreeInDb.fromJsonFactory);

    return _apiTeachersAcademicDegreesGet();
  }

  ///Get Academic Degrees
  @Get(path: '/api/teachers/academic_degrees')
  Future<chopper.Response<List<TeacherAcademicDegreeInDb>>>
      _apiTeachersAcademicDegreesGet();

  ///Get Teacher Groups
  ///@param teacher_id
  Future<chopper.Response<List<int>>> apiTeachersTeacherIdGroupsIdsGet(
      {required int? teacherId}) {
    return _apiTeachersTeacherIdGroupsIdsGet(teacherId: teacherId);
  }

  ///Get Teacher Groups
  ///@param teacher_id
  @Get(path: '/api/teachers/{teacher_id}/groups_ids')
  Future<chopper.Response<List<int>>> _apiTeachersTeacherIdGroupsIdsGet(
      {@Path('teacher_id') required int? teacherId});

  ///Get Teacher Disciplines
  ///@param teacher_id
  Future<chopper.Response<List<int>>> apiTeachersTeacherIdDisciplinesIdsGet(
      {required int? teacherId}) {
    return _apiTeachersTeacherIdDisciplinesIdsGet(teacherId: teacherId);
  }

  ///Get Teacher Disciplines
  ///@param teacher_id
  @Get(path: '/api/teachers/{teacher_id}/disciplines_ids')
  Future<chopper.Response<List<int>>> _apiTeachersTeacherIdDisciplinesIdsGet(
      {@Path('teacher_id') required int? teacherId});

  ///Get Teacher Discipline Types
  ///@param teacher_id
  ///@param discipline_id
  ///@param group_id
  Future<chopper.Response<List<int>>>
      apiTeachersTeacherIdDisciplinesDisciplineIdTypesIdsGet({
    required int? teacherId,
    required int? disciplineId,
    int? groupId,
  }) {
    return _apiTeachersTeacherIdDisciplinesDisciplineIdTypesIdsGet(
        teacherId: teacherId, disciplineId: disciplineId, groupId: groupId);
  }

  ///Get Teacher Discipline Types
  ///@param teacher_id
  ///@param discipline_id
  ///@param group_id
  @Get(path: '/api/teachers/{teacher_id}/disciplines/{discipline_id}/types_ids')
  Future<chopper.Response<List<int>>>
      _apiTeachersTeacherIdDisciplinesDisciplineIdTypesIdsGet({
    @Path('teacher_id') required int? teacherId,
    @Path('discipline_id') required int? disciplineId,
    @Query('group_id') int? groupId,
  });

  ///Get Teacher
  ///@param teacher_id
  Future<chopper.Response<TeacherFullInDb>> apiTeachersTeacherIdGet(
      {required int? teacherId}) {
    generatedMapping.putIfAbsent(
        TeacherFullInDb, () => TeacherFullInDb.fromJsonFactory);

    return _apiTeachersTeacherIdGet(teacherId: teacherId);
  }

  ///Get Teacher
  ///@param teacher_id
  @Get(path: '/api/teachers/{teacher_id}')
  Future<chopper.Response<TeacherFullInDb>> _apiTeachersTeacherIdGet(
      {@Path('teacher_id') required int? teacherId});

  ///Update Teacher
  ///@param teacher_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiTeachersTeacherIdPut({
    required int? teacherId,
    String? clientName,
    required TeacherUpdate? body,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiTeachersTeacherIdPut(
        teacherId: teacherId, clientName: clientName, body: body);
  }

  ///Update Teacher
  ///@param teacher_id
  ///@param Client_name
  @Put(
    path: '/api/teachers/{teacher_id}',
    optionalBody: true,
  )
  Future<chopper.Response<Status>> _apiTeachersTeacherIdPut({
    @Path('teacher_id') required int? teacherId,
    @Header('Client_name') String? clientName,
    @Body() required TeacherUpdate? body,
  });

  ///Delete Teacher
  ///@param teacher_id
  ///@param with_user Вместе с пользователем
  ///@param with_lessons Вместе с занятиями
  ///@param new_lessons_teacher_id Преподаватель для замены
  ///@param Client_name
  Future<chopper.Response<Status>> apiTeachersTeacherIdDelete({
    required int? teacherId,
    bool? withUser,
    bool? withLessons,
    int? newLessonsTeacherId,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiTeachersTeacherIdDelete(
        teacherId: teacherId,
        withUser: withUser,
        withLessons: withLessons,
        newLessonsTeacherId: newLessonsTeacherId,
        clientName: clientName);
  }

  ///Delete Teacher
  ///@param teacher_id
  ///@param with_user Вместе с пользователем
  ///@param with_lessons Вместе с занятиями
  ///@param new_lessons_teacher_id Преподаватель для замены
  ///@param Client_name
  @Delete(path: '/api/teachers/{teacher_id}')
  Future<chopper.Response<Status>> _apiTeachersTeacherIdDelete({
    @Path('teacher_id') required int? teacherId,
    @Query('with_user') bool? withUser,
    @Query('with_lessons') bool? withLessons,
    @Query('new_lessons_teacher_id') int? newLessonsTeacherId,
    @Header('Client_name') String? clientName,
  });

  ///Import Teachers
  ///@param Client_name
  Future<chopper.Response> apiTeachersImportPost({
    String? clientName,
    required BodyImportTeachersApiTeachersImportPost body,
  }) {
    return _apiTeachersImportPost(clientName: clientName, body: body);
  }

  ///Import Teachers
  ///@param Client_name
  @Post(
    path: '/api/teachers/import',
    optionalBody: true,
  )
  Future<chopper.Response> _apiTeachersImportPost({
    @Header('Client_name') String? clientName,
    @Part() required BodyImportTeachersApiTeachersImportPost body,
  });

  ///Get Students
  ///@param search Значение для поиска
  ///@param groups Список идентификаторов групп
  ///@param is_main Староста
  ///@param is_deputy_main Заместитель старосты
  ///@param sort_by Сортируемый столбец
  ///@param sort_order Параметр сортировки
  ///@param page
  ///@param size
  ///@param Client_name
  Future<chopper.Response<PageStudentShortInDb>> apiStudentsGet({
    String? search,
    List<int>? groups,
    bool? isMain,
    bool? isDeputyMain,
    StudentSortBy? sortBy,
    SortOrder? sortOrder,
    int? page,
    int? size,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(
        PageStudentShortInDb, () => PageStudentShortInDb.fromJsonFactory);

    return _apiStudentsGet(
        search: search,
        groups: groups,
        isMain: isMain,
        isDeputyMain: isDeputyMain,
        sortBy: sortBy,
        sortOrder: sortOrder,
        page: page,
        size: size,
        clientName: clientName);
  }

  ///Get Students
  ///@param search Значение для поиска
  ///@param groups Список идентификаторов групп
  ///@param is_main Староста
  ///@param is_deputy_main Заместитель старосты
  ///@param sort_by Сортируемый столбец
  ///@param sort_order Параметр сортировки
  ///@param page
  ///@param size
  ///@param Client_name
  @Get(path: '/api/students')
  Future<chopper.Response<PageStudentShortInDb>> _apiStudentsGet({
    @Query('search') String? search,
    @Query('groups') List<int>? groups,
    @Query('is_main') bool? isMain,
    @Query('is_deputy_main') bool? isDeputyMain,
    @Query('sort_by') StudentSortBy? sortBy,
    @Query('sort_order') SortOrder? sortOrder,
    @Query('page') int? page,
    @Query('size') int? size,
    @Header('Client_name') String? clientName,
  });

  ///Create Student
  ///@param Client_name
  Future<chopper.Response<int>> apiStudentsPost({
    String? clientName,
    required StudentCreate? body,
  }) {
    return _apiStudentsPost(clientName: clientName, body: body);
  }

  ///Create Student
  ///@param Client_name
  @Post(
    path: '/api/students',
    optionalBody: true,
  )
  Future<chopper.Response<int>> _apiStudentsPost({
    @Header('Client_name') String? clientName,
    @Body() required StudentCreate? body,
  });

  ///Get Student
  ///@param student_id
  Future<chopper.Response<StudentInDb>> apiStudentsStudentIdGet(
      {required int? studentId}) {
    generatedMapping.putIfAbsent(
        StudentInDb, () => StudentInDb.fromJsonFactory);

    return _apiStudentsStudentIdGet(studentId: studentId);
  }

  ///Get Student
  ///@param student_id
  @Get(path: '/api/students/{student_id}')
  Future<chopper.Response<StudentInDb>> _apiStudentsStudentIdGet(
      {@Path('student_id') required int? studentId});

  ///Update Student
  ///@param student_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiStudentsStudentIdPut({
    required int? studentId,
    String? clientName,
    required StudentUpdate? body,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiStudentsStudentIdPut(
        studentId: studentId, clientName: clientName, body: body);
  }

  ///Update Student
  ///@param student_id
  ///@param Client_name
  @Put(
    path: '/api/students/{student_id}',
    optionalBody: true,
  )
  Future<chopper.Response<Status>> _apiStudentsStudentIdPut({
    @Path('student_id') required int? studentId,
    @Header('Client_name') String? clientName,
    @Body() required StudentUpdate? body,
  });

  ///Delete Student
  ///@param student_id
  ///@param with_user Вместе с пользователем
  ///@param Client_name
  Future<chopper.Response<Status>> apiStudentsStudentIdDelete({
    required int? studentId,
    bool? withUser,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiStudentsStudentIdDelete(
        studentId: studentId, withUser: withUser, clientName: clientName);
  }

  ///Delete Student
  ///@param student_id
  ///@param with_user Вместе с пользователем
  ///@param Client_name
  @Delete(path: '/api/students/{student_id}')
  Future<chopper.Response<Status>> _apiStudentsStudentIdDelete({
    @Path('student_id') required int? studentId,
    @Query('with_user') bool? withUser,
    @Header('Client_name') String? clientName,
  });

  ///Import Students
  ///@param Client_name
  Future<chopper.Response> apiStudentsImportPost({
    String? clientName,
    required BodyImportStudentsApiStudentsImportPost body,
  }) {
    return _apiStudentsImportPost(clientName: clientName, body: body);
  }

  ///Import Students
  ///@param Client_name
  @Post(
    path: '/api/students/import',
    optionalBody: true,
  )
  Future<chopper.Response> _apiStudentsImportPost({
    @Header('Client_name') String? clientName,
    @Part() required BodyImportStudentsApiStudentsImportPost body,
  });

  ///Places Export
  ///@param Client_name
  Future<chopper.Response> apiPlacesExportPost({
    String? clientName,
    required PlaceExport? body,
  }) {
    return _apiPlacesExportPost(clientName: clientName, body: body);
  }

  ///Places Export
  ///@param Client_name
  @Post(
    path: '/api/places/export',
    optionalBody: true,
  )
  Future<chopper.Response> _apiPlacesExportPost({
    @Header('Client_name') String? clientName,
    @Body() required PlaceExport? body,
  });

  ///Get Places
  ///@param search Значение для поиска
  ///@param equipments Список идентификаторов оснащений
  Future<chopper.Response<List<PlaceShortInDb>>> apiPlacesGet({
    String? search,
    List<int>? equipments,
  }) {
    generatedMapping.putIfAbsent(
        PlaceShortInDb, () => PlaceShortInDb.fromJsonFactory);

    return _apiPlacesGet(search: search, equipments: equipments);
  }

  ///Get Places
  ///@param search Значение для поиска
  ///@param equipments Список идентификаторов оснащений
  @Get(path: '/api/places')
  Future<chopper.Response<List<PlaceShortInDb>>> _apiPlacesGet({
    @Query('search') String? search,
    @Query('equipments') List<int>? equipments,
  });

  ///Create Place
  ///@param Client_name
  Future<chopper.Response<int>> apiPlacesPost({
    String? clientName,
    required PlaceCreate? body,
  }) {
    return _apiPlacesPost(clientName: clientName, body: body);
  }

  ///Create Place
  ///@param Client_name
  @Post(
    path: '/api/places',
    optionalBody: true,
  )
  Future<chopper.Response<int>> _apiPlacesPost({
    @Header('Client_name') String? clientName,
    @Body() required PlaceCreate? body,
  });

  ///Get Place
  ///@param place_id
  Future<chopper.Response<PlaceInDb>> apiPlacesPlaceIdGet(
      {required int? placeId}) {
    generatedMapping.putIfAbsent(PlaceInDb, () => PlaceInDb.fromJsonFactory);

    return _apiPlacesPlaceIdGet(placeId: placeId);
  }

  ///Get Place
  ///@param place_id
  @Get(path: '/api/places/{place_id}')
  Future<chopper.Response<PlaceInDb>> _apiPlacesPlaceIdGet(
      {@Path('place_id') required int? placeId});

  ///Update Place
  ///@param place_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiPlacesPlaceIdPut({
    required int? placeId,
    String? clientName,
    required PlaceUpdate? body,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiPlacesPlaceIdPut(
        placeId: placeId, clientName: clientName, body: body);
  }

  ///Update Place
  ///@param place_id
  ///@param Client_name
  @Put(
    path: '/api/places/{place_id}',
    optionalBody: true,
  )
  Future<chopper.Response<Status>> _apiPlacesPlaceIdPut({
    @Path('place_id') required int? placeId,
    @Header('Client_name') String? clientName,
    @Body() required PlaceUpdate? body,
  });

  ///Delete Place
  ///@param place_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiPlacesPlaceIdDelete({
    required int? placeId,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiPlacesPlaceIdDelete(placeId: placeId, clientName: clientName);
  }

  ///Delete Place
  ///@param place_id
  ///@param Client_name
  @Delete(path: '/api/places/{place_id}')
  Future<chopper.Response<Status>> _apiPlacesPlaceIdDelete({
    @Path('place_id') required int? placeId,
    @Header('Client_name') String? clientName,
  });

  ///Import Places
  ///@param Client_name
  Future<chopper.Response<List<PlaceInDb>>> apiPlacesImportPost({
    String? clientName,
    required BodyImportPlacesApiPlacesImportPost body,
  }) {
    generatedMapping.putIfAbsent(PlaceInDb, () => PlaceInDb.fromJsonFactory);

    return _apiPlacesImportPost(clientName: clientName, body: body);
  }

  ///Import Places
  ///@param Client_name
  @Post(
    path: '/api/places/import',
    optionalBody: true,
  )
  Future<chopper.Response<List<PlaceInDb>>> _apiPlacesImportPost({
    @Header('Client_name') String? clientName,
    @Part() required BodyImportPlacesApiPlacesImportPost body,
  });

  ///Get Equipments
  Future<chopper.Response<List<EquipmentInDb>>> apiEquipmentsGet() {
    generatedMapping.putIfAbsent(
        EquipmentInDb, () => EquipmentInDb.fromJsonFactory);

    return _apiEquipmentsGet();
  }

  ///Get Equipments
  @Get(path: '/api/equipments')
  Future<chopper.Response<List<EquipmentInDb>>> _apiEquipmentsGet();

  ///Create Equipment
  ///@param Client_name
  Future<chopper.Response<int>> apiEquipmentsPost({
    String? clientName,
    required EquipmentCreate? body,
  }) {
    return _apiEquipmentsPost(clientName: clientName, body: body);
  }

  ///Create Equipment
  ///@param Client_name
  @Post(
    path: '/api/equipments',
    optionalBody: true,
  )
  Future<chopper.Response<int>> _apiEquipmentsPost({
    @Header('Client_name') String? clientName,
    @Body() required EquipmentCreate? body,
  });

  ///Get Equipment
  ///@param equipment_id
  Future<chopper.Response<EquipmentInDb>> apiEquipmentsEquipmentIdGet(
      {required int? equipmentId}) {
    generatedMapping.putIfAbsent(
        EquipmentInDb, () => EquipmentInDb.fromJsonFactory);

    return _apiEquipmentsEquipmentIdGet(equipmentId: equipmentId);
  }

  ///Get Equipment
  ///@param equipment_id
  @Get(path: '/api/equipments/{equipment_id}')
  Future<chopper.Response<EquipmentInDb>> _apiEquipmentsEquipmentIdGet(
      {@Path('equipment_id') required int? equipmentId});

  ///Update Equipment
  ///@param equipment_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiEquipmentsEquipmentIdPut({
    required int? equipmentId,
    String? clientName,
    required EquipmentUpdate? body,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiEquipmentsEquipmentIdPut(
        equipmentId: equipmentId, clientName: clientName, body: body);
  }

  ///Update Equipment
  ///@param equipment_id
  ///@param Client_name
  @Put(
    path: '/api/equipments/{equipment_id}',
    optionalBody: true,
  )
  Future<chopper.Response<Status>> _apiEquipmentsEquipmentIdPut({
    @Path('equipment_id') required int? equipmentId,
    @Header('Client_name') String? clientName,
    @Body() required EquipmentUpdate? body,
  });

  ///Delete Equipment
  ///@param equipment_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiEquipmentsEquipmentIdDelete({
    required int? equipmentId,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiEquipmentsEquipmentIdDelete(
        equipmentId: equipmentId, clientName: clientName);
  }

  ///Delete Equipment
  ///@param equipment_id
  ///@param Client_name
  @Delete(path: '/api/equipments/{equipment_id}')
  Future<chopper.Response<Status>> _apiEquipmentsEquipmentIdDelete({
    @Path('equipment_id') required int? equipmentId,
    @Header('Client_name') String? clientName,
  });

  ///Import Equipments
  ///@param Client_name
  Future<chopper.Response<List<EquipmentInDb>>> apiEquipmentsImportPost({
    String? clientName,
    required BodyImportEquipmentsApiEquipmentsImportPost body,
  }) {
    generatedMapping.putIfAbsent(
        EquipmentInDb, () => EquipmentInDb.fromJsonFactory);

    return _apiEquipmentsImportPost(clientName: clientName, body: body);
  }

  ///Import Equipments
  ///@param Client_name
  @Post(
    path: '/api/equipments/import',
    optionalBody: true,
  )
  Future<chopper.Response<List<EquipmentInDb>>> _apiEquipmentsImportPost({
    @Header('Client_name') String? clientName,
    @Part() required BodyImportEquipmentsApiEquipmentsImportPost body,
  });

  ///Get Collisions
  ///@param date Дата
  ///@param number Номер пары
  ///@param semester_id Идентификатор семестра
  ///@param type_id Тип пары
  ///@param discipline_id Идентификатор дисциплины
  ///@param place_id Идентификатор места
  ///@param groups Список идентификаторов групп
  ///@param teachers Список идентификаторов преподавателей
  ///@param is_remotely Дистанционная пара
  ///@param lesson_id Идентификатор занятия
  ///@param Client_name
  Future<chopper.Response<List<LessonCollision>>> apiLessonsCollisionGet({
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
    generatedMapping.putIfAbsent(
        LessonCollision, () => LessonCollision.fromJsonFactory);

    return _apiLessonsCollisionGet(
        date: date,
        number: number,
        semesterId: semesterId,
        typeId: typeId,
        disciplineId: disciplineId,
        placeId: placeId,
        groups: groups,
        teachers: teachers,
        isRemotely: isRemotely,
        lessonId: lessonId,
        clientName: clientName);
  }

  ///Get Collisions
  ///@param date Дата
  ///@param number Номер пары
  ///@param semester_id Идентификатор семестра
  ///@param type_id Тип пары
  ///@param discipline_id Идентификатор дисциплины
  ///@param place_id Идентификатор места
  ///@param groups Список идентификаторов групп
  ///@param teachers Список идентификаторов преподавателей
  ///@param is_remotely Дистанционная пара
  ///@param lesson_id Идентификатор занятия
  ///@param Client_name
  @Get(path: '/api/lessons/collision')
  Future<chopper.Response<List<LessonCollision>>> _apiLessonsCollisionGet({
    @Query('date') required String? date,
    @Query('number') required int? number,
    @Query('semester_id') int? semesterId,
    @Query('type_id') int? typeId,
    @Query('discipline_id') int? disciplineId,
    @Query('place_id') int? placeId,
    @Query('groups') required List<int>? groups,
    @Query('teachers') List<int>? teachers,
    @Query('is_remotely') bool? isRemotely,
    @Query('lesson_id') int? lessonId,
    @Header('Client_name') String? clientName,
  });

  ///Search Autocomplete
  ///@param q Значение для поиска
  Future<chopper.Response<LessonAutocomplete>> apiLessonsAutocompleteGet(
      {required String? q}) {
    generatedMapping.putIfAbsent(
        LessonAutocomplete, () => LessonAutocomplete.fromJsonFactory);

    return _apiLessonsAutocompleteGet(q: q);
  }

  ///Search Autocomplete
  ///@param q Значение для поиска
  @Get(path: '/api/lessons/autocomplete')
  Future<chopper.Response<LessonAutocomplete>> _apiLessonsAutocompleteGet(
      {@Query('q') required String? q});

  ///Get Lessons Settings
  Future<chopper.Response<Object>> apiLessonsSettingsGet() {
    return _apiLessonsSettingsGet();
  }

  ///Get Lessons Settings
  @Get(path: '/api/lessons/settings')
  Future<chopper.Response<Object>> _apiLessonsSettingsGet();

  ///Update Lessons Settings
  ///@param Client_name
  Future<chopper.Response<Status>> apiLessonsSettingsPut({
    String? clientName,
    required LessonsSettings? body,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiLessonsSettingsPut(clientName: clientName, body: body);
  }

  ///Update Lessons Settings
  ///@param Client_name
  @Put(
    path: '/api/lessons/settings',
    optionalBody: true,
  )
  Future<chopper.Response<Status>> _apiLessonsSettingsPut({
    @Header('Client_name') String? clientName,
    @Body() required LessonsSettings? body,
  });

  ///Get Timetable Settings
  Future<chopper.Response<Object>> apiLessonsTimetableSettingsGet() {
    return _apiLessonsTimetableSettingsGet();
  }

  ///Get Timetable Settings
  @Get(path: '/api/lessons/timetable_settings')
  Future<chopper.Response<Object>> _apiLessonsTimetableSettingsGet();

  ///Get Types
  Future<chopper.Response<List<LessonTypeInDb>>> apiLessonsTypesGet() {
    generatedMapping.putIfAbsent(
        LessonTypeInDb, () => LessonTypeInDb.fromJsonFactory);

    return _apiLessonsTypesGet();
  }

  ///Get Types
  @Get(path: '/api/lessons/types')
  Future<chopper.Response<List<LessonTypeInDb>>> _apiLessonsTypesGet();

  ///Get Type
  ///@param type_id
  Future<chopper.Response<LessonTypeInDb>> apiLessonsTypesTypeIdGet(
      {required int? typeId}) {
    generatedMapping.putIfAbsent(
        LessonTypeInDb, () => LessonTypeInDb.fromJsonFactory);

    return _apiLessonsTypesTypeIdGet(typeId: typeId);
  }

  ///Get Type
  ///@param type_id
  @Get(path: '/api/lessons/types/{type_id}')
  Future<chopper.Response<LessonTypeInDb>> _apiLessonsTypesTypeIdGet(
      {@Path('type_id') required int? typeId});

  ///Get Statuses
  Future<chopper.Response<Object>> apiLessonsStatusesGet() {
    return _apiLessonsStatusesGet();
  }

  ///Get Statuses
  @Get(path: '/api/lessons/statuses')
  Future<chopper.Response<Object>> _apiLessonsStatusesGet();

  ///Get History Fields
  Future<chopper.Response<Object>> apiLessonsHistoryFieldsGet() {
    return _apiLessonsHistoryFieldsGet();
  }

  ///Get History Fields
  @Get(path: '/api/lessons/history_fields')
  Future<chopper.Response<Object>> _apiLessonsHistoryFieldsGet();

  ///Get Lesson History
  ///@param lesson_id
  ///@param Client_name
  Future<chopper.Response<List<LessonHistory>>> apiLessonsLessonIdHistoryGet({
    required int? lessonId,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(
        LessonHistory, () => LessonHistory.fromJsonFactory);

    return _apiLessonsLessonIdHistoryGet(
        lessonId: lessonId, clientName: clientName);
  }

  ///Get Lesson History
  ///@param lesson_id
  ///@param Client_name
  @Get(path: '/api/lessons/{lesson_id}/history')
  Future<chopper.Response<List<LessonHistory>>> _apiLessonsLessonIdHistoryGet({
    @Path('lesson_id') required int? lessonId,
    @Header('Client_name') String? clientName,
  });

  ///Lessons Export Ical
  ///@param Client_name
  Future<chopper.Response> apiLessonsExportIcalPost({
    String? clientName,
    required ExportIcal? body,
  }) {
    return _apiLessonsExportIcalPost(clientName: clientName, body: body);
  }

  ///Lessons Export Ical
  ///@param Client_name
  @Post(
    path: '/api/lessons/export_ical',
    optionalBody: true,
  )
  Future<chopper.Response> _apiLessonsExportIcalPost({
    @Header('Client_name') String? clientName,
    @Body() required ExportIcal? body,
  });

  ///Get Lessons
  ///@param header
  ///@param full_data С полной информацией о занятиях
  ///@param search Значение для поиска
  ///@param start_date Дата начала
  ///@param end_date Дата окончания
  ///@param numbers Список номеров занятий
  ///@param semester_id Идентификатор семестра
  ///@param faculty_id Идентификатор факультета
  ///@param degree_studies Список степеней обучения
  ///@param directions Список идентификаторов направлений
  ///@param profiles Список идентификаторов профилей
  ///@param courses Список курсов
  ///@param groups Список идентификаторов групп
  ///@param teachers Список идентификаторов преподавателей
  ///@param disciplines Список идентификаторов дисциплин
  ///@param places Список идентификаторов мест занятий
  ///@param types Список идентификаторов типов занятий
  ///@param theme_is_null Тема пары должна быть не указанной
  ///@param status Статус занятия
  ///@param sort_by Сортируемый столбец
  ///@param sort_order Параметр сортировки
  ///@param Client_name
  Future<chopper.Response<List<LessonFullNamesInDb>>> apiLessonsGet({
    GetLessonHeader? header,
    bool? fullData,
    String? search,
    required String? startDate,
    required String? endDate,
    List<int>? numbers,
    int? semesterId,
    int? facultyId,
    List<enums.DegreeStudy>? degreeStudies,
    List<int>? directions,
    List<int>? profiles,
    List<int>? courses,
    List<int>? groups,
    List<int>? teachers,
    List<int>? disciplines,
    List<int>? places,
    List<int>? types,
    bool? themeIsNull,
    enums.LessonStatus? status,
    LessonSortBy? sortBy,
    SortOrder? sortOrder,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(
        LessonFullNamesInDb, () => LessonFullNamesInDb.fromJsonFactory);

    return _apiLessonsGet(
        header: header,
        fullData: fullData,
        search: search,
        startDate: startDate,
        endDate: endDate,
        numbers: numbers,
        semesterId: semesterId,
        facultyId: facultyId,
        degreeStudies: degreeStudyListToJson(degreeStudies),
        directions: directions,
        profiles: profiles,
        courses: courses,
        groups: groups,
        teachers: teachers,
        disciplines: disciplines,
        places: places,
        types: types,
        themeIsNull: themeIsNull,
        status: status?.value?.toString(),
        sortBy: sortBy,
        sortOrder: sortOrder,
        clientName: clientName);
  }

  ///Get Lessons
  ///@param header
  ///@param full_data С полной информацией о занятиях
  ///@param search Значение для поиска
  ///@param start_date Дата начала
  ///@param end_date Дата окончания
  ///@param numbers Список номеров занятий
  ///@param semester_id Идентификатор семестра
  ///@param faculty_id Идентификатор факультета
  ///@param degree_studies Список степеней обучения
  ///@param directions Список идентификаторов направлений
  ///@param profiles Список идентификаторов профилей
  ///@param courses Список курсов
  ///@param groups Список идентификаторов групп
  ///@param teachers Список идентификаторов преподавателей
  ///@param disciplines Список идентификаторов дисциплин
  ///@param places Список идентификаторов мест занятий
  ///@param types Список идентификаторов типов занятий
  ///@param theme_is_null Тема пары должна быть не указанной
  ///@param status Статус занятия
  ///@param sort_by Сортируемый столбец
  ///@param sort_order Параметр сортировки
  ///@param Client_name
  @Get(path: '/api/lessons')
  Future<chopper.Response<List<LessonFullNamesInDb>>> _apiLessonsGet({
    @Query('header') GetLessonHeader? header,
    @Query('full_data') bool? fullData,
    @Query('search') String? search,
    @Query('start_date') required String? startDate,
    @Query('end_date') required String? endDate,
    @Query('numbers') List<int>? numbers,
    @Query('semester_id') int? semesterId,
    @Query('faculty_id') int? facultyId,
    @Query('degree_studies') List<String?>? degreeStudies,
    @Query('directions') List<int>? directions,
    @Query('profiles') List<int>? profiles,
    @Query('courses') List<int>? courses,
    @Query('groups') List<int>? groups,
    @Query('teachers') List<int>? teachers,
    @Query('disciplines') List<int>? disciplines,
    @Query('places') List<int>? places,
    @Query('types') List<int>? types,
    @Query('theme_is_null') bool? themeIsNull,
    @Query('status') String? status,
    @Query('sort_by') LessonSortBy? sortBy,
    @Query('sort_order') SortOrder? sortOrder,
    @Header('Client_name') String? clientName,
  });

  ///Create Lesson
  ///@param Client_name
  Future<chopper.Response<int>> apiLessonsPost({
    String? clientName,
    required LessonCreateWithParams? body,
  }) {
    return _apiLessonsPost(clientName: clientName, body: body);
  }

  ///Create Lesson
  ///@param Client_name
  @Post(
    path: '/api/lessons',
    optionalBody: true,
  )
  Future<chopper.Response<int>> _apiLessonsPost({
    @Header('Client_name') String? clientName,
    @Body() required LessonCreateWithParams? body,
  });

  ///Get Lesson Short
  ///@param lesson_id
  Future<chopper.Response<LessonInDb>> apiLessonsLessonIdGet(
      {required int? lessonId}) {
    generatedMapping.putIfAbsent(LessonInDb, () => LessonInDb.fromJsonFactory);

    return _apiLessonsLessonIdGet(lessonId: lessonId);
  }

  ///Get Lesson Short
  ///@param lesson_id
  @Get(path: '/api/lessons/{lesson_id}')
  Future<chopper.Response<LessonInDb>> _apiLessonsLessonIdGet(
      {@Path('lesson_id') required int? lessonId});

  ///Update Lesson
  ///@param lesson_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiLessonsLessonIdPut({
    required int? lessonId,
    String? clientName,
    required LessonUpdateWithParams? body,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiLessonsLessonIdPut(
        lessonId: lessonId, clientName: clientName, body: body);
  }

  ///Update Lesson
  ///@param lesson_id
  ///@param Client_name
  @Put(
    path: '/api/lessons/{lesson_id}',
    optionalBody: true,
  )
  Future<chopper.Response<Status>> _apiLessonsLessonIdPut({
    @Path('lesson_id') required int? lessonId,
    @Header('Client_name') String? clientName,
    @Body() required LessonUpdateWithParams? body,
  });

  ///Delete Lesson
  ///@param lesson_id
  ///@param notify Уведомить пользователей
  ///@param Client_name
  Future<chopper.Response<Status>> apiLessonsLessonIdDelete({
    required int? lessonId,
    bool? notify,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiLessonsLessonIdDelete(
        lessonId: lessonId, notify: notify, clientName: clientName);
  }

  ///Delete Lesson
  ///@param lesson_id
  ///@param notify Уведомить пользователей
  ///@param Client_name
  @Delete(path: '/api/lessons/{lesson_id}')
  Future<chopper.Response<Status>> _apiLessonsLessonIdDelete({
    @Path('lesson_id') required int? lessonId,
    @Query('notify') bool? notify,
    @Header('Client_name') String? clientName,
  });

  ///Get Lesson Full
  ///@param lesson_id
  ///@param Client_name
  Future<chopper.Response<LessonFullInDb>> apiLessonsLessonIdFullGet({
    required int? lessonId,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(
        LessonFullInDb, () => LessonFullInDb.fromJsonFactory);

    return _apiLessonsLessonIdFullGet(
        lessonId: lessonId, clientName: clientName);
  }

  ///Get Lesson Full
  ///@param lesson_id
  ///@param Client_name
  @Get(path: '/api/lessons/{lesson_id}/full')
  Future<chopper.Response<LessonFullInDb>> _apiLessonsLessonIdFullGet({
    @Path('lesson_id') required int? lessonId,
    @Header('Client_name') String? clientName,
  });

  ///Update Lesson Status Cancel
  ///@param lesson_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiLessonsLessonIdCancelPut({
    required int? lessonId,
    String? clientName,
    required LessonCancelReason? body,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiLessonsLessonIdCancelPut(
        lessonId: lessonId, clientName: clientName, body: body);
  }

  ///Update Lesson Status Cancel
  ///@param lesson_id
  ///@param Client_name
  @Put(
    path: '/api/lessons/{lesson_id}/cancel',
    optionalBody: true,
  )
  Future<chopper.Response<Status>> _apiLessonsLessonIdCancelPut({
    @Path('lesson_id') required int? lessonId,
    @Header('Client_name') String? clientName,
    @Body() required LessonCancelReason? body,
  });

  ///Update Theme
  ///@param lesson_id
  ///@param theme
  ///@param Client_name
  Future<chopper.Response> apiLessonsLessonIdThemePut({
    required int? lessonId,
    required String? theme,
    String? clientName,
  }) {
    return _apiLessonsLessonIdThemePut(
        lessonId: lessonId, theme: theme, clientName: clientName);
  }

  ///Update Theme
  ///@param lesson_id
  ///@param theme
  ///@param Client_name
  @Put(
    path: '/api/lessons/{lesson_id}/theme',
    optionalBody: true,
  )
  Future<chopper.Response> _apiLessonsLessonIdThemePut({
    @Path('lesson_id') required int? lessonId,
    @Query('theme') required String? theme,
    @Header('Client_name') String? clientName,
  });

  ///Get Collisions
  ///@param weekday День недели
  ///@param parity Четность недели
  ///@param number Номер пары
  ///@param semester_id Идентификатор семестра
  ///@param type_id Тип пары
  ///@param discipline_id Идентификатор дисциплины
  ///@param place_id Идентификатор места
  ///@param groups Список идентификаторов групп
  ///@param teachers Список идентификаторов преподавателей
  ///@param is_remotely Дистанционная пара
  ///@param main_lesson_id Идентификатор основного занятия
  ///@param Client_name
  Future<chopper.Response<List<MainLessonCollision>>>
      apiMainLessonsCollisionGet({
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
    generatedMapping.putIfAbsent(
        MainLessonCollision, () => MainLessonCollision.fromJsonFactory);

    return _apiMainLessonsCollisionGet(
        weekday: weekday,
        parity: parity,
        number: number,
        semesterId: semesterId,
        typeId: typeId,
        disciplineId: disciplineId,
        placeId: placeId,
        groups: groups,
        teachers: teachers,
        isRemotely: isRemotely,
        mainLessonId: mainLessonId,
        clientName: clientName);
  }

  ///Get Collisions
  ///@param weekday День недели
  ///@param parity Четность недели
  ///@param number Номер пары
  ///@param semester_id Идентификатор семестра
  ///@param type_id Тип пары
  ///@param discipline_id Идентификатор дисциплины
  ///@param place_id Идентификатор места
  ///@param groups Список идентификаторов групп
  ///@param teachers Список идентификаторов преподавателей
  ///@param is_remotely Дистанционная пара
  ///@param main_lesson_id Идентификатор основного занятия
  ///@param Client_name
  @Get(path: '/api/main_lessons/collision')
  Future<chopper.Response<List<MainLessonCollision>>>
      _apiMainLessonsCollisionGet({
    @Query('weekday') required int? weekday,
    @Query('parity') int? parity,
    @Query('number') required int? number,
    @Query('semester_id') int? semesterId,
    @Query('type_id') int? typeId,
    @Query('discipline_id') int? disciplineId,
    @Query('place_id') int? placeId,
    @Query('groups') required List<int>? groups,
    @Query('teachers') List<int>? teachers,
    @Query('is_remotely') bool? isRemotely,
    @Query('main_lesson_id') int? mainLessonId,
    @Header('Client_name') String? clientName,
  });

  ///Main Lessons Export
  ///@param Client_name
  Future<chopper.Response> apiMainLessonsExportPost({
    String? clientName,
    required MainLessonExport? body,
  }) {
    return _apiMainLessonsExportPost(clientName: clientName, body: body);
  }

  ///Main Lessons Export
  ///@param Client_name
  @Post(
    path: '/api/main_lessons/export',
    optionalBody: true,
  )
  Future<chopper.Response> _apiMainLessonsExportPost({
    @Header('Client_name') String? clientName,
    @Body() required MainLessonExport? body,
  });

  ///Get Main Lessons
  ///@param header
  ///@param search Значение для поиска
  ///@param faculty_id Идентификатор факультета
  ///@param semester_id Идентификатор семестра
  ///@param numbers Список номеров занятий
  ///@param degree_studies Список степеней обучения
  ///@param directions Список идентификаторов направлений
  ///@param profiles Список идентификаторов профилей
  ///@param courses Список курсов
  ///@param groups Список идентификаторов групп
  ///@param teachers Список идентификаторов преподавателей
  ///@param disciplines Список идентификаторов дисциплин
  ///@param places Список идентификаторов мест занятий
  ///@param types Список идентификаторов типов занятий
  ///@param Client_name
  Future<chopper.Response<MainLessonResults>> apiMainLessonsGet({
    GetLessonHeader? header,
    String? search,
    int? facultyId,
    int? semesterId,
    List<int>? numbers,
    List<enums.DegreeStudy>? degreeStudies,
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
    generatedMapping.putIfAbsent(
        MainLessonResults, () => MainLessonResults.fromJsonFactory);

    return _apiMainLessonsGet(
        header: header,
        search: search,
        facultyId: facultyId,
        semesterId: semesterId,
        numbers: numbers,
        degreeStudies: degreeStudyListToJson(degreeStudies),
        directions: directions,
        profiles: profiles,
        courses: courses,
        groups: groups,
        teachers: teachers,
        disciplines: disciplines,
        places: places,
        types: types,
        clientName: clientName);
  }

  ///Get Main Lessons
  ///@param header
  ///@param search Значение для поиска
  ///@param faculty_id Идентификатор факультета
  ///@param semester_id Идентификатор семестра
  ///@param numbers Список номеров занятий
  ///@param degree_studies Список степеней обучения
  ///@param directions Список идентификаторов направлений
  ///@param profiles Список идентификаторов профилей
  ///@param courses Список курсов
  ///@param groups Список идентификаторов групп
  ///@param teachers Список идентификаторов преподавателей
  ///@param disciplines Список идентификаторов дисциплин
  ///@param places Список идентификаторов мест занятий
  ///@param types Список идентификаторов типов занятий
  ///@param Client_name
  @Get(path: '/api/main_lessons')
  Future<chopper.Response<MainLessonResults>> _apiMainLessonsGet({
    @Query('header') GetLessonHeader? header,
    @Query('search') String? search,
    @Query('faculty_id') int? facultyId,
    @Query('semester_id') int? semesterId,
    @Query('numbers') List<int>? numbers,
    @Query('degree_studies') List<String?>? degreeStudies,
    @Query('directions') List<int>? directions,
    @Query('profiles') List<int>? profiles,
    @Query('courses') List<int>? courses,
    @Query('groups') List<int>? groups,
    @Query('teachers') List<int>? teachers,
    @Query('disciplines') List<int>? disciplines,
    @Query('places') List<int>? places,
    @Query('types') List<int>? types,
    @Header('Client_name') String? clientName,
  });

  ///Create Main Lesson
  ///@param Client_name
  Future<chopper.Response<int>> apiMainLessonsPost({
    String? clientName,
    required MainLessonCreateWithParams? body,
  }) {
    return _apiMainLessonsPost(clientName: clientName, body: body);
  }

  ///Create Main Lesson
  ///@param Client_name
  @Post(
    path: '/api/main_lessons',
    optionalBody: true,
  )
  Future<chopper.Response<int>> _apiMainLessonsPost({
    @Header('Client_name') String? clientName,
    @Body() required MainLessonCreateWithParams? body,
  });

  ///Get Main Lesson
  ///@param main_lesson_id
  ///@param full_info Полная информация о занятии
  ///@param Client_name
  Future<chopper.Response> apiMainLessonsMainLessonIdGet({
    required int? mainLessonId,
    bool? fullInfo,
    String? clientName,
  }) {
    return _apiMainLessonsMainLessonIdGet(
        mainLessonId: mainLessonId, fullInfo: fullInfo, clientName: clientName);
  }

  ///Get Main Lesson
  ///@param main_lesson_id
  ///@param full_info Полная информация о занятии
  ///@param Client_name
  @Get(path: '/api/main_lessons/{main_lesson_id}')
  Future<chopper.Response> _apiMainLessonsMainLessonIdGet({
    @Path('main_lesson_id') required int? mainLessonId,
    @Query('full_info') bool? fullInfo,
    @Header('Client_name') String? clientName,
  });

  ///Update Main Lesson
  ///@param main_lesson_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiMainLessonsMainLessonIdPut({
    required int? mainLessonId,
    String? clientName,
    required MainLessonUpdateWithParams? body,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiMainLessonsMainLessonIdPut(
        mainLessonId: mainLessonId, clientName: clientName, body: body);
  }

  ///Update Main Lesson
  ///@param main_lesson_id
  ///@param Client_name
  @Put(
    path: '/api/main_lessons/{main_lesson_id}',
    optionalBody: true,
  )
  Future<chopper.Response<Status>> _apiMainLessonsMainLessonIdPut({
    @Path('main_lesson_id') required int? mainLessonId,
    @Header('Client_name') String? clientName,
    @Body() required MainLessonUpdateWithParams? body,
  });

  ///Delete Main Lesson
  ///@param main_lesson_id
  ///@param with_completed Вместе с завершенными
  ///@param notify Уведомить пользователей
  ///@param Client_name
  Future<chopper.Response<Status>> apiMainLessonsMainLessonIdDelete({
    required int? mainLessonId,
    bool? withCompleted,
    bool? notify,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiMainLessonsMainLessonIdDelete(
        mainLessonId: mainLessonId,
        withCompleted: withCompleted,
        notify: notify,
        clientName: clientName);
  }

  ///Delete Main Lesson
  ///@param main_lesson_id
  ///@param with_completed Вместе с завершенными
  ///@param notify Уведомить пользователей
  ///@param Client_name
  @Delete(path: '/api/main_lessons/{main_lesson_id}')
  Future<chopper.Response<Status>> _apiMainLessonsMainLessonIdDelete({
    @Path('main_lesson_id') required int? mainLessonId,
    @Query('with_completed') bool? withCompleted,
    @Query('notify') bool? notify,
    @Header('Client_name') String? clientName,
  });

  ///Get Main Lesson History
  ///@param main_lesson_id
  ///@param Client_name
  Future<chopper.Response<List<MainLessonHistory>>>
      apiMainLessonsMainLessonIdHistoryGet({
    required int? mainLessonId,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(
        MainLessonHistory, () => MainLessonHistory.fromJsonFactory);

    return _apiMainLessonsMainLessonIdHistoryGet(
        mainLessonId: mainLessonId, clientName: clientName);
  }

  ///Get Main Lesson History
  ///@param main_lesson_id
  ///@param Client_name
  @Get(path: '/api/main_lessons/{main_lesson_id}/history')
  Future<chopper.Response<List<MainLessonHistory>>>
      _apiMainLessonsMainLessonIdHistoryGet({
    @Path('main_lesson_id') required int? mainLessonId,
    @Header('Client_name') String? clientName,
  });

  ///Divide Main Lesson
  ///@param main_lesson_id
  ///@param Client_name
  Future<chopper.Response<int>> apiMainLessonsMainLessonIdDividePost({
    required int? mainLessonId,
    String? clientName,
  }) {
    return _apiMainLessonsMainLessonIdDividePost(
        mainLessonId: mainLessonId, clientName: clientName);
  }

  ///Divide Main Lesson
  ///@param main_lesson_id
  ///@param Client_name
  @Post(
    path: '/api/main_lessons/{main_lesson_id}/divide',
    optionalBody: true,
  )
  Future<chopper.Response<int>> _apiMainLessonsMainLessonIdDividePost({
    @Path('main_lesson_id') required int? mainLessonId,
    @Header('Client_name') String? clientName,
  });

  ///Create Journal
  ///@param Client_name
  Future<chopper.Response> apiJournalPost({
    String? clientName,
    required JournalCreate? body,
  }) {
    return _apiJournalPost(clientName: clientName, body: body);
  }

  ///Create Journal
  ///@param Client_name
  @Post(
    path: '/api/journal',
    optionalBody: true,
  )
  Future<chopper.Response> _apiJournalPost({
    @Header('Client_name') String? clientName,
    @Body() required JournalCreate? body,
  });

  ///Get Journal
  ///@param group_id
  ///@param discipline_id
  ///@param lesson_type_id
  Future<chopper.Response<Object>>
      apiJournalGroupsGroupIdDisciplinesDisciplineIdGet({
    required int? groupId,
    required int? disciplineId,
    int? lessonTypeId,
  }) {
    return _apiJournalGroupsGroupIdDisciplinesDisciplineIdGet(
        groupId: groupId,
        disciplineId: disciplineId,
        lessonTypeId: lessonTypeId);
  }

  ///Get Journal
  ///@param group_id
  ///@param discipline_id
  ///@param lesson_type_id
  @Get(path: '/api/journal/groups/{group_id}/disciplines/{discipline_id}')
  Future<chopper.Response<Object>>
      _apiJournalGroupsGroupIdDisciplinesDisciplineIdGet({
    @Path('group_id') required int? groupId,
    @Path('discipline_id') required int? disciplineId,
    @Query('lesson_type_id') int? lessonTypeId,
  });

  ///Get Production Calendar
  ///@param year Год
  Future<chopper.Response<List<ProductionCalendarDayInDb>>>
      apiProductionCalendarGet({required int? year}) {
    generatedMapping.putIfAbsent(ProductionCalendarDayInDb,
        () => ProductionCalendarDayInDb.fromJsonFactory);

    return _apiProductionCalendarGet(year: year);
  }

  ///Get Production Calendar
  ///@param year Год
  @Get(path: '/api/production_calendar')
  Future<chopper.Response<List<ProductionCalendarDayInDb>>>
      _apiProductionCalendarGet({@Query('year') required int? year});

  ///Update Production Calendar
  ///@param year Год
  ///@param Client_name
  Future<chopper.Response<List<ProductionCalendarDayInDb>>>
      apiProductionCalendarPut({
    required int? year,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(ProductionCalendarDayInDb,
        () => ProductionCalendarDayInDb.fromJsonFactory);

    return _apiProductionCalendarPut(year: year, clientName: clientName);
  }

  ///Update Production Calendar
  ///@param year Год
  ///@param Client_name
  @Put(
    path: '/api/production_calendar',
    optionalBody: true,
  )
  Future<chopper.Response<List<ProductionCalendarDayInDb>>>
      _apiProductionCalendarPut({
    @Query('year') required int? year,
    @Header('Client_name') String? clientName,
  });

  ///Create Production Calendar Day
  ///@param Client_name
  Future<chopper.Response<ProductionCalendarDayInDb>>
      apiProductionCalendarPost({
    String? clientName,
    required ProductionCalendarDayCreate? body,
  }) {
    generatedMapping.putIfAbsent(ProductionCalendarDayInDb,
        () => ProductionCalendarDayInDb.fromJsonFactory);

    return _apiProductionCalendarPost(clientName: clientName, body: body);
  }

  ///Create Production Calendar Day
  ///@param Client_name
  @Post(
    path: '/api/production_calendar',
    optionalBody: true,
  )
  Future<chopper.Response<ProductionCalendarDayInDb>>
      _apiProductionCalendarPost({
    @Header('Client_name') String? clientName,
    @Body() required ProductionCalendarDayCreate? body,
  });

  ///Delete Production Calendar
  ///@param year Год
  ///@param Client_name
  Future<chopper.Response<Status>> apiProductionCalendarDelete({
    required int? year,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiProductionCalendarDelete(year: year, clientName: clientName);
  }

  ///Delete Production Calendar
  ///@param year Год
  ///@param Client_name
  @Delete(path: '/api/production_calendar')
  Future<chopper.Response<Status>> _apiProductionCalendarDelete({
    @Query('year') required int? year,
    @Header('Client_name') String? clientName,
  });

  ///Get Production Calendar Day
  ///@param date Дата
  Future<chopper.Response<int>> apiProductionCalendarDayGet(
      {required String? date}) {
    return _apiProductionCalendarDayGet(date: date);
  }

  ///Get Production Calendar Day
  ///@param date Дата
  @Get(path: '/api/production_calendar/day')
  Future<chopper.Response<int>> _apiProductionCalendarDayGet(
      {@Query('date') required String? date});

  ///Update Production Calendar Day
  ///@param production_calendar_day_id
  ///@param Client_name
  Future<chopper.Response<Status>>
      apiProductionCalendarProductionCalendarDayIdPut({
    required int? productionCalendarDayId,
    String? clientName,
    required ProductionCalendarDayUpdate? body,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiProductionCalendarProductionCalendarDayIdPut(
        productionCalendarDayId: productionCalendarDayId,
        clientName: clientName,
        body: body);
  }

  ///Update Production Calendar Day
  ///@param production_calendar_day_id
  ///@param Client_name
  @Put(
    path: '/api/production_calendar/{production_calendar_day_id}',
    optionalBody: true,
  )
  Future<chopper.Response<Status>>
      _apiProductionCalendarProductionCalendarDayIdPut({
    @Path('production_calendar_day_id') required int? productionCalendarDayId,
    @Header('Client_name') String? clientName,
    @Body() required ProductionCalendarDayUpdate? body,
  });

  ///Delete Production Calendar Day
  ///@param production_calendar_day_id
  ///@param Client_name
  Future<chopper.Response<Status>>
      apiProductionCalendarProductionCalendarDayIdDelete({
    required int? productionCalendarDayId,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiProductionCalendarProductionCalendarDayIdDelete(
        productionCalendarDayId: productionCalendarDayId,
        clientName: clientName);
  }

  ///Delete Production Calendar Day
  ///@param production_calendar_day_id
  ///@param Client_name
  @Delete(path: '/api/production_calendar/{production_calendar_day_id}')
  Future<chopper.Response<Status>>
      _apiProductionCalendarProductionCalendarDayIdDelete({
    @Path('production_calendar_day_id') required int? productionCalendarDayId,
    @Header('Client_name') String? clientName,
  });

  ///Get Statistics
  ///@param Client_name
  Future<chopper.Response<Object>> apiStatisticsGet({String? clientName}) {
    return _apiStatisticsGet(clientName: clientName);
  }

  ///Get Statistics
  ///@param Client_name
  @Get(path: '/api/statistics')
  Future<chopper.Response<Object>> _apiStatisticsGet(
      {@Header('Client_name') String? clientName});

  ///Get Collisions
  ///@param date Дата
  ///@param time Время
  ///@param is_remotely Дистанционное событие сессии
  ///@param event_type_id Идентификатор типа события
  ///@param discipline_id Идентификатор дисциплины
  ///@param place_id Идентификатор места
  ///@param groups Список идентификаторов групп
  ///@param teachers Список идентификаторов преподавателей
  ///@param semester_id Идентификатор семестра
  ///@param session_event_id Идентификатор события сессии
  ///@param Client_name
  Future<chopper.Response<List<SessionEventCollision>>>
      apiSessionEventsCollisionGet({
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
    generatedMapping.putIfAbsent(
        SessionEventCollision, () => SessionEventCollision.fromJsonFactory);

    return _apiSessionEventsCollisionGet(
        date: date,
        time: time,
        isRemotely: isRemotely,
        eventTypeId: eventTypeId,
        disciplineId: disciplineId,
        placeId: placeId,
        groups: groups,
        teachers: teachers,
        semesterId: semesterId,
        sessionEventId: sessionEventId,
        clientName: clientName);
  }

  ///Get Collisions
  ///@param date Дата
  ///@param time Время
  ///@param is_remotely Дистанционное событие сессии
  ///@param event_type_id Идентификатор типа события
  ///@param discipline_id Идентификатор дисциплины
  ///@param place_id Идентификатор места
  ///@param groups Список идентификаторов групп
  ///@param teachers Список идентификаторов преподавателей
  ///@param semester_id Идентификатор семестра
  ///@param session_event_id Идентификатор события сессии
  ///@param Client_name
  @Get(path: '/api/session_events/collision')
  Future<chopper.Response<List<SessionEventCollision>>>
      _apiSessionEventsCollisionGet({
    @Query('date') required String? date,
    @Query('time') required String? time,
    @Query('is_remotely') bool? isRemotely,
    @Query('event_type_id') required int? eventTypeId,
    @Query('discipline_id') required int? disciplineId,
    @Query('place_id') int? placeId,
    @Query('groups') required List<int>? groups,
    @Query('teachers') required List<int>? teachers,
    @Query('semester_id') int? semesterId,
    @Query('session_event_id') int? sessionEventId,
    @Header('Client_name') String? clientName,
  });

  ///Session Events Export
  ///@param Client_name
  Future<chopper.Response> apiSessionEventsExportPost({
    String? clientName,
    required SessionEventExport? body,
  }) {
    return _apiSessionEventsExportPost(clientName: clientName, body: body);
  }

  ///Session Events Export
  ///@param Client_name
  @Post(
    path: '/api/session_events/export',
    optionalBody: true,
  )
  Future<chopper.Response> _apiSessionEventsExportPost({
    @Header('Client_name') String? clientName,
    @Body() required SessionEventExport? body,
  });

  ///Session Events Export Ical
  ///@param Client_name
  Future<chopper.Response> apiSessionEventsExportIcalPost({
    String? clientName,
    required ExportIcal? body,
  }) {
    return _apiSessionEventsExportIcalPost(clientName: clientName, body: body);
  }

  ///Session Events Export Ical
  ///@param Client_name
  @Post(
    path: '/api/session_events/export_ical',
    optionalBody: true,
  )
  Future<chopper.Response> _apiSessionEventsExportIcalPost({
    @Header('Client_name') String? clientName,
    @Body() required ExportIcal? body,
  });

  ///Get Session Events
  ///@param faculty_id Идентификатор факультета
  ///@param semester_id Идентификатор семестра
  ///@param date Дата события сессии
  ///@param directions Список идентификаторов направлений
  ///@param courses Список курсов
  ///@param places Список идентификаторов мест занятий
  ///@param groups Список идентификаторов групп
  ///@param teachers Список идентификаторов преподавателей
  ///@param Client_name
  Future<chopper.Response<SessionEventData>> apiSessionEventsGet({
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
    generatedMapping.putIfAbsent(
        SessionEventData, () => SessionEventData.fromJsonFactory);

    return _apiSessionEventsGet(
        facultyId: facultyId,
        semesterId: semesterId,
        date: date,
        directions: directions,
        courses: courses,
        places: places,
        groups: groups,
        teachers: teachers,
        clientName: clientName);
  }

  ///Get Session Events
  ///@param faculty_id Идентификатор факультета
  ///@param semester_id Идентификатор семестра
  ///@param date Дата события сессии
  ///@param directions Список идентификаторов направлений
  ///@param courses Список курсов
  ///@param places Список идентификаторов мест занятий
  ///@param groups Список идентификаторов групп
  ///@param teachers Список идентификаторов преподавателей
  ///@param Client_name
  @Get(path: '/api/session_events')
  Future<chopper.Response<SessionEventData>> _apiSessionEventsGet({
    @Query('faculty_id') int? facultyId,
    @Query('semester_id') int? semesterId,
    @Query('date') String? date,
    @Query('directions') List<int>? directions,
    @Query('courses') List<int>? courses,
    @Query('places') List<int>? places,
    @Query('groups') List<int>? groups,
    @Query('teachers') List<int>? teachers,
    @Header('Client_name') String? clientName,
  });

  ///Create Session Event
  ///@param Client_name
  Future<chopper.Response<int>> apiSessionEventsPost({
    String? clientName,
    required SessionEventCreateWithParams? body,
  }) {
    return _apiSessionEventsPost(clientName: clientName, body: body);
  }

  ///Create Session Event
  ///@param Client_name
  @Post(
    path: '/api/session_events',
    optionalBody: true,
  )
  Future<chopper.Response<int>> _apiSessionEventsPost({
    @Header('Client_name') String? clientName,
    @Body() required SessionEventCreateWithParams? body,
  });

  ///Update Session Event
  ///@param session_event_id
  ///@param Client_name
  Future<chopper.Response<Status>> apiSessionEventsSessionEventIdPut({
    required int? sessionEventId,
    String? clientName,
    required SessionEventUpdateWithParams? body,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiSessionEventsSessionEventIdPut(
        sessionEventId: sessionEventId, clientName: clientName, body: body);
  }

  ///Update Session Event
  ///@param session_event_id
  ///@param Client_name
  @Put(
    path: '/api/session_events/{session_event_id}',
    optionalBody: true,
  )
  Future<chopper.Response<Status>> _apiSessionEventsSessionEventIdPut({
    @Path('session_event_id') required int? sessionEventId,
    @Header('Client_name') String? clientName,
    @Body() required SessionEventUpdateWithParams? body,
  });

  ///Delete Session Event
  ///@param session_event_id
  ///@param notify Уведомить пользователей
  ///@param Client_name
  Future<chopper.Response<Status>> apiSessionEventsSessionEventIdDelete({
    required int? sessionEventId,
    bool? notify,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiSessionEventsSessionEventIdDelete(
        sessionEventId: sessionEventId, notify: notify, clientName: clientName);
  }

  ///Delete Session Event
  ///@param session_event_id
  ///@param notify Уведомить пользователей
  ///@param Client_name
  @Delete(path: '/api/session_events/{session_event_id}')
  Future<chopper.Response<Status>> _apiSessionEventsSessionEventIdDelete({
    @Path('session_event_id') required int? sessionEventId,
    @Query('notify') bool? notify,
    @Header('Client_name') String? clientName,
  });

  ///Get Users Telegram Ids
  Future<chopper.Response<List<String>>> apiTelegramUsersIdGet() {
    return _apiTelegramUsersIdGet();
  }

  ///Get Users Telegram Ids
  @Get(path: '/api/telegram/users/id')
  Future<chopper.Response<List<String>>> _apiTelegramUsersIdGet();

  ///Get Students Telegram Ids
  ///@param groups Список идентификаторов групп
  Future<chopper.Response<List<String>>> apiTelegramStudentsIdGet(
      {List<int>? groups}) {
    return _apiTelegramStudentsIdGet(groups: groups);
  }

  ///Get Students Telegram Ids
  ///@param groups Список идентификаторов групп
  @Get(path: '/api/telegram/students/id')
  Future<chopper.Response<List<String>>> _apiTelegramStudentsIdGet(
      {@Query('groups') List<int>? groups});

  ///Get Log Statuses
  ///@param Client_name
  Future<chopper.Response<Object>> apiLogsStatusesGet({String? clientName}) {
    return _apiLogsStatusesGet(clientName: clientName);
  }

  ///Get Log Statuses
  ///@param Client_name
  @Get(path: '/api/logs/statuses')
  Future<chopper.Response<Object>> _apiLogsStatusesGet(
      {@Header('Client_name') String? clientName});

  ///Get Log Modules
  ///@param Client_name
  Future<chopper.Response<List<LogModule>>> apiLogsModulesGet(
      {String? clientName}) {
    generatedMapping.putIfAbsent(LogModule, () => LogModule.fromJsonFactory);

    return _apiLogsModulesGet(clientName: clientName);
  }

  ///Get Log Modules
  ///@param Client_name
  @Get(path: '/api/logs/modules')
  Future<chopper.Response<List<LogModule>>> _apiLogsModulesGet(
      {@Header('Client_name') String? clientName});

  ///Get Log Entities
  ///@param Client_name
  Future<chopper.Response<List<LogEntity>>> apiLogsEntitiesGet(
      {String? clientName}) {
    generatedMapping.putIfAbsent(LogEntity, () => LogEntity.fromJsonFactory);

    return _apiLogsEntitiesGet(clientName: clientName);
  }

  ///Get Log Entities
  ///@param Client_name
  @Get(path: '/api/logs/entities')
  Future<chopper.Response<List<LogEntity>>> _apiLogsEntitiesGet(
      {@Header('Client_name') String? clientName});

  ///Get Log Actions
  ///@param Client_name
  Future<chopper.Response<List<LogAction>>> apiLogsActionsGet(
      {String? clientName}) {
    generatedMapping.putIfAbsent(LogAction, () => LogAction.fromJsonFactory);

    return _apiLogsActionsGet(clientName: clientName);
  }

  ///Get Log Actions
  ///@param Client_name
  @Get(path: '/api/logs/actions')
  Future<chopper.Response<List<LogAction>>> _apiLogsActionsGet(
      {@Header('Client_name') String? clientName});

  ///Get Logs
  ///@param module_id Идентификатор модуля
  ///@param entity_id Идентификатор сущности
  ///@param action_id Идентификатор действия
  ///@param user_id Идентификатор пользователя
  ///@param status Список статусов
  ///@param start_date Дата начала
  ///@param end_date Дата окончания
  ///@param page
  ///@param size
  ///@param Client_name
  Future<chopper.Response<PageLog>> apiLogsGet({
    int? moduleId,
    int? entityId,
    int? actionId,
    int? userId,
    List<LogStatusAttr>? status,
    String? startDate,
    String? endDate,
    int? page,
    int? size,
    String? clientName,
  }) {
    generatedMapping.putIfAbsent(PageLog, () => PageLog.fromJsonFactory);

    return _apiLogsGet(
        moduleId: moduleId,
        entityId: entityId,
        actionId: actionId,
        userId: userId,
        status: status,
        startDate: startDate,
        endDate: endDate,
        page: page,
        size: size,
        clientName: clientName);
  }

  ///Get Logs
  ///@param module_id Идентификатор модуля
  ///@param entity_id Идентификатор сущности
  ///@param action_id Идентификатор действия
  ///@param user_id Идентификатор пользователя
  ///@param status Список статусов
  ///@param start_date Дата начала
  ///@param end_date Дата окончания
  ///@param page
  ///@param size
  ///@param Client_name
  @Get(path: '/api/logs')
  Future<chopper.Response<PageLog>> _apiLogsGet({
    @Query('module_id') int? moduleId,
    @Query('entity_id') int? entityId,
    @Query('action_id') int? actionId,
    @Query('user_id') int? userId,
    @Query('status') List<LogStatusAttr>? status,
    @Query('start_date') String? startDate,
    @Query('end_date') String? endDate,
    @Query('page') int? page,
    @Query('size') int? size,
    @Header('Client_name') String? clientName,
  });
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);
