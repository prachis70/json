import 'package:flutter/material.dart';
import 'package:json/Screen/8.1/Provider/HomeProvider.dart';
import 'package:provider/provider.dart';

class home_Page extends StatelessWidget {
  const home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    TodosProvider todosProvider=Provider.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          centerTitle: true,
          bottomOpacity: 3,
          elevation: 3,
          shadowColor: Colors.white,
          title: Text(
            'J S O N ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: todosProvider.todoList.length,
          itemBuilder: (context, index) => Card(
            margin: EdgeInsets.all(7),
            color: Colors.black38,
            child: ListTile(
              title: Text(
                todosProvider.todoList[index].title,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
              leading: Container(
                height: 150,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                      todosProvider.todoList[index].url,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
