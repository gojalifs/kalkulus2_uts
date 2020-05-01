import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uts/chart_divergen.dart';
import 'package:uts/chart_konvergen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

int value;
TextEditingController number = TextEditingController();

class _MyAppState extends State<MyApp> {
  Widget chartContainer;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("KALKULUS II"),
          ),
          //backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Column(
                children: <Widget>[
                  Text('''Ini Contoh Soal yg Konvergen'''),
                  Image(
                    height: 75,
                    width: 75,
                    image: AssetImage('assets/images/konvergen.png'),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(top: 10, left: 10),
                          child: Row(
                            children: <Widget>[
                              Text("Grafiknya Seperti Berikut : ")
                            ],
                          )),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: 10,
                      bottom: 25,
                    ),
                    height: 200,
                    child: chartContainer = SimpleLineChart.withSampleData(),
                  ),
                  Text('''f(x) = 1/x!
f(1) = 1/1! = 1
f(2) = 1/2! = 1/2
f(3) = 1/3! = 1/6
f(4) = 1/4! = 1/24
f(5) = 1/5! = 1/120
f(6) = 1/6! = 1/720'''),
                  Container(
                    padding: EdgeInsets.only(top: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('''Ini Contoh Soal yg Divergen'''),
                        Image(
                          height: 75,
                          width: 75,
                          image: AssetImage('assets/images/divergen.png'),
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(top: 10, left: 10),
                                child: Row(
                                  children: <Widget>[
                                    Text("Grafiknya Seperti Berikut : ")
                                  ],
                                ))
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 10,
                            bottom: 25,
                          ),
                          height: 200,
                          child: chartContainer =
                              SimpleLineChart2.withSampleData(),
                        ),
                        Text('''f(x) = x^-1
f(0.1)   = 0.1^-1 = 10  
f(0.25) = 0.25^-1 = 4
f(0.5)   = 0.5^-1 = 2
f(1)      = 1^-1 = 1
f(2)      = 2^-1 = 0.5
f(3)      = 3^-1 = 0.3''')
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }

  Widget box = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("COBA"),
      ],
    ),
  );

  factorial() {
    int numb = int.parse(number.text);
    int ans = 1;

    for (var i = 1; i <= numb; i++) {
      ans *= i;
    }

    setState(() {
      value = ans;
    });
  }
}
