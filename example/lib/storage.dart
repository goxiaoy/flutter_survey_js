import 'package:shared_preferences/shared_preferences.dart';

Future<SharedPreferences> _getStorage() {
  return SharedPreferences.getInstance();
}

const _surveyKey = 'survey';
const _answerKey = 'answer';
Future storeSurvey(String survey) async {
  final prefs = await _getStorage();
  await prefs.setString(_surveyKey, survey);
}

Future clearSurvey() async {
  final prefs = await _getStorage();
  await prefs.remove(_surveyKey);
}

Future<String?> getSurvey() async {
  final prefs = await _getStorage();
  return await prefs.getString(_surveyKey);
}

Future storeAnswer(String answer) async {
  final prefs = await _getStorage();
  await prefs.setString(_answerKey, answer);
}

Future clearAnswer() async {
  final prefs = await _getStorage();
  await prefs.remove(_answerKey);
}

Future<String?> getAnswer() async {
  final prefs = await _getStorage();
  return await prefs.getString(_answerKey);
}
