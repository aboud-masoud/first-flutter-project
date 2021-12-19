import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counterEven = 0;
  int counterOdd = 0;
  int counterMulti = 2;
  double counterDev = 100000;

  void _incrementCounter() {
    setState(() {
      if (counterEven % 2 != 0) {
        counterEven++;
      } else {
        counterEven = counterEven + 2;
      }

      if (counterOdd % 2 == 0) {
        counterOdd++;
      } else {
        counterOdd = counterOdd + 2;
      }
    });
  }

  void _multiWith2() {
    setState(() {
      counterMulti = counterMulti * 2;
    });
  }

  void _devOn2() {
    setState(() {
      counterDev = counterDev / 2;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (counterEven == 0) {
        return;
      } else {
        counterEven--;
      }

      if (counterOdd == 0) {
        return;
      } else {
        counterOdd = counterOdd - 2;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text("mahmoud"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "zawji",
              style: TextStyle(color: Colors.purple, fontSize: 30),
            ),
            Text(
              "$counterEven",
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              "fardee",
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              "$counterOdd",
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              "Multi",
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              "$counterMulti",
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              "Dev",
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              "$counterDev",
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        children: [
          SizedBox(width: 20),
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.plus_one),
          ),
          SizedBox(width: 20),
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'decrement',
            child: const Icon(Icons.exposure_minus_1),
          ),
          SizedBox(width: 20),
          FloatingActionButton(
            onPressed: _multiWith2,
            child: const Icon(Icons.star),
          ),
          SizedBox(width: 20),
          FloatingActionButton(
            onPressed: _devOn2,
            child: const Icon(Icons.add_ic_call),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
