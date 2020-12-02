import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  final Map<String, String> secondPageConstructor;

  const SecondPage({Key key, @required this.secondPageConstructor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${secondPageConstructor['title']}'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Get.back(result: 'Back'),
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${secondPageConstructor['content']}'),
              Text(
                'ID: ${secondPageConstructor['id']}',
                style: TextStyle(fontSize: 45),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
