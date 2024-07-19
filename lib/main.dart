import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screen/8.1/Provider/HomeProvider.dart';
import 'Screen/8.1/view/HomePage.dart';

void main()
{
  runApp(MyApp());
}
class MyApp  extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodosProvider(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: home_Page(),
      ),
    );
  }
}
