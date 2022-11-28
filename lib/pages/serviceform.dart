import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widgets/bottomnavigation.dart';

class serviceform extends StatefulWidget {
  const serviceform({super.key});

  @override
  State<serviceform> createState() => _ServiceFormState();
}

class _ServiceFormState extends State<serviceform> {
  final _formKey = GlobalKey<FormState>();
  bool changebutton = false;
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changebutton = false;
      });
    }
  }

  String? occupation;
  String? servicetitle;
  String? servicedesc;
  String? location;
  String? tags;
  final occupationcontroller = TextEditingController();
  final servicetitlecontroller = TextEditingController();
  final servicedesccontroller = TextEditingController();
  final locationcontroller = TextEditingController();
  final tagscontroller = TextEditingController();

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text("Add Services"),
              ),
              ListTile(
                title: Text("Add Post"),
              ),
              ListTile(
                title: Text("Add Work"),
              )
            ],
          ),
        ),
        body: Form(
            key: _formKey,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 35),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Services",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty)
                        return "Add occupation";
                      else
                        return null;
                    },
                    controller: occupationcontroller,
                    decoration: InputDecoration(
                        hintText: "Occupation", labelText: "Occupation"),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty)
                        return "Add Service Title";
                      else
                        return null;
                    },
                    controller: servicetitlecontroller,
                    decoration: InputDecoration(
                        hintText: "Service Title", labelText: "Service Title"),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty)
                        return "Add Service Description";
                      else
                        return null;
                    },
                    controller: servicedesccontroller,
                    decoration: InputDecoration(
                        hintText: "Service Description",
                        labelText: "Service Description"),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty)
                        return "Add Location";
                      else
                        return null;
                    },
                    controller: locationcontroller,
                    decoration: InputDecoration(
                        hintText: "Location", labelText: "Location"),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty)
                        return "Add Tags";
                      else
                        return null;
                    },
                    controller: tagscontroller,
                    decoration:
                        InputDecoration(hintText: "Tags", labelText: "Tags"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: (() => moveToHome(context)),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changebutton ? 50 : 100,
                      // color: Colors.deepPurple,
                      height: 40,
                      alignment: Alignment.center,
                      child: changebutton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Post Service",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                      decoration: BoxDecoration(
                          color:
                              changebutton ? Colors.green : Colors.deepPurple,
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  )
                ],
              ),
            )),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
