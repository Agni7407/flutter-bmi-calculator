import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: const Color.fromARGB(221, 8, 8, 8),
        appBar: AppBar(
          backgroundColor: Colors.black26,
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(children: [
          Expanded(
            child: Row(children: [
              Expanded(
                child: ReusableCont(),
              ),
              Expanded(
                child: ReusableCont(),
              ),
            ]),
          ),
          Expanded(
            child: ReusableCont(),
          ),
          Expanded(
            child: Row(children: [
              Expanded(
                child: ReusableCont(),
              ),
              Expanded(
                child: ReusableCont(),
              ),
            ]),
          ),
        ]));
  }
}

class ReusableCont extends StatelessWidget {
  const ReusableCont({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.black26, borderRadius: BorderRadius.circular(10)),
    );
  }
}
