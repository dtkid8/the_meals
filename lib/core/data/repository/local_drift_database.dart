import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
// ignore: depend_on_referenced_packages
import 'package:sqlite3/sqlite3.dart'; 
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';
import 'package:the_meals/core/data/entity/favorite/favorite_entity.dart';

part 'local_drift_database.g.dart';

@DriftDatabase(tables: [FavoriteEntity])
class LocalDriftDatabase extends _$LocalDriftDatabase {
  LocalDriftDatabase() : super(_openConnection());

  Future<List<FavoriteEntityData>> get allFavorite => select(favoriteEntity).get();

  Future<FavoriteEntityData?> isFavorite(String id) {
    return (select(favoriteEntity)..where((t) => t.id.equals(id))).getSingleOrNull();
  }

  Future<int> addFavorite(FavoriteEntityCompanion entry) {
    return into(favoriteEntity).insert(entry);
  }

  Future<int> deleteFavorite(String id) {
    return (delete(favoriteEntity)..where((t) => t.id.equals(id))).go();
  }

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));

    // Also work around limitations on old Android versions
    if (Platform.isAndroid) {
      await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    }

    // Make sqlite3 pick a more suitable location for temporary files - the
    // one from the system may be inaccessible due to sandboxing.
    final cachebase = (await getTemporaryDirectory()).path;
    // We can't access /tmp on Android, which sqlite3 would try by default.
    // Explicitly tell it about the correct temporary directory.
    sqlite3.tempDirectory = cachebase;

    return NativeDatabase.createInBackground(file);
  });
}
