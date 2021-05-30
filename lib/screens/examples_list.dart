import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:python_app/meta/constants.dart';
import 'package:python_app/meta/data.dart';
import 'package:python_app/models/ExampleScreen/programList.dart';

class ExamplesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: gradientSet,
      padding: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: exampleCategories.length,
        itemBuilder: (BuildContext context, int index) => InkWell(
          child: Card(
            elevation: 5,
            color: cardColor,
            shadowColor: shadowColor,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: AssetImage(
                        exampleCategoriesInfo[exampleCategories[index]]
                            ["image"]),
                    width: MediaQuery.of(context).size.width * 0.3,
                  ),
                  Text(
                    exampleCategories[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return ExampleListPage(index);
              }),
            );
          },
        ),
        staggeredTileBuilder: (int index) =>
            StaggeredTile.count(2, index.isEven ? 2.4 : 2),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
    );
  }
}

class ExampleListPage extends StatelessWidget {
  int index;
  ExampleListPage(this.index);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            backgroundColor: Color(0xFF2C2D95),
            title: Text("Working With Smile: Python"),
            centerTitle: true,
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
          ),
          body: exampleProgramList(context, index),
        ),
      ),
    );
  }
}
