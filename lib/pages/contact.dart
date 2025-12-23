import 'package:fistapp/pages/calc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final items = List<String>.generate(100, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    
    List mydata = ['apple', 'banana', 'papaya'];
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Navigator.push(context,MaterialPageRoute(
              builder: (context)=> const CalculatePage())
              );
          },
          leading: Icon(Icons.apple),
          title: Text(mydata[index]),
        );
      },
      itemCount: mydata.length,
    );
  }
}
