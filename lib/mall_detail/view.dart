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
        title: Text(
          "Mall Detail",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            height: 350,
            width: double.infinity,
            child: Column(
              children: [
                Image(
                  fit: BoxFit.cover,
                  width: double.infinity,
                  image: NetworkImage(
                    "https://www.chipmong.com/wp-content/uploads/portfolio/retail/Mega-Mall-271/5.jpg",
                  ),
                  height: 150,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Chip Mong 271 Mega Mall",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 25,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "HVRF+8W9, Oknha Mong Reththy St. (1928), Phnom Penh",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black54),
                              ),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              "Get Direction",
                              style: TextStyle(
                                  color: Colors.pink,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time_filled,
                              size: 25,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "9:00 AM – 10:00PM",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black54),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.phone,
                              size: 25,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                "(+855) 69 999 279",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black54),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Follow as:"),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1200px-Facebook_Logo_%282019%29.png"),
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                          "https://static.vecteezy.com/system/resources/previews/016/716/450/original/tiktok-icon-free-png.png"),
                    ),
                  ],
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
