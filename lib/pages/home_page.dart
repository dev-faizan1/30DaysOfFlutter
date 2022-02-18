import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/models/catalog.dart';
import 'dart:convert';
import '../widgets/drawer.dart';
import 'package:untitled/models/catalog.dart';

import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    loadData();
    super.initState();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString('assets/files/catalog.json');
    //print(catalogJson);
    var decodedData = jsonDecode(catalogJson);
    //print(decodedData);
    var productsData = decodedData["products"];
    CatalogModel.item = List.from(productsData).map<item>((item) => Item.fromMap(item)).toList();
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) { 
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 223, 223),
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount:  CatalogModel.item.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item:  CatalogModel.item[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
