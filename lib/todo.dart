import 'package:flutter_riverpod/flutter_riverpod.dart';

class Todo {
  // 1. Todo 객체
  final bool isCompletad;

  final String descriotion;

  Todo(this.isCompletad, this.descriotion);
}

// 2. Provider 생성 (provider는 Todo() 데이터를 관리한다.)

final todoProvider = Provider<Todo>((ref) {
  return Todo(true, "공부하기");
});
