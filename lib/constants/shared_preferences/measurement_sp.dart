import 'package:shared_preferences/shared_preferences.dart';

const String heightKey = 'heightKey';
const String weightKey = 'weightKey';



void heightvalue(int value)async{
 SharedPreferences prefs = await SharedPreferences.getInstance();
 prefs.setInt(heightKey, value);
}
void weightvalue(int value)async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setInt(weightKey, value);
}
void saveBMI(double bmiValue)async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setDouble('bmi', bmiValue);
}
