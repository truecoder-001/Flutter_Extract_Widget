import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      body: Center(
        child: Column(
          children: [
            StudentRow(
              studentImage: Image.asset('images/student.jpg'),
              name: 'John,',
              age: '15',
              address: 'qwerty',
              place: 'asdfghj',
            ),

            StudentRow(
              studentImage: Image.asset('images/student.jpg'),
              name: 'John,',
              age: '15',
              address: 'qwerty',
              place: 'asdfghj',
            ),
            StudentRow(
              studentImage: Image.asset('images/student.jpg'),
              name: 'John,',
              age: '15',
              address: 'qwerty',
              place: 'asdfghj',
            ),
            StudentRow(
              studentImage: Image.asset('images/student.jpg'),
              name: 'John,',
              age: '15',
              address: 'qwerty',
              place: 'asdfghj',
            ),
            StudentRow(
              studentImage: Image.asset('images/student.jpg'),
              name: 'John,',
              age: '15',
              address: 'qwerty',
              place: 'asdfghj',
            ),
            StudentRow(
              studentImage: Image.asset('images/student.jpg'),
              name: 'John,',
              age: '15',
              address: 'qwerty',
              place: 'asdfghj',
            ),
            StudentRow(
              studentImage: Image.asset('images/student.jpg'),
              name: 'Jish,',
              age: '15',
              address: 'qwerty',
              place: 'asdfghj',
            ),
          ],
        ),
      ),
    );
  }
}

class StudentRow extends StatelessWidget {
  final Image? studentImage;
  final String name;
  final String age;
  final String address;
  final String place;

  const StudentRow({
    Key? key,
    required this.studentImage,
    required this.name,
    required this.age,
    required this.address,
    required this.place,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CircleAvatar(
            radius: 45,
            child: studentImage,
          ),
        ),
        Expanded(
            child: Container(
          margin: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children:[
              Text(name),
              Text(age),
              Text(address),
              Text(place),
            ],
          ),
        ))
      ],
    );
  }
}
