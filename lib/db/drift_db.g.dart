// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_db.dart';

// ignore_for_file: type=lint
class $TodosTable extends Todos with TableInfo<$TodosTable, Todo> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TodosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 6, maxTextLength: 10),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'body', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  @override
  late final GeneratedColumn<int> category = GeneratedColumn<int>(
      'category', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _ordersMeta = const VerificationMeta('orders');
  @override
  late final GeneratedColumn<int> orders = GeneratedColumn<int>(
      'orders', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _orders2Meta =
      const VerificationMeta('orders2');
  @override
  late final GeneratedColumn<int> orders2 = GeneratedColumn<int>(
      'orders2', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _orders3Meta =
      const VerificationMeta('orders3');
  @override
  late final GeneratedColumn<int> orders3 = GeneratedColumn<int>(
      'orders3', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, content, category, orders, orders2, orders3];
  @override
  String get aliasedName => _alias ?? 'todos';
  @override
  String get actualTableName => 'todos';
  @override
  VerificationContext validateIntegrity(Insertable<Todo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('body')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['body']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    }
    if (data.containsKey('orders')) {
      context.handle(_ordersMeta,
          orders.isAcceptableOrUnknown(data['orders']!, _ordersMeta));
    }
    if (data.containsKey('orders2')) {
      context.handle(_orders2Meta,
          orders2.isAcceptableOrUnknown(data['orders2']!, _orders2Meta));
    }
    if (data.containsKey('orders3')) {
      context.handle(_orders3Meta,
          orders3.isAcceptableOrUnknown(data['orders3']!, _orders3Meta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Todo map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Todo(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}body'])!,
      category: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}category']),
      orders: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}orders']),
      orders2: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}orders2']),
      orders3: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}orders3']),
    );
  }

  @override
  $TodosTable createAlias(String alias) {
    return $TodosTable(attachedDatabase, alias);
  }
}

class Todo extends DataClass implements Insertable<Todo> {
  final int id;
  final String title;
  final String content;
  final int? category;
  final int? orders;
  final int? orders2;
  final int? orders3;
  const Todo(
      {required this.id,
      required this.title,
      required this.content,
      this.category,
      this.orders,
      this.orders2,
      this.orders3});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['body'] = Variable<String>(content);
    if (!nullToAbsent || category != null) {
      map['category'] = Variable<int>(category);
    }
    if (!nullToAbsent || orders != null) {
      map['orders'] = Variable<int>(orders);
    }
    if (!nullToAbsent || orders2 != null) {
      map['orders2'] = Variable<int>(orders2);
    }
    if (!nullToAbsent || orders3 != null) {
      map['orders3'] = Variable<int>(orders3);
    }
    return map;
  }

  TodosCompanion toCompanion(bool nullToAbsent) {
    return TodosCompanion(
      id: Value(id),
      title: Value(title),
      content: Value(content),
      category: category == null && nullToAbsent
          ? const Value.absent()
          : Value(category),
      orders:
          orders == null && nullToAbsent ? const Value.absent() : Value(orders),
      orders2: orders2 == null && nullToAbsent
          ? const Value.absent()
          : Value(orders2),
      orders3: orders3 == null && nullToAbsent
          ? const Value.absent()
          : Value(orders3),
    );
  }

  factory Todo.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Todo(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      content: serializer.fromJson<String>(json['content']),
      category: serializer.fromJson<int?>(json['category']),
      orders: serializer.fromJson<int?>(json['orders']),
      orders2: serializer.fromJson<int?>(json['orders2']),
      orders3: serializer.fromJson<int?>(json['orders3']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'content': serializer.toJson<String>(content),
      'category': serializer.toJson<int?>(category),
      'orders': serializer.toJson<int?>(orders),
      'orders2': serializer.toJson<int?>(orders2),
      'orders3': serializer.toJson<int?>(orders3),
    };
  }

  Todo copyWith(
          {int? id,
          String? title,
          String? content,
          Value<int?> category = const Value.absent(),
          Value<int?> orders = const Value.absent(),
          Value<int?> orders2 = const Value.absent(),
          Value<int?> orders3 = const Value.absent()}) =>
      Todo(
        id: id ?? this.id,
        title: title ?? this.title,
        content: content ?? this.content,
        category: category.present ? category.value : this.category,
        orders: orders.present ? orders.value : this.orders,
        orders2: orders2.present ? orders2.value : this.orders2,
        orders3: orders3.present ? orders3.value : this.orders3,
      );
  @override
  String toString() {
    return (StringBuffer('Todo(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('category: $category, ')
          ..write('orders: $orders, ')
          ..write('orders2: $orders2, ')
          ..write('orders3: $orders3')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, title, content, category, orders, orders2, orders3);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Todo &&
          other.id == this.id &&
          other.title == this.title &&
          other.content == this.content &&
          other.category == this.category &&
          other.orders == this.orders &&
          other.orders2 == this.orders2 &&
          other.orders3 == this.orders3);
}

class TodosCompanion extends UpdateCompanion<Todo> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> content;
  final Value<int?> category;
  final Value<int?> orders;
  final Value<int?> orders2;
  final Value<int?> orders3;
  const TodosCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.content = const Value.absent(),
    this.category = const Value.absent(),
    this.orders = const Value.absent(),
    this.orders2 = const Value.absent(),
    this.orders3 = const Value.absent(),
  });
  TodosCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String content,
    this.category = const Value.absent(),
    this.orders = const Value.absent(),
    this.orders2 = const Value.absent(),
    this.orders3 = const Value.absent(),
  })  : title = Value(title),
        content = Value(content);
  static Insertable<Todo> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? content,
    Expression<int>? category,
    Expression<int>? orders,
    Expression<int>? orders2,
    Expression<int>? orders3,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (content != null) 'body': content,
      if (category != null) 'category': category,
      if (orders != null) 'orders': orders,
      if (orders2 != null) 'orders2': orders2,
      if (orders3 != null) 'orders3': orders3,
    });
  }

  TodosCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? content,
      Value<int?>? category,
      Value<int?>? orders,
      Value<int?>? orders2,
      Value<int?>? orders3}) {
    return TodosCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      category: category ?? this.category,
      orders: orders ?? this.orders,
      orders2: orders2 ?? this.orders2,
      orders3: orders3 ?? this.orders3,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (content.present) {
      map['body'] = Variable<String>(content.value);
    }
    if (category.present) {
      map['category'] = Variable<int>(category.value);
    }
    if (orders.present) {
      map['orders'] = Variable<int>(orders.value);
    }
    if (orders2.present) {
      map['orders2'] = Variable<int>(orders2.value);
    }
    if (orders3.present) {
      map['orders3'] = Variable<int>(orders3.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TodosCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('category: $category, ')
          ..write('orders: $orders, ')
          ..write('orders2: $orders2, ')
          ..write('orders3: $orders3')
          ..write(')'))
        .toString();
  }
}

abstract class _$LocalDatabase extends GeneratedDatabase {
  _$LocalDatabase(QueryExecutor e) : super(e);
  late final $TodosTable todos = $TodosTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [todos];
}
