import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:tes_api/controller/allmodel.dart';
import 'package:tes_api/controller/detaill.dart';
import 'package:tes_api/controller/controllermodel.dart';
import 'package:tes_api/model/modelfilm/modelfiml.dart';
import 'package:tes_api/view/detail-menu/detailfilm.dart';
import 'package:tes_api/view/loading/loadingasset.dart';

class MyWidget extends GetView<controllermodel> {
  @override
  Widget build(BuildContext context) {
    Get.put(controllermodel());
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 21, 22, 31),
      body: FutureBuilder<List<Listfilm?>>(
          future: controller.api(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: loadingasset());
            }
            if (!snapshot.hasData) {
              return Center(
                child: loadingasset(),
              );
            }
            List<Listfilm?>? Api = snapshot.data;

            return Padding(
              padding: const EdgeInsets.all(21.0),
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Hello,Users",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.check_circle,
                                    color: Colors.white,
                                    size: 15,
                                  )
                                ],
                              ),
                              Text(
                                "Enjoy Your Movie",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                      Icon(
                        Icons.notifications,
                        color: Colors.white,
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    height: 60,
                    width: 292,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xff262A34)),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(8)
                        ),
                      child: Center(
                        child: Text("Action",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      ),
                      ),
                       Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(8)
                        ),
                          child: Center(
                        child: Text("Advanture",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      ),
                      ),
                       Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(8)
                        ),
                          child: Center(
                        child: Text("romance",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      ),
                      )
                    ],
                  ),
                   SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Populer Movies",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 170,
                    child: CarouselSlider.builder(
                        itemCount: Api?.length,
                        itemBuilder: (context, index, realIndex) {
                          return InkWell(
                            onTap: () => Get.to(detailfilm(),arguments: Api),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 15),
                                  height: 125,
                                  width: 264,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.network("${Api?[index]?.image}",fit: BoxFit.cover,),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "${Api?[index]?.jdlFilm}",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "${Api?[index]?.direct}",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                        options: CarouselOptions(autoPlay: true)),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    "Trending Now",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 280,
                    width: Get.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Api?.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 15),
                              height: 213,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network("${Api?[index]?.image}",fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Container(
                                    height: 23,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Color(0xff312828),
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Center(
                                        child: Text(
                                      "${Api?[index]?.usiaminimal}+",
                                      style: TextStyle(color: Colors.white),
                                    )),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 23,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: Color(0xff312828),
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Image.asset("assets/icons/star.png"),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "${Api?[index]?.ratingFilm}",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Text(
                                  "${Api?[index]?.jdlFilm}",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Favourites",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: Get.height,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 20),
                              height: 155,
                              width: 350,
                              decoration: BoxDecoration(
                                  color: Color(0xff2F2525),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 85,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "MAD MAX FURY RGAD",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          "4/5 | 8 october 2021",
                                          style: TextStyle(
                                              color: Color(0xff858585)),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          "1 hour 33 min",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
