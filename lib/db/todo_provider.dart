import 'package:dirft_migration_pratice/db/dbProvider.dart';
import 'package:dirft_migration_pratice/db/drift_db.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final StateNotifierProvider<TodoNotifier, List<Todo>> todoProvider =
    StateNotifierProvider((ref) {
  LocalDatabase localDatabase = ref.watch(dbProvider);

  return TodoNotifier(database: localDatabase);
});

class TodoNotifier extends StateNotifier<List<Todo>> {
  final LocalDatabase database;

  TodoNotifier({required this.database}) : super([]) {
    findAllTodos();
  }

  void findAllTodos() async {
    state = await database.select(database.todos).get();
  }

  Future<void> addTodo(String title, String content, int category) async {
    int newTodoId = await database.into(database.todos).insert(
          TodosCompanion.insert(
            title: title,
            content: content,
            category: Value(category),
          ),
        );
    Todo newTodo =
        Todo(id: newTodoId, title: title, content: content, category: category);

    state = [...state, newTodo];
  }
}
