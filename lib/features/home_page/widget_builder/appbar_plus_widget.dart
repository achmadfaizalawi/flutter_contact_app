import 'package:flutter/material.dart';

class AppBarPlusWidget extends StatelessWidget {
  const AppBarPlusWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
          borderRadius:
              BorderRadius.vertical(bottom: Radius.circular(20)),
          color: Colors.blue),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue,
        ),
        padding: const EdgeInsets.all(10),
        child: TextFormField(
          cursorColor: Colors.blue,
          style: const TextStyle(color: Colors.blue),
          decoration: const InputDecoration(
            hintText: "Search",
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.only(bottom: 2),
            prefixIcon: Icon(Icons.search, color: Colors.blue),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: Colors.white, width: 2)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(20))),
          ),
        ),
      ),
    );
  }
}