// import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Todo extends ChangeNotifier {
  List<Map<String, dynamic>> todos = [];

  final db = FirebaseFirestore.instance;

  Future<void> fillTodos() async {
    final fbTodos = await db.collection("Todos").get();
    // print(fbTodos);
    fbTodos.docs.forEach((doc) {
      todos.add(doc.data());
    });
    notifyListeners();
  }

  void addTodo(Map<String, dynamic> todo) async {
    await db.collection("Todos").add(todo);
    todos.add(todo);
    notifyListeners();
  }

  void deleteTodo(Map<String, dynamic> todo) async {
    todos.remove(todo);
    await db.collection("Todos").doc(todo['id']).delete();
    notifyListeners();
  }

  void setDone(Map<String, dynamic> todo) async {
    todo['isDone'] = !todo['isDone'];
    await db.collection("Todos").doc(todo['id']).update(todo);
    notifyListeners();
  }
}
