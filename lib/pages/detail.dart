import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  // const DetailPage({Key? key}) : super(key: key);
  final v1, v2, v3, v4;
  DetailPage(this.v1, this.v2, this.v3, this.v4);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var _v1, _v2, _v3, _v4;
  @override
  void initState() {
    //TODO: implement initState
    super.initState();
    _v1 = widget.v1;
    _v2 = widget.v2;
    _v3 = widget.v3;
    _v4 = widget.v4;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        backgroundColor: const Color.fromARGB(255, 255, 156, 189),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Text(
              _v1,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(_v2, textAlign: TextAlign.center),
            SizedBox(height: 5),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(_v3),
            ),
            SizedBox(height: 10),
            RichText(
              text: TextSpan(
                children: [
                  const WidgetSpan(child: SizedBox(width: 16)),
                  TextSpan(text: _v4),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
