import 'package:isar/isar.dart';
part 'source.g.dart';

@Collection()
class Source {
  @Id()
  int ids = Isar.autoIncrement;
  String? id;
  String? name;
}
