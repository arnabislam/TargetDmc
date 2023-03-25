import 'package:flutter/material.dart';

import 'package:get/get.dart';

class DialogviewView extends GetView {
  const DialogviewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var data=Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text('DialogviewView'),
        centerTitle: true,
      ),
      body:  Column(
        children: [
          TextButton(onPressed: (){
            Get.back();
          }, child: Text("previous"),),

          Container(
            color: Colors.red,
            height: 150,
            width: double.infinity,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

          Row(
            children: [
              Icon(Icons.person),
              Text("Name: ${data[0]}",),
            ],
          ),   Row(
            children: [
              Icon(Icons.email),
              Text("email: ${data[1]}",),
            ],
          ),   Row(
            children: [
              Icon(Icons.phone),
              Text("Phone: ${data[2]}",),
            ],
          ),

        ],
      )
          )
        ],
      ),
    );
  }
}
