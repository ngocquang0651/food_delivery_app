import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text("You location"),
              content: const TextField(
                decoration: InputDecoration(hintText: 'Search address..'),
              ),
              actions: [
                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel'),
                ),
                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Save'),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver now",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: const Row(
              children: [
                Text(
                  'Ho Chi Minh',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          )
        ],
      ),
    );
  }
}
