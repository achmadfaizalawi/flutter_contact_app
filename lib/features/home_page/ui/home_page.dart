import 'package:flutter/material.dart';
import 'package:flutter_contact_app/features/add_new_contact_page/ui/add_new_contact_page.dart';
import 'package:flutter_contact_app/features/home_page/widget_builder/appbar_plus_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List contact = List.empty(growable: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [const AppBarPlusWidget(), listViewMethod()],
      ),
      floatingActionButton: floatingButtonMethod(context),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text("Contact"),
      centerTitle: true,
      leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
      elevation: 0,
    );
  }

  Expanded listViewMethod() {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 22, right: 22, top: 6),
        itemCount: contact.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(width: 1, color: Colors.grey))),
            padding: const EdgeInsets.all(1),
            child: Row(
              children: [
                CircleAvatar(
                  maxRadius: 24,
                  child: Text(contact[index][0][0].toString().toUpperCase(),
                      style: const TextStyle(fontSize: 20)),
                ),
                Expanded(
                  child: ListTile(
                    onTap: () {},
                    title: Text(contact[index][0]),
                    subtitle: Text(contact[index][1]),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Padding floatingButtonMethod(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: CircleAvatar(
        maxRadius: 30,
        child: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) {
                  return AddNewContactPage(contactData: contact);
                },
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  final tween =
                      Tween(begin: 0.0, end: 1.0);
                  return ScaleTransition(
                      scale: animation.drive(tween), child: child);
                },
              ))
                  .then((updatedData) {
                setState(() {
                  contact = updatedData;
                });
              });
            },
            icon: const Icon(Icons.add, size: 30)),
      ),
    );
  }
}
