import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:tes_api/controller/allmodel.dart';
import 'package:tes_api/controller/detaill.dart';
import 'package:tes_api/controller/controllermodel.dart';

class MyWidget extends GetView<controllermodel> {
  @override
  Widget build(BuildContext context) {
    Get.put(controllermodel());
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 21, 22, 31),
      body: FutureBuilder<List<Mahasiswa?>>(
          future: controller.api(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

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
                    height: 16,
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
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 15),
                              height: 125,
                              width: 264,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              // child: ClipRRect(
                              //   child: Image.asset("assets/images/sonic.png"),
                              // ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                "Stranger Things",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                "Mischief. Mayhem. Soap",
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        );
                      },
                    ),
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
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
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
                              // child: ClipRRect(
                              //   child: Image.asset("assets/images/sonic.png"),
                              // ),
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
                                  child: Center(child: Text("17+",style: TextStyle(color: Colors.white),)),
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
                                      SizedBox(width: 7,),
                                      Image.asset("assets/icons/star.png"),
                                      SizedBox(width: 5,),
                                      Text("4/5",style: TextStyle(color: Colors.white),)
                                    ],
                                  ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text("MAD MAX FURY RGAD",style: TextStyle(color: Colors.white),),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 16,),
                  Text("Favourites",style: TextStyle(color: Colors.white,fontSize: 20),),
                SizedBox(height: 16,),
                SizedBox(
                    height: 170,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              height: 125,
                              width: 264,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              // child: ClipRRect(
                              //   child: Image.asset("assets/images/sonic.png"),
                              // ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                "Stranger Things",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                "Mischief. Mayhem. Soap",
                                style: TextStyle(color: Colors.white),
                              ),
                            )
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
