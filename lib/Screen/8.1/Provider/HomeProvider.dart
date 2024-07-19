import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:json/Screen/8.1/Model/HomeModel.dart';

class TodosProvider extends ChangeNotifier
{
   List<Todos> todoList = [];

   Future<List> jsonParsing()
   async {
      String json = await rootBundle.loadString('assets/json/today.json');
      List photo = jsonDecode(json);
      return photo;
   }

   Future<void> fromList()
   async {
      List todos = await jsonParsing();
      todoList = todos.map((e)=>Todos.fromMap(e),).toList();
      notifyListeners();
   }
   TodosProvider()
   {
      fromList();
   }


}