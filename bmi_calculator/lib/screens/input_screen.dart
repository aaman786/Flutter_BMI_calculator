import 'package:bmi_calculator/calcy_Brain.dart';
import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../coponents/containerAndContent.dart';
import '../coponents/roudButton.dart';

int age = 15;
int weight = 25;
int height = 174;

class InputPage extends StatefulWidget {
  static String id = "input_screen";
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kActiveColour,
      appBar: AppBar(
        backgroundColor: kActiveColour,
        title: Center(
            child: Text(
          "BMI Calculator",
          style: TextStyle(color: Colors.white),
        )),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = gender.male;
                      });
                    },
                    child: InputPageContainer(
                        //flutter tenary is used here for the shorting the hard coded part of dart
                        colour: selectedGender == gender.male
                            ? kActiveColour
                            : kInActiveColour,
                        containerChild: GenderContent(
                          genderIcon: Icons.male,
                          genderText: "Male",
                        )),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = gender.female;
                      });
                    },
                    child: InputPageContainer(
                      colour: selectedGender == gender.female
                          ? kActiveColour
                          : kInActiveColour,
                      containerChild: GenderContent(
                        genderIcon: Icons.female,
                        genderText: "Female",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: InputPageContainer(
            colour: kInActiveColour,
            containerChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Height", style: kLabelTextStyle()),
                Text(
                  height.toString(),
                  style: kElementTextStyle(),
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      thumbColor: Colors.blue,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayColor: Colors.amber,
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0)),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120,
                    max: 220,
                    activeColor: Colors.pink,
                    inactiveColor: Colors.white,
                    onChanged: (double newVal) {
                      setState(() {
                        height = newVal.toInt();
                      });
                    },
                  ),
                )
              ],
            ),
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InputPageContainer(
                    colour: kInActiveColour,
                    containerChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Weight",
                          style: kLabelTextStyle(),
                        ),
                        Center(
                          child: Text(
                            weight.toString(),
                            style: kElementTextStyle(),
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: Icons.add,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            RoundIconButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                icon: Icons.remove)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: InputPageContainer(
                    colour: kInActiveColour,
                    containerChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Age",
                          style: kLabelTextStyle(),
                        ),
                        Center(
                          child: Text(
                            age.toString(),
                            style: kElementTextStyle(),
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              icon: Icons.add,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            RoundIconButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                icon: Icons.remove)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ), // because used initial page route. down!,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: TextButton(
          onPressed: () {
            CalculatorBrain calc =
                CalculatorBrain(height: height, weight: weight);
            String bmi = calc.calculateBMI();
            String note = calc.getResult();
            String interpritation = calc.getInterpretation();

            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ResultPage(
                          bmi: bmi,
                          note: note,
                          interpretation: interpritation,
                        )));
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 4, right: 2, left: 2, top: 4),
            child: Center(
                child: Text(
              "Calculate BMI",
              style: TextStyle(fontSize: 34),
            )),
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.yellow[600]),
          ),
        ),
      ),
    );
  }
}
