rm -rf ./flutter_survey_js_model/lib/src/model
export MSYS_NO_PATHCONV=1
docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli:latest generate -i /local/surveyjs.yaml -g dart-dio -o /local/flutter_survey_js_model -c /local/flutter_survey_js_model/config.json
cd ./flutter_survey_js_model
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs