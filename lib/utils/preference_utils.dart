import 'package:shared_preferences/shared_preferences.dart';

class PreferenceUtils
{
  static late SharedPreferences pref;

  static void save<T>(String key, T data) async
  {
    if(key.isEmpty) throw const PreferenceException("Key cannot be empty");
    if(data == null) throw const PreferenceException("Value cannot be empty");

    await _loadInstance();
     
    if(T.runtimeType == bool){
      pref.setBool(key, data as bool);
      return;
    } 

    if(T.runtimeType == int){
      pref.setInt(key, data as int);
      return;
    } 

    if(T.runtimeType == String){
      pref.setString(key, data as String);
      return;
    } 

    if(T.runtimeType == double)
    {
      pref.setDouble(key, data as double);
      return;
    }

  }

  static Future<T> load<T>(String key) async
  {
    if(key.isEmpty) throw const PreferenceException("Key cannot be empty");

    await _loadInstance();

    if(T.runtimeType == bool) return pref.getBool(key) as T;
    if(T.runtimeType == int) return pref.getInt(key) as T;
    if(T.runtimeType == String) return pref.getString(key) as T;
    if(T.runtimeType == double) return pref.getDouble(key) as T;

    return null as T;
  }

  void delete(String key) async => await pref.remove(key);

  static _loadInstance() async => pref = await SharedPreferences.getInstance();
  
}

class PreferenceException implements Exception{
  final String msg;
  const PreferenceException(this.msg);

  @override
  String toString() => "SharedPreferenceException: $msg";
}