import 'package:flutter/material.dart';

class CalculatePage extends StatefulWidget {
  const CalculatePage({super.key});

  @override
  _CalculatePageState createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
  var price = TextEditingController();
  var amount = TextEditingController();
  var change = TextEditingController();
  double _total = 0;
  double _change = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Duidui calculator"),
        backgroundColor: const Color.fromARGB(255, 255, 156, 189)
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text("Calculate",
            textAlign: TextAlign.center, 
              style: 
                TextStyle(fontFamily: 'maa', 
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
                backgroundColor: const Color.fromARGB(255, 255, 156, 189),),
                ),
            SizedBox(height: 10),
            Image.asset("assets/kitty.jpg", width: 100,height: 100,),
            SizedBox(height: 10),
            Image.network('https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExOXp3b3NpbzJiYTlxN2xibmVraHltMzJseHd5eHNubDRsN2F6N2R0cCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/wsUuw16j6oyxLLRnnK/giphy.gif' , height: 70, width: 70,),
            SizedBox(height: 10),
            priceTextField(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: amountTextField(),
            ),
            SizedBox(height: 10),
            calculateButton(),
            Padding(padding: const EdgeInsets.all(8.0), child: showTotalText()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: receiveMoneyTextField(),
            ),
            SizedBox(height: 10),
            changeCalculateButton(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: showChangeText(), 
            ),
          ],
        ),
      ),
    );
  }

//custom widget
  Widget priceTextField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: price,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Price per item',
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }

  Widget amountTextField() {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: TextField(
        controller: amount,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Amount of items',
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }


  Widget calculateButton() {
    return ElevatedButton(
      onPressed: () {
        if (price.text.isNotEmpty && amount.text.isNotEmpty) {
          setState(() {
            _total = double.parse(price.text) * double.parse(amount.text);
          });
        }
      },
      child: Text("Calculate Total"),
    );
  }

  Widget showTotalText() {
    return Text("total : $_total Baht", textAlign: TextAlign.center, );
  }

  Widget receiveMoneyTextField() {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: TextField(
        controller: change,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Get Money',
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }

  Widget changeCalculateButton() {
    return ElevatedButton(
      onPressed: () {
        if (price.text.isNotEmpty && amount.text.isNotEmpty) {
          setState(() {
            _change = double.parse(change.text) - _total;
          });
        }
      },
      child: Text("Calculate Change"),
    );
  }

  Widget showChangeText() {
    return Text("Change : $_change Baht", textAlign: TextAlign.center, );
  }
}
