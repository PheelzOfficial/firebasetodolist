import 'dart:developer';

import 'package:firebasetodolist/todo.dart';
import 'package:firebasetodolist/todos.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  TextEditingController addTask = TextEditingController();

  @override
  void initState() {
    initTodo();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    addTask.dispose();
  }

  initTodo() async {
    await Provider.of<Todo>(context, listen: false).fillTodos();
  }

  @override
  Widget build(BuildContext context) {
    final todoData = Provider.of<Todo>(context);
    // todoData.populateTodos();
    return Scaffold(
      // backgroundColor: Colors.yellow,

      body: Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          height: double.infinity,
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_back,
                          size: 40, color: Colors.green)),
                  IconButton(
                      onPressed: () {},
                      icon:
                          Icon(Icons.more_vert, size: 40, color: Colors.green)),
                ],
              ),
            ),
            SizedBox(height: 30),
            ListTile(
              leading: Icon(
                Icons.person,
                size: 60,
              ),
              title: Text("${todoData.todos.length} Tasks",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
              subtitle: Text("Personal",
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w700,
                      color: Colors.green)),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: todoData.todos.length,
                itemBuilder: (context, index) {
                  final todo = todoData.todos[index];
                  // for (var todo in todoData)
                  return TodoList(
                    title: todo["title"],
                    isDone: todo["isDone"],
                    todo: todo,
                    // id: todo["id"],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                        controller: addTask,
                        decoration: InputDecoration(
                          hintText: "Add new Tasks",
                          hintStyle: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 13.0,
                          ),
                        )),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      todoData.addTodo({
                        // "id": (todoData.todos.length + 1),
                        "isDone": false,
                        "title": addTask.text
                      });
                      addTask.clear();
                    },
                    child: Icon(Icons.add),
                    backgroundColor: Colors.green,
                  )
                ],
              ),
            )
          ])),
    );
  }
}
