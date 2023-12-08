// ignore: file_names
import 'package:flutter/material.dart';
import 'quotes.dart';

class QuoteCard extends StatelessWidget {
  final Quotes quote;
  const QuoteCard({required this.quote});
  @override
  Widget build(BuildContext context) {
    //we need to get the values from list
    //create the final var with Quote

    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 1 6.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              (quote.text),
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey[800],
              ), //TextStyle
            ), //Text line
            const SizedBox(height: 10.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey[800],
              ), //TextStyle
            ), //Text author
            const SizedBox(height:10.0),
            TextButton.icon(
              onPressed: () {},
              label: Text("Delete Forever"),
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
