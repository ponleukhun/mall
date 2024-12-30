import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khmer_fonts/khmer_fonts.dart';
import 'package:mall/route/app_route.dart';

import 'logic.dart';
import 'state.dart';

class LoginPage extends StatelessWidget {
  bool? value = true;
  bool _isObscure = true;

  LoginPage({
    Key? key,
    this.value,
  }) : super(key: key);

  final LoginLogic logic = Get.put(LoginLogic());
  final LoginState state = Get.find<LoginLogic>().state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Register",
                          style: TextStyle(fontSize: 15, color: Colors.pink),
                        ),
                      )
                    ],
                  ),
                  Image.network(
                    'https://www.chipmong.com/wp-content/uploads/2020/01/timeline5a.png',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "លេខទូរសព្ទ",
                        style: TextStyle(fontWeight: FontWeight.w100),
                      ),
                    ],
                  ),
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
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1),
                        ),
                        hintText: "សូមបញ្ចូលលេខទូរសព្ទ",
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
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1),
                        ),
                        hintText: "សូមបញ្ចូលលេខកូដសម្ងាត់",
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1),
                        ),
                        hintStyle: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w100),
                        // suffixIcon: Obx(() {
                        //   return IconButton(
                        //       icon: Icon(
                        //         _isObscure
                        //             ? Icons.visibility
                        //             : Icons.visibility_off,
                        //       ),
                        //       onPressed: () {
                        //         _isObscure = !_isObscure;
                        //       });
                        // }),
                      ),
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "ដោយចុចប៊ូតុង \"បន្ទាប់\" អ្នកយល់ព្រមនឹង",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w100,
                        fontSize: 13),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "លក្ខខណ្ឌនៃការប្រើប្រាស់",
                            style: TextStyle(
                                color: Colors.pink,
                                fontWeight: FontWeight.w100,
                                fontSize: 13),
                          )),
                      Text(
                        "និង",
                        style: TextStyle(
                            fontWeight: FontWeight.w100, fontSize: 13),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "គោលការណ៍ឯកជន",
                            style: TextStyle(
                                color: Colors.pink,
                                fontWeight: FontWeight.w100,
                                fontSize: 13),
                          )),
                    ],
                  ),
                ],
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "ចូលមើលដោយមិនចុះឈ្មោះ",
                        style: TextStyle(
                            fontWeight: FontWeight.w100, color: Colors.pink),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoute.HOME);
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      padding: EdgeInsets.only(
                          left: 140, right: 140, top: 10, bottom: 10),
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
                        "ចូល",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
