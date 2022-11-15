import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/models/item.dart';

import '../models/item.dart';
import '../services/remote_services.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Item>? items;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();

    getData();
  }

  getData() async {
    items = await RemoteService().getItems();
    if (items != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "EduKart",
        ),
      ),
      body: Visibility(
        visible: isLoaded,
        child: ListView.builder(
          itemCount: items?.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  print("${items![index].id} is pressed");
                },
                // leading: Image.asset("assets/images/books.png"),
                // title: Text(items![index].title,
                //     style: TextStyle(color: Colors.deepPurple)),
                // subtitle: Text(items![index].body ?? ''),
                // trailing: Text("\$${items![index].id.toString()}",
                //     style: TextStyle(color: Colors.deepPurple)),
                leading: Image.network(
                    "https://res.cloudinary.com/dii4tdpxs/image/upload/v1667532453/o2l9k6ngsr433lcku5d3.jpg"),
                title: Text(items![index].title),
                subtitle: Text(items![index].thumbnailUrl),
                trailing: Text("\$21${items![index].id.toString()}"),
              ),
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
