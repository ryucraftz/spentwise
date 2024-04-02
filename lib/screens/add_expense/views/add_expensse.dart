import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddExpense extends StatelessWidget {
  const AddExpense({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
        ), // AppBar
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Add Expenses',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 16.0), // Text
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(FontAwesomeIcons.rupeeSign),
                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(30)
                  )
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(),
              const SizedBox(height: 16.0),
              TextFormField(),
              const SizedBox(height: 16.0),
              TextButton(
                onPressed: () {},
                child: Text('Save'),
              ), // TextButton
            ], // <Widget>[]
          ), // Column
        ), // Padding
      ), // Scaffold
    ); // GestureDetector
  }
}
