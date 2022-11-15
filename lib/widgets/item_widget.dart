// import 'package:flutter/material.dart';
// import 'package:flutter_catalog/models/item.dart';
// import 'package:flutter_catalog/services/remote_services.dart';

// class ItemWidget extends StatefulWidget {
//   const ItemWidget({super.key});

//   @override
//   State<ItemWidget> createState() => _ItemWidgetState();
// }

// class _ItemWidgetState extends State<ItemWidget> {
//   List<Item>? items;
//   var isLoaded = false;

//   @override
//   void initState() {
//     super.initState();

//     getData();
//   }

//   getData() async {
//     items = await RemoteService().getItems();
//     if (items != null) {
//       setState(() {
//         isLoaded = true;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       // leading: Image.network(items![0].title),
//       title: Text(items![0].title)
//     );
//   }
// }
