// ignore_for_file: await_only_futures

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
  static String userSelectRegisterProfileKey = "userSelectRegisterProfileKey";
  static String userSelectMonthlyDayKey = "userSelectMonthlyDayKey";
  static String userSelectBiWeeklyDayKey = "userSelectBiWeeklyDayKey";
  static String userSelectBiWeeklyTwiceDayKey = "userSelectBiWeeklyTwiceDayKey";
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

  static Future<bool> saveUserProfilePosition(String? userProfilePosition) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(userProfilePositionKey, userProfilePosition!);
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
    return await preferences.setString(userSelectWeekDayKey, userSelectWeekDay!);
  }

  static Future<String?> getUserSelectWeekDay() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(userSelectWeekDayKey);
  }

  static Future<bool> saveUserSelectRegisterProfile(String? userSelectRegisterProfile) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(userSelectRegisterProfileKey,userSelectRegisterProfile!);
  }

  static Future<String?> getUserSelectRegisterProfile() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(userSelectRegisterProfileKey);
  }

  static Future<bool> saveUserSelectMonthlyDay(String? userSelectMonthlyDay) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(userSelectMonthlyDayKey, userSelectMonthlyDay!);
  }

  static Future<String?> getUserSelectMonthlyDay() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(userSelectMonthlyDayKey);
  }

  static Future<bool> saveUserSelectBiWeeklyDay(String? userSelectBiWeeklyDay) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(userSelectBiWeeklyDayKey, userSelectBiWeeklyDay!);
  }

  static Future<String?> getUserSelectBiWeeklyDay() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(userSelectBiWeeklyDayKey);
  }

  static Future<bool> saveUserSelectBiWeeklyTwiceDay(String? userSelectBiWeeklyTwiceDay) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(userSelectBiWeeklyTwiceDayKey, userSelectBiWeeklyTwiceDay!);
  }

  static Future<String?> getUserSelectBiWeeklyTwiceDay() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(userSelectBiWeeklyTwiceDayKey);
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
  ProfileDetails.userMobileNumber = (await LocalDataSaver.getUserMobileNumber());
  ProfileDetails.userPassword = (await LocalDataSaver.getUserPassword());
  ProfileDetails.userProfilePosition = (await LocalDataSaver.getUserProfilePosition());
  ProfileDetails.userPaidPerc = (await LocalDataSaver.getUserPaidPerc());
  ProfileDetails.userSelectWeekDay = (await LocalDataSaver.getUserSelectWeekDay());
  ProfileDetails.userSelectRegisterProfile = (await LocalDataSaver.getUserSelectRegisterProfile());
  ProfileDetails.userSelectMonthlyDate = (await LocalDataSaver.getUserSelectMonthlyDay());
  ProfileDetails.userSelectBiWeeklyDay = (await LocalDataSaver.getUserSelectBiWeeklyDay());
  ProfileDetails.userSelectBiWeeklyTwiceDay = (await LocalDataSaver.getUserSelectBiWeeklyTwiceDay());
}

Future<void> removeDataSF() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();

  preferences.remove("userNameKey");
  preferences.remove("userMobileNumberKey");
  preferences.remove("userEmailKey");
  preferences.remove("userProfilePositionKey");
  preferences.remove("userUidKey");
  preferences.remove("userPasswordKey");
  preferences.remove("userPaidPercKey");
  preferences.remove("userSelectWeekDayKey");
  preferences.remove("userSelectRegisterProfileKey");
  preferences.remove("userSelectMonthlyDayKey");
  preferences.remove("userSelectBiWeeklyDayKey");
  preferences.remove("userSelectBiWeeklyTwiceDayKey");
}
