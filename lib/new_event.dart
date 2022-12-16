import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget {
  const NewEventScreen({Key? key}) : super(key: key);

  @override
  State<NewEventScreen> createState() => _NewEventScreenState();
}

class _NewEventScreenState extends State<NewEventScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Add New Event"),
        backgroundColor: Colors.deepPurple,
        bottomOpacity: 25,

      ),
      body: Center(
        child: Column(
          children: [
            Center(

              child: Padding(
                padding: const EdgeInsets.fromLTRB(5,210,5,10),

                child: TextField(

                  controller: _textEditingController,
                  autofocus: false,
                  decoration: InputDecoration(
                    filled: true,

                    fillColor: Colors.deepPurple,
                    hintText: "Events",
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(Icons.calendar_month),

                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.deepPurple),
                      borderRadius: BorderRadius.circular(20),
                    )

                  ),
                ),
              ),
            ),
            Container(
              width: 400.0,

              child: Builder(
                builder: (context) {
                  return ElevatedButton(onPressed: () {
                    String event = _textEditingController.text;
                    Navigator.of(context).pop(event);
                  },
                    child: Text("Add"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[400],

                    )





                  );
                }
              ),
            ),

          ],
        ),
      ),
    );
  }
}

