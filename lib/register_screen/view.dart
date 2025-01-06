import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mall/route/app_route.dart';

import 'logic.dart';
import 'state.dart';

class RegisterScreenPage extends StatelessWidget {
  RegisterScreenPage({Key? key}) : super(key: key);

  final RegisterScreenLogic logic = Get.put(RegisterScreenLogic());
  final RegisterScreenState state = Get.find<RegisterScreenLogic>().state;

  @override
  Widget build(BuildContext context) {
    bool _isObscure = true;
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 150,
              child: Image.network(
                'https://www.chipmong.com/wp-content/uploads/2020/01/timeline5a.png',
                loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  }
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              (loadingProgress.expectedTotalBytes ?? 1)
                          : null,
                    ),
                  );
                },
                errorBuilder: (BuildContext context, Object error,
                    StackTrace? stackTrace) {
                  return Center(
                    child: Text(
                      'Image failed to load',
                      style: TextStyle(color: Colors.red),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "ឈ្មោះអ្នកប្រើប្រាស់",
                  style: TextStyle(fontWeight: FontWeight.w100),
                ),
              ],
            ),
            //Number phone TextFeild
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(1, 1),
                        blurRadius: 1)
                  ]),
              child: TextField(
                controller: null,
                style: TextStyle(height: 0.7),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                  ),
                  hintText: "សូមបញ្ចូលឈ្មោះរបស់អ្នក",
                  hintStyle: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w100),
                ),
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "លេខកូដសម្ងាត់",
                  style: TextStyle(fontWeight: FontWeight.w100),
                ),
              ],
            ),
            //password Textfeild
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(1, 1),
                        blurRadius: 1)
                  ]),
              child: TextField(
                obscureText: _isObscure,
                controller: null,
                style: TextStyle(height: 0.7),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                  ),
                  hintText: "សូមបញ្ចូលលេខកូដសម្ងាត់",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                  ),
                  hintStyle: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w100),
                ),
                onChanged: (value) {},
              ),
            ),
            GestureDetector(
              //go to Home page by tap on container
              onTap: () {
                Get.toNamed(AppRoute.HOME);
              },
              child: Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.only(
                  left: 120,
                  top: 10,
                ),
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(1, 1),
                          blurRadius: 1)
                    ]),
                child: Text(
                  "Register",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
