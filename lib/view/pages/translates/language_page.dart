import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imake_get_x/getx/controllers/translate_controller.dart';

class LanguagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('change_language'.tr),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GetX<TranslateController>(
              builder: (controller) {
                return Container(
                  alignment: Alignment.center,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.langList.length,
                    itemBuilder: (context, index) {
                      var data = controller.langList[index];
                      return Container(
                        child: ChoiceChip(
                          pressElevation: 0.0,
                          selectedColor: Colors.grey[300],
                          backgroundColor: Colors.grey[100],
                          label: Text('${data.name}'.tr),
                          selected: controller.selectIndex == data.id,
                          onSelected: (bool selected) {
                            controller.changeLanguage(
                              selected: selected,
                              index: data.id,
                            );
                          },
                        ),
                      );
                    },
                  ),
                );
              },
            ),
            MaterialButton(
              onPressed: () {
                Get.changeTheme(
                  Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
                );
              },
              child: Text('Change Theme'),
            ),
          ],
        ),
      ),
    );
  }
}
