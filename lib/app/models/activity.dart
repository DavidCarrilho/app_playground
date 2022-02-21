
import '../core/const.dart';
import 'models.dart';

class Activity {
  final ActivityTypeEnum type;
  final String description;
  final List<Exercise> exercises;
  final String gitUrl;
  Activity({
    required this.type,
    required this.description,
    required this.exercises,
    required this.gitUrl,
  });

}
