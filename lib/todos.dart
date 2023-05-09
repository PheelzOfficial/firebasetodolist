import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'todo.dart';

class TodoList extends StatelessWidget {
  // final int id;
  final String title;
  final bool isDone;
  final Map<String, dynamic> todo;
  // final Function doneSetter;
  // final Function deleteSetter;
  const TodoList(
      {super.key,
      // required this.id,
      required this.title,
      required this.isDone,
      required this.todo
      // required this.doneSetter,
      // required this.deleteSetter,
      });

  @override
  Widget build(BuildContext context) {
    final todoData = Provider.of<Todo>(context);
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        bottom: 15,
      ),
      height: 60.0,
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(10.0)),
      child: ListTile(
        onTap: () {
          todoData.setDone(todo);
        },
        leading: isDone
            ? Icon(Icons.check_box)
            : Icon(
                Icons.check_box_outline_blank,
                color: Colors.green,
              ),
        title: Text(title,
            style: TextStyle(
              decoration: isDone ? TextDecoration.lineThrough : null,
            )),
        trailing: IconButton(
          onPressed: () {
            todoData.deleteTodo(todo);
          },
          icon: Icon(Icons.delete),
          color: Colors.green,
        ),
      ),
    );
  }
}
