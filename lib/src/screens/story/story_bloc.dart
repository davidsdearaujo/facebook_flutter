import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:facebook/src/shared/repositories/story_repository.dart';

class StoryBloc extends BlocBase{
  final _repository = BlocProvider.getDependency<StoryRepository>();
  
}