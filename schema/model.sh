#rm -rf ./flutter_survey_js_model/lib/src/model
export MSYS_NO_PATHCONV=1
rm -rf `find ./flutter_survey_js_model/lib/src/model -mindepth 1  -name "*" ! -name "*survey_questions_inner.dart"`
docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli:latest generate -i /local/surveyjs.json -g dart-dio -o /local/flutter_survey_js_model -c /local/flutter_survey_js_model/config.json
cd ./flutter_survey_js_model
flutter pub get
dart pub run build_runner build --delete-conflicting-outputs