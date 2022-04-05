import 'package:flutter/material.dart';
class inputpage extends StatefulWidget {
  const inputpage({Key? key}) : super(key: key);

  @override
  State<inputpage> createState() => _inputpageState();
}

class _inputpageState extends State<inputpage> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  double? _result;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('calculator')),
          centerTitle: true,
          backgroundColor: Colors.pinkAccent,
        ),
        body: SafeArea(

          child: Center(
            child: Column(
              children: [
                    SizedBox(height: 20),
                    TextField(
                      controller: _heightController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText:'height in cm',
                        icon: Icon(Icons.trending_up)
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: _weightController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'weight in kg',
                        icon: Icon(Icons.line_weight)
                      ),
                    ),
                    SizedBox(height: 15),
                    ElevatedButton(onPressed: (){}, child: Text(
                      "calculate",
                      style: TextStyle(color: Colors.white),
                    ),), 



                    SizedBox(height: 15),
                    Text(
                      "_result",
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 19.4,
                        fontWeight: FontWeight.w500,
                      ),
                    )
              ],
            ),

            ),
          ),

      ),
    );
  }
}
