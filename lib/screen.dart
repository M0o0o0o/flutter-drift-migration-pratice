import 'package:dirft_migration_pratice/db/drift_db.dart';
import 'package:dirft_migration_pratice/db/todo_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Screen extends ConsumerStatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  ConsumerState<Screen> createState() => _ScreenState();
}

class _ScreenState extends ConsumerState<Screen> {
  @override
  Widget build(BuildContext context) {
    List<Todo> todos = ref.watch(todoProvider);
    return Column(
      children: [
        renderAddTodoBtn(),
        const SizedBox(height: 50),
        Expanded(child: renderTodos(todos)),
      ],
    );
  }

  Widget renderAddTodoBtn() {
    return TextButton(
      onPressed: () async {
        await ref
            .read(todoProvider.notifier)
            .addTodo("my todo", 'my todo content', 1);
      },
      child: const Text('새로운 todo 추가'),
    );
  }

  Widget renderTodos(List<Todo> todos) {
    return SizedBox(
      height: 500,
      child: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (BuildContext context, int i) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
              'id=${todos[i].id} title=${todos[i].title} content=${todos[i].content} day=${todos[i].createdAt}'),
        ),
      ),
    );
  }
}
