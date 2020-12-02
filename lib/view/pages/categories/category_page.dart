import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imake_get_x/getx/controllers/category_controller.dart';
import 'package:shimmer/shimmer.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagination'),
      ),
      body: GetX<CategoryController>(
        builder: (catController) {
          if (catController.isLoading) {
            return InitialState();
          } else {
            return ItemList(
              categoryController: catController,
            );
          }
        },
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  final CategoryController categoryController;

  const ItemList({
    Key key,
    this.categoryController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5),
      child: ListView.builder(
        itemCount: categoryController.data.length,
        itemBuilder: (context, index) {
          var data = categoryController.data[index];
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.5,
                color: Colors.blue,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            height: 100,
            child: InkWell(
              onTap: () {},
              splashColor: Colors.white,
              highlightColor: Colors.transparent,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.zero,
                elevation: 10,
                shadowColor: Colors.white70,
                child: Center(
                  child: ListTile(
                    leading: Text("${data.id}"),
                    title: Text('${data.name}'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.remove_red_eye),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class InitialState extends StatelessWidget {
  const InitialState({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        children: [
          Expanded(
            child: Shimmer.fromColors(
              baseColor: Colors.grey[300],
              highlightColor: Colors.grey[100],
              child: ListView.builder(
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.5,
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 100,
                  child: InkWell(
                    onTap: () {},
                    splashColor: Colors.white,
                    highlightColor: Colors.transparent,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: EdgeInsets.zero,
                      elevation: 10,
                      shadowColor: Colors.white70,
                      child: Center(
                        child: ListTile(
                          leading: Text(""),
                          title: Text(""),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.remove_red_eye),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                itemCount: 7,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
