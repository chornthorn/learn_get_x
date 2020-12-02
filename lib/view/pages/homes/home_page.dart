import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imake_get_x/getx/controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home_page_label'.tr),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () => Get.toNamed('/language'),
          ),
        ],
      ),
      body: Container(
        child: GetBuilder<HomeController>(
          builder: (ctr) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text('language'.tr),
                ),
                Center(child: Text('hello'.tr)),
                Center(
                  child: Text(
                    'Counter is : ${ctr.count}',
                    style: TextStyle(fontSize: 45),
                  ),
                ),
                Center(
                  child: FlatButton(
                    onPressed: () async {
                      var myMap = <String, String>{
                        'id': '${Get.find<HomeController>().count}',
                        'title': 'Thorn',
                        'content': 'This is content',
                      };
                      Get.toNamed(
                        '/second',
                        arguments: myMap,
                      );
                    },
                    child: Text('To Second Page'),
                  ),
                ),
                Center(
                  child: FlatButton(
                    onPressed: () async {
                      Get.toNamed('/category');
                    },
                    child: Text('Category Page'),
                  ),
                ),
                Center(
                  child: FlatButton(
                    onPressed: () async {
                      Get.toNamed('/product');
                    },
                    child: Text('Product Page'),
                  ),
                )
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Get.find<HomeController>().increment();
        },
      ),
    );
  }
}
