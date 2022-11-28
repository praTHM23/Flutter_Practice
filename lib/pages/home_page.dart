import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widgets/bottomnavigation.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/models/item.dart';
import 'package:flutter/material.dart';
import '../models/item.dart';
import '../services/remote_services.dart';
import '../widgets/item_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          leading: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.profileRoute);
              },
              icon: SvgPicture.asset('assets/images/user.svg')),
          title: Text(
            "Work-It",
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.chat);
                },
                icon: Icon(Icons.chat_bubble_outline_rounded))
          ],
        ),
        body: Visibility(
          visible: isLoaded,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.builder(
              itemCount: items?.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 200,
                  width: 50,
                  child: Material(
                    elevation: 50,
                    child: InkWell(
                        onTap: () {
                          print("${items![index].id} is pressed");
                          Navigator.pushNamed(context, MyRoutes.card_page);
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/books.png",
                              height: 124,
                            ),
                            Center(
                              child: Text(
                                items![index].title,
                                style: TextStyle(color: Colors.deepPurple),
                              ),
                            ),
                            // Text(items![index].thumbnailUrl),
                            // Text("\$21${items![index].id.toString()}"),
                          ],
                        )),
                  ),
                );
              },
            ),
          ),
        ),
        drawer: MyDrawer(),
        bottomNavigationBar: BottomBar());
  }
}
