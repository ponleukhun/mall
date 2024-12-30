import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class MallListPage extends StatelessWidget {
  MallListPage({Key? key}) : super(key: key);

  final MallListLogic logic = Get.put(MallListLogic());
  final MallListState state = Get.find<MallListLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: null,
              style: TextStyle(height: 0.7),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  hintText: "Search",
                  hintStyle: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w400),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.black, width: 0.7))),
            ),
            ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    height: 10,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Text("all"),
                  );
                })
          ],
        ),
      ),
    );
  }
}
