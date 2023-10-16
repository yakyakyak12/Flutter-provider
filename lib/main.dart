import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod2/todo.dart';

void main() {
  runApp(
    ProviderScope(
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoPage(),
    );
  }
}

// 2. 위젯을 ConsumerWidget으로 만들면 Provider에 접근할 수 있습니다.

class TodoPage extends ConsumerWidget {
  const TodoPage({super.key});

  // 3. ConsunerWidget 클래스의 build 메서드는 widgetRef를 참조할 수 있다.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 4. ref를 통해 Provider가 관리하는 상태(데이터)에 접근할 수 있다.
    // 5. ref.read()는 상태값을 한번만 수신할 때 사용한다.
    // 6. ref.watch()는 상태값이 변경되는 것을 계속 수신할 때 사용한다.
    // 7. Provider는 상태 변경이 될 수 없기 때문에 read()로 수신한다.
    Todo todo = ref.read(todoProvider);
    return Scaffold(
      body: Center(
        child: Text(
          "완료 : ${todo.isCompletad}, 내용 : ${todo.descriotion}",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
    throw UnimplementedError();
  }
}
