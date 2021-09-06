import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  static String id = "result_screen";

  ResultPage(
      {required this.bmi, required this.interpretation, required this.note});
  final String bmi;
  final String note;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kActiveColour,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blueGrey,
          title: Center(
              child: Text(
            "Your BMI Result",
            style: TextStyle(color: Colors.amberAccent),
          )),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.amber, width: 4),
                  borderRadius: BorderRadius.circular(50)),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      bmi,
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Divider(
                      thickness: 3,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    note,
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                        color: kElementTextStyleColour),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      interpretation,
                      style: kLabelTextStyle(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, left: 80, right: 80, bottom: 4),
                    child: Divider(
                      thickness: 3,
                      color: Colors.black,
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            )
          ],
        ));
  }
}
