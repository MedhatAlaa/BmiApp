import 'package:flutter/material.dart';

class ResultBmi extends StatelessWidget {

  final bool gender;
  final double result;
  final int age;

  String get resultPhrase
  {
    String resultText='';
    if(result>=30)
    {
      resultText='Obese';
    }
    else if(result>25 && result<30)
    {
      resultText='OverWeight';
    }
    else if(result>=18.0 && result<=24.9)
    {
      resultText='Normal';
    }
    else {
      resultText='Thin';
    }
    return resultText;
  }

  const ResultBmi(this.age, this.gender, this.result, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Result',
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Gender : ${gender?'Male':'Female'}',
              style: Theme
                  .of(context)
                  .textTheme
                  .headline3,
            ),
            Text(
              'Result : ${result.toStringAsFixed(1)}',
              style: Theme
                  .of(context)
                  .textTheme
                  .headline3,
            ),
            Text(
              'Healthiness : $resultPhrase',
              style: Theme
                  .of(context)
                  .textTheme
                  .headline3,
              textAlign: TextAlign.center,
            ),
            Text(
              'Age : $age',
              style: Theme
                  .of(context)
                  .textTheme
                  .headline3,
            ),
          ],
        ),
      ),
    );
  }
}
