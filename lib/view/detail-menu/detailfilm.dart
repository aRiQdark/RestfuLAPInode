import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class detailfilm extends StatelessWidget {
  const detailfilm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 21, 22, 31),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 21, 22, 31),
        elevation: 0,
    leading: IconButton(onPressed: () => Get.back(), icon: Icon(Icons.arrow_back_ios_new_outlined)),
      title: Text("Sonic The Hedgehog"),
      ),
body: ListView(
  children: [
    
  ],
),
    );
  }
}