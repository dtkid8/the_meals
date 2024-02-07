import 'package:drift/drift.dart';

class FavoriteEntity extends Table {
  TextColumn get id => text().named("id")();
  TextColumn get name => text().named("name")();
  TextColumn get image => text().named('body')();
}