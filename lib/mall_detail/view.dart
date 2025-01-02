import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class MallDetailPage extends StatelessWidget {
  MallDetailPage({Key? key}) : super(key: key);

  final MallDetailLogic logic = Get.put(MallDetailLogic());
  final MallDetailState state = Get.find<MallDetailLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Mall Detail"),
        backgroundColor: Colors.white,
      ),
      body: Container(),
    );
  }
}
