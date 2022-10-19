import 'package:flutter/material.dart';
import 'package:resize_drag_widget/resize_drag_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'resize_drag_widget Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'resize_drag_widget Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          child: ResizeAndDragWidget(
            initHeight: 300,
            initWidth: 300,
            showSquare: true,
            draggable: true,
            bgColor: Colors.blueAccent,
            squareColor: Colors.white,
            changed: (width, height, tranformOffset) {
              print(
                  "width: $width, height: $height, tranformOffset: $tranformOffset");
            },
            child: Image.network(
                "https://t7.baidu.com/it/u=4198287529,2774471735&fm=193&f=GIF"),
          ),
        ));
  }
}
