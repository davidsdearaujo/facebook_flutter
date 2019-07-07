import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:dio/dio.dart';
import 'package:facebook/src/shared/models/story/stories_model.dart';

class StoryRepository {
  final _dio = BlocProvider.getDependency<Dio>();

  Future<StoriesModel> getStories() async {
    var response = await _dio.get("/story.json");
    return StoriesModel.fromJson(response.data);
  }
}
