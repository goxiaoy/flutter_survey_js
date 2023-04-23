rm -rf ./surveyjs_model/lib/src/model
export MSYS_NO_PATHCONV=1
docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli:latest generate -i /local/surveyjs.yaml -g dart-dio -o /local/surveyjs_model -c /local/surveyjs_model/config.json
cd ./surveyjs_model
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs