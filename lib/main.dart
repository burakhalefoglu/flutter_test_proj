import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CustomWidget()
  ));
}

class CustomWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var tests = ['test1', 'test2'];

    return Scaffold(
          appBar: AppBar(
            title: const Text("Hello World"),
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(itemCount: tests.length,
                    itemBuilder: (BuildContext context, int index){
                      return Text(tests[index]);
                    })
              ),
              Center(
                  child: ElevatedButton(
                    onPressed: () {
                      var alert = const AlertDialog(
                        title: Text("Clicked"),
                      );
                      showDialog(context: context, builder: (BuildContext context)=> alert);
                    },
                    child: const Text("Click me!"),
                    ),
              ),
            ],
          ),
        );
  }
}
