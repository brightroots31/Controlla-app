import 'package:controlla/shared/auth/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalDataSaver {
  static String userNameKey = "userNameKey";
  static String userMobileNumberKey = "userMobileNumberKey";
  static String userEmailKey = "userEmailKey";
  static String userProfilePositionKey = "userProfilePositionKey";
  static String userUidKey = "userUidKey";
  static String userPasswordKey = "userPasswordKey";
  static String userPaidPercKey = "userPaidPercKey";
  static String userSelectWeekDayKey = "userSelectWeekDayKey";
  static String userLogKey = "UserLogKey";

  static Future<bool> saveUserName(String? userName) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(userNameKey, userName!);
  }

  static Future<String?> getUserName() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(userNameKey);
  }

  static Future<bool> saveUserUid(String? userUid) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(userUidKey, userUid!);
  }

  static Future<String?> getUserUid() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(userUidKey);
  }

  static Future<bool> saveUserMobileNumber(String? userMobileNumber) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(userMobileNumberKey, userMobileNumber!);
  }

  static Future<String?> getUserMobileNumber() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(userMobileNumberKey);
  }

  static Future<bool> saveUserEmail(String? userEmail) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(userEmailKey, userEmail!);
  }

  static Future<String?> getUserEmail() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(userEmailKey);
  }

  static Future<bool> saveUserProfilePosition(
      String? userProfilePosition) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(
        userProfilePositionKey, userProfilePosition!);
  }

  static Future<String?> getUserProfilePosition() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(userProfilePositionKey);
  }

  static Future<bool> saveUserPassword(String? userPassword) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(userPasswordKey, userPassword!);
  }

  static Future<String?> getUserPassword() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(userPasswordKey);
  }

  static Future<bool> saveUserPaidPerc(String? userPaidPerc) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(userPaidPercKey, userPaidPerc!);
  }

  static Future<String?> getUserPaidPerc() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(userPaidPercKey);
  }

  static Future<bool> saveUserSelectWeekDay(String? userSelectWeekDay) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(
        userSelectWeekDayKey, userSelectWeekDay!);
  }

  static Future<String?> getUserSelectWeekDay() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(userSelectWeekDayKey);
  }

  static Future<bool> saveUserLogData(bool isUserLoggedIn) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setBool(userLogKey, isUserLoggedIn);
  }

  static Future<bool?> getUserLogData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.getBool(userLogKey);
  }
}

Future<void> fetchDataSF() async {
  ProfileDetails.userName = (await LocalDataSaver.getUserName());
  ProfileDetails.userUid = (await LocalDataSaver.getUserUid());
  ProfileDetails.userEmail = (await LocalDataSaver.getUserEmail());
  ProfileDetails.userMobileNumber =
      (await LocalDataSaver.getUserMobileNumber());
  ProfileDetails.userPassword = (await LocalDataSaver.getUserPassword());
  ProfileDetails.userProfilePosition =
      (await LocalDataSaver.getUserProfilePosition());
  ProfileDetails.userPaidPerc = (await LocalDataSaver.getUserPaidPerc());
  ProfileDetails.userSelectWeekDay =
      (await LocalDataSaver.getUserSelectWeekDay());
}
