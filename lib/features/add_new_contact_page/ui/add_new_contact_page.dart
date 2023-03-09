import 'package:flutter/material.dart';
import 'package:flutter_contact_app/features/add_new_contact_page/widget_builder/save_button_widget.dart';
import 'package:flutter_contact_app/features/add_new_contact_page/widget_builder/text_new_contact_widget.dart';

class AddNewContactPage extends StatefulWidget {
  List contactData = List.empty(growable: true);

  AddNewContactPage({super.key, required this.contactData});

  @override
  State<AddNewContactPage> createState() => _AddNewContactPageState();
}

class _AddNewContactPageState extends State<AddNewContactPage> {
  final _formKey = GlobalKey<FormState>();
  late String name;
  late String phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Add New Contact"),
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  TextNewContactWidget(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                      labelText: "Contact name",
                      iconWidget: Icons.person,
                      maxLength: 20,
                      submitted: (value) {
                        setState(() {
                          name = value;
                        });
                      },
                      keyboardType: TextInputType.name),
                  const SizedBox(
                    height: 8,
                  ),
                  TextNewContactWidget(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your number';
                        }
                        return null;
                      },
                      labelText: "Phone number",
                      iconWidget: Icons.add_call,
                      maxLength: 12,
                      submitted: (value) {
                        setState(() {
                          phone = value;
                        });
                      },
                      keyboardType: TextInputType.number),
                  const SizedBox(
                    height: 16,
                  ),
                  SaveButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        widget.contactData.add([name, phone]);
                        Navigator.pop(context, widget.contactData);
                      }
                    },
                  )
                ],
              )),
        ));
  }
}
