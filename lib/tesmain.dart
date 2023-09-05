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
                
                  return Column(
                    children: [
                      SizedBox(height: 300,),
                      Text("data"),
                      SizedBox(
                        height: 500,
                        child: ListView.builder(
                          itemCount: snapshot.data!.length,
                          itemBuilder: (BuildContext context, int index) {
                                      
                          Mahasiswa? surah = snapshot.data?[index] ;
                      
                            return InkWell(
                              onTap: () => Get.to(detail(),arguments: surah),
                              child: ListTile(
                                leading: Text(
                                  "${surah?.nama}"
                                ),
                                title: Text("${surah?.jurusan}",style: TextStyle(color: Colors.black),),
                                
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  );
                }),
    );
  }
}
