import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/data.controller.dart';

class DataScreen extends GetView<DataController> {
  const DataScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DataScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DataScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
