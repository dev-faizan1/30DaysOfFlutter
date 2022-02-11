import 'package:flutter/material.dart';
import 'package:untitled/models/catalog.dart';

import '../widgets/drawer.dart';
import 'package:untitled/models/catalog.dart';

import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(60, (index) => CatalogModel.item[0]);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 223, 223),
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
