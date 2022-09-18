import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();}

class _MyHomePageState extends State<MyHomePage> {
     @override
  Widget build(BuildContext context) {
        return Scaffold(
      appBar: AppBar(
        title:
        Text('Flutter GridView Objects',style: TextStyle(color:Colors.white,fontSize: 18.0)),
        centerTitle: true),
      body:
            GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 1/1,
              children: [
                GestureDetector(
                  onTap: () => print('THE SUN ON CLICKED!'),
                  child: Card(
                    child : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.sunny),
                        Text('THE SUN')
                      ], // ColumnChildren
              )
            ),
          ),
                GestureDetector(
                  onTap: () => print('THE MOON ON CLICKED!'),
                  child: Card(
                      child : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.brightness_3),
                          Text('THE MOON')
                        ], // ColumnChildren
                      )
                  ),
                ),
                GestureDetector(
                  onTap: () => print('THE STAR ON CLICKED!'),
                  child: Card(
                      child : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star_outlined),
                          Text('THE STAR')
                        ], // ColumnChildren
                      )
                  ),
                ),
        ], // GridViewChildren
      )
    );
  }
}
