import 'package:covx/constants/AppStyle.dart';
import 'package:covx/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initState() {
    super.initState();
    loadModel();
  }

  Future loadModel() async {
    // Tflite.close();
    // String res;
    // res = (await Tflite.loadModel(
    //     model: "assets/model.tflite", labels: "assets/labels.txt"))!;
    // print("Models loading status: $res");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cov - X"),
        foregroundColor: Colors.blue[100],
        backgroundColor: AppStyle.mainColor,
        centerTitle: true,
      ),
      backgroundColor: AppStyle.accentOff,
      body: const Column(children: [
        HomeCard(),
        HomeCard(),
        HomeCard(),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        backgroundColor: AppStyle.accentColor,
        child: Icon(Icons.add),
      ),
    );
  }
}
