import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController textEditingController = TextEditingController();
  bool isItEmpty = false;
  String input='';
  String sumaCalculata = '';

  bool validateTextField(String userInput) {
    input = userInput;
    if (userInput.isEmpty || double.tryParse(userInput) == null) {
      setState(() {
        isItEmpty = true;
        sumaCalculata = '';
      });
      return false;
    }
    setState(() {
      isItEmpty = false;
      double calcul;
      calcul = 4.5 * double.parse(input);
      sumaCalculata = calcul.toString() + ' RON';
    });
    return true;
  }

  /*
  void convert() {
    setState(() {
      sumaCalculata = 4.5 * double.parse(input);
    });
  }
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.blue),
        title: Text('Currency Convertor'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network('https://media.business-review.eu/unsafe/420x250/smart/filters:contrast(5):quality(80)/business-review.eu/wp-content/uploads/2018/01/bani.jpg'),

            Container(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                    hintText: 'enter the amount in EUR',
                    errorText: isItEmpty ? 'please enter a number' : null,
                ),

                //onChanged: (value) => input = value,
              ),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0x60FFFFFF),
                onPrimary: Colors.black,
              ),
              onPressed: () {
                validateTextField(textEditingController.text);
                //convert;
                },
              child: Text('CONVERT!')
            ),

            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                sumaCalculata,
                style: TextStyle(
                  color: Color(0xA0000000),
                  fontSize: 36.0
                ),
              )
              //child: Text(sumaCalculata.toString() + ' RON')
            ),

          ],
        ),
      ),
    );
  }
}