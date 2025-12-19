import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    List mydata = ['apple', 'banana', 'papaya'];
    return ListView(
      children: [
        ListTile(onTap: () {}, 
        leading: Icon(Icons.apple), 
        title: Text(mydata[0]),
        subtitle: Text('This is an apple'),
        trailing: FlutterLogo(),
        ),
        ListTile(onTap: () {}, 
        leading: FlutterLogo(), 
        title: Text(mydata[1])
        ),
        ListTile(onTap: () {}, 
        leading: FlutterLogo(), 
        title: Text(mydata[2])
        ),
      ],
    );
  }
}
