// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_drift_database.dart';

// ignore_for_file: type=lint
class $FavoriteEntityTable extends FavoriteEntity
    with TableInfo<$FavoriteEntityTable, FavoriteEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FavoriteEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'body', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, image];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'favorite_entity';
  @override
  VerificationContext validateIntegrity(Insertable<FavoriteEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('body')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['body']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  FavoriteEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FavoriteEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}body'])!,
    );
  }

  @override
  $FavoriteEntityTable createAlias(String alias) {
    return $FavoriteEntityTable(attachedDatabase, alias);
  }
}

class FavoriteEntityData extends DataClass
    implements Insertable<FavoriteEntityData> {
  final String id;
  final String name;
  final String image;
  const FavoriteEntityData(
      {required this.id, required this.name, required this.image});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['body'] = Variable<String>(image);
    return map;
  }

  FavoriteEntityCompanion toCompanion(bool nullToAbsent) {
    return FavoriteEntityCompanion(
      id: Value(id),
      name: Value(name),
      image: Value(image),
    );
  }

  factory FavoriteEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FavoriteEntityData(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      image: serializer.fromJson<String>(json['image']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'image': serializer.toJson<String>(image),
    };
  }

  FavoriteEntityData copyWith({String? id, String? name, String? image}) =>
      FavoriteEntityData(
        id: id ?? this.id,
        name: name ?? this.name,
        image: image ?? this.image,
      );
  @override
  String toString() {
    return (StringBuffer('FavoriteEntityData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('image: $image')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, image);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FavoriteEntityData &&
          other.id == this.id &&
          other.name == this.name &&
          other.image == this.image);
}

class FavoriteEntityCompanion extends UpdateCompanion<FavoriteEntityData> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> image;
  final Value<int> rowid;
  const FavoriteEntityCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.image = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FavoriteEntityCompanion.insert({
    required String id,
    required String name,
    required String image,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        image = Value(image);
  static Insertable<FavoriteEntityData> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? image,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (image != null) 'body': image,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FavoriteEntityCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<String>? image,
      Value<int>? rowid}) {
    return FavoriteEntityCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (image.present) {
      map['body'] = Variable<String>(image.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavoriteEntityCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('image: $image, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$LocalDriftDatabase extends GeneratedDatabase {
  _$LocalDriftDatabase(QueryExecutor e) : super(e);
  late final $FavoriteEntityTable favoriteEntity = $FavoriteEntityTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [favoriteEntity];
}
