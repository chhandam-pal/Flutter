import 'package:event_scheduler/new_event.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {

  final List<Widget> _list = [





  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("Event Scheduler"),
          backgroundColor: Colors.deepPurple,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
        ),
        body: ListView.separated(


            itemCount: _list.length,
            itemBuilder: (context, index) => _list[index],

            separatorBuilder: (context,index){
              return Divider();
            },
        ),
        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              onPressed: () async{
                String text =  await Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewEventScreen()));
                setState(() {
                  _list.add(Container(
                    padding: const EdgeInsets.all(10.0),

                    child: ListTile(title: Center(child: Text(text)),
                    tileColor: Colors.white,contentPadding: EdgeInsets.all(10.0),

                    ),
                  ));
                });
              },
              backgroundColor: Colors.deepPurple,
              child: Icon(Icons.add),
            );
          }
        ),
      ),
    );
  }
}
