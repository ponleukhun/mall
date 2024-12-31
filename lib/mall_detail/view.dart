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
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Mall Detail"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border))
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              child: Image.network(
                  "https://www.qoovee.com/media/files/%D0%BB%D0%BE%D0%B3%D0%BE_ZARA.JPG"),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "ZARA",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 17),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 40,
                          width: 80,
                          padding: EdgeInsets.symmetric(vertical: 7),
                          decoration: BoxDecoration(
                            color: Colors.green.withOpacity(0.1),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Text(
                            "Opening",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    Text(
                        "Lorem ipsum dolor sit amet consectetur. Dui donec sit id eget ut aenean. Orci sit eget dolor purus tincidunt id. At pharetra ut aliquam in fermentum dapibus."),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Text(
                            "G01, Ground Floor, Chip Mong 271 Mega Mall",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_filled,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Text(
                            "Mon-Sun , 9:00 AM – 10:00PM",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.phone,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Text(
                            "(+855) 69 999 279",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54),
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 80,
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Membership Benefits",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 13),
                          ),
                          Text(
                            "Earn 7% point from ZARA, shop now to earn points!",
                            style: TextStyle(fontSize: 11),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.black12,
              child: Column(
                children: [
                  Text("ZARA's Offers"),
                  Container(
                    height: 150,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Text(
                        "Got Yourself ready for ZARA’s upcoming sale for this summer! Check out our store at every Chip Mong Mall."),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
