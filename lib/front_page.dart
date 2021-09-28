import 'package:flutter/material.dart';

class FromPage extends StatefulWidget {
  FromPage({Key? key}) : super(key: key);

  @override
  State<FromPage> createState() => _FromPageState();
}

class _FromPageState extends State<FromPage> {
  TextEditingController num1 = TextEditingController();

  TextEditingController num2 = TextEditingController();

  int sum = 0;
  num ans = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CALCULATOR'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$sum",
                style: TextStyle(fontSize: 20),
              ),
              TextFormField(
                  controller: num1,
                  decoration: InputDecoration(
                    labelText: "first number",
                    hintText: "1234",
                    border: OutlineInputBorder(),
                  ),
                  autovalidateMode: AutovalidateMode.always,
                  validator: (value) {
                    RegExp regex = RegExp(r'\d$');
                    if (!regex.hasMatch(value!)) {
                      return 'Only numbers are allowed';
                    }
                  }),
              TextFormField(
                  controller: num2,
                  decoration: InputDecoration(
                    labelText: "second number",
                    hintText: "67888",
                    border: OutlineInputBorder(),
                  ),
                  autovalidateMode: AutovalidateMode.always,
                  validator: (value) {
                    RegExp regex = RegExp(r'\d$');
                    if (!regex.hasMatch(value!)) {
                      return 'Only numbers are allowed';
                    }
                  }),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  int n1 = int.parse(num1.text);
                  int n2 = int.parse(num2.text);
                  setState(() {
                    sum = n1 + n2;
                  });
                },
                child: Text("Add"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  int n1 = int.parse(num1.text);
                  int n2 = int.parse(num2.text);
                  setState(() {
                    sum = n1 - n2;
                  });
                },
                child: Text("Sub"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  int n1 = int.parse(num1.text);
                  int n2 = int.parse(num2.text);
                  setState(() {
                    sum = n1 * n2;
                  });
                },
                child: Text("mul"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  int n1 = int.parse(num1.text);
                  int n2 = int.parse(num2.text);
                  setState(() {
                    ans = n1 / n2;
                  });
                },
                child: Text("Div"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
