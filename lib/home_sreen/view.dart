import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mall/home_sreen/logic.dart';
import 'package:mall/home_sreen/state.dart';
import 'package:mall/route/app_route.dart';

class HomeSreenPage extends StatelessWidget {
  HomeSreenPage({Key? key}) : super(key: key);

  final HomeSreenLogic logic = Get.put(HomeSreenLogic());
  final HomeSreenState state = Get.find<HomeSreenLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            height: 270,
            decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(20)),
                boxShadow: []),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(
                        "https://th.bing.com/th/id/OIP.fVzHHTFBNbxiuPLgdK-1MgHaLH?rs=1&pid=ImgDetMain",
                      ),
                    ),
                    Text(
                      "សួស្ដី,\n" + "Scorpita",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w100),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ))
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(AppRoute.MALL);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 136.5,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(-1, 0),
                          blurRadius: 1,
                        )
                      ]),
                  child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
                      child: Image.asset(
                        'assets/images/Chip_Mong_Mall.png',
                      )),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Container(
                  height: 136.5,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(1, 0),
                          blurRadius: 1,
                        )
                      ]),
                  child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      child: Image.asset(
                        'assets/images/Chip_Mong_Supermarket.png',
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1,
          )
        ],
      ),
    );
  }
}
