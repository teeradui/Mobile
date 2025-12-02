import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teerady shop',
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: const Color.fromARGB(255, 237, 37, 137),
        ),
      ),
      home: const MyHomePage(title: 'Duidui calculator'),
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
  var price = TextEditingController();
  var amount = TextEditingController();
  var change = TextEditingController();
  double _total = 0;
  double _change = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            priceTextField(),
            Text("Change Calculation", style: TextStyle(fontFamily: 'maa', fontSize: 24),),
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
    return Text("total : $_total Baht");
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
    return ElevatedButton(onPressed: () {
        if (price.text.isNotEmpty && amount.text.isNotEmpty) {
          setState(() {
            _change = double.parse(change.text) - _total;
          });
        }
      }, 
      child: Text("Calculate Change"));
  }

  Widget showChangeText() {
    return Text("Change : $_change Baht");
  }
}
