import 'dart:math';
import 'package:bmi/bmi_app/provider.dart';
import 'package:bmi/bmi_app/results.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePageBmi extends StatefulWidget {
  const HomePageBmi({Key? key}) : super(key: key);

  @override
  State<HomePageBmi> createState() => _HomePageBmiState();
}

class _HomePageBmiState extends State<HomePageBmi> {

  bool isMale = true;
  double height = 120.0;
  int weight = 60;
  int age = 25;
  double? result;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BmiProvider>(
      create: (BuildContext context)=>BmiProvider(),
      child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Body Math Index ',
            ),
            actions: [
              Switch(
                activeColor: Colors.white,
                inactiveThumbColor: Colors.black,
                // value: Provider.of<BmiProvider>(context).isSwitched,
                value:Provider.of<BmiProvider>(context).isSwitched,
                onChanged: (val) =>Provider.of<BmiProvider>(context,listen: false).isSwitch(val),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = !isMale;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: isMale ? Colors.teal : Colors.blueGrey,
                            ),
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.male,
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'Male',
                                  style: Theme.of(context).textTheme.headline2,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = !isMale;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: isMale ? Colors.blueGrey : Colors.teal,
                            ),
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.female,
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'Female',
                                  style: Theme.of(context).textTheme.headline2,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.blueGrey),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Height',
                          style:Theme.of(context).textTheme.headline2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toStringAsFixed(1),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 45.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              'CM',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25.0,
                              ),
                            ),
                          ],
                        ),
                        Slider(
                          value: height,
                          min: 80.0,
                          max: 200.0,
                          onChanged: (val) {
                            setState(() {
                              height = val;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.blueGrey,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(' Weight',
                                  style: Theme.of(context).textTheme.headline2),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                '$weight',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40.0,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    heroTag: 'weight--',
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    child: const Icon(
                                      Icons.remove,
                                      size: 30.0,
                                    ),
                                    mini: true,
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  FloatingActionButton(
                                    heroTag: 'weight++',
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    child: const Icon(
                                      Icons.add,
                                      size: 30.0,
                                    ),
                                    mini: true,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.blueGrey,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                ' Age',
                                style: Theme.of(context).textTheme.headline2,
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                '$age',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40.0,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    heroTag: 'age--',
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    child: const Icon(
                                      Icons.remove,
                                      size: 30.0,
                                    ),
                                    mini: true,
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  FloatingActionButton(
                                    heroTag: 'age++',
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    child: const Icon(
                                      Icons.add,
                                      size: 30.0,
                                    ),
                                    mini: true,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 16,
                  child: ElevatedButton(
                    onPressed: ()
                    {
                      result=weight/pow(height/100,2);
                      Navigator.push(context,MaterialPageRoute(builder:(context)=>ResultBmi(age, isMale, result!,)));
                    },
                    child: Text(
                      'Calculate',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
