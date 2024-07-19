class TodoModel {
  List todoList  = [];
}

class Todos {
  late String title, url;

  Todos({required this.title, required this.url});

  factory Todos.fromMap(Map m1) {
    return Todos(title: m1['title'], url: m1['url']);
  }
}
