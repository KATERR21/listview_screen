import 'package:flutter/material.dart';

void main() {
  runApp(const ListViewScreen());
}

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
          body: MyStatefulWidget()
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Icon(Icons.circle),
          title: Text('Item $index',
            style: const TextStyle(
              color: Colors.deepOrange,
              fontSize: 21,
              fontWeight: FontWeight.w400,),),
          selected: index == _selectedIndex,
          onTap: () {
            setState(() {
              _selectedIndex = index;
            });
          },
        );
      },
    );
  }
}