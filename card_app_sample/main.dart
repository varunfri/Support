import 'package:flutter/material.dart';
import 'quotes.dart';
import 'card.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Awesome_Quotes",
      home: _HomeThing(),
    ));

class _HomeThing extends StatelessWidget {
  final List<Quotes> quotes = [
    Quotes(text: "Do your things", author: "Varun"),
    Quotes(text: "Be yourself", author: "Krishna"),
    Quotes(text: "You are a unique snowflake", author: "Mike")
  ];

  // List<String> quotes = ["Be your self", "Be Kind"];

  Widget cardTemplate(quote) {
    return QuoteCard(quote: quote);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: quotes.map((quote) => QuoteCard(quote:quote,
                                                delete: () {
                                                      setState(() {
                                                            quote.remove(quote);
                                                      }); //this remove the card on the screen
                                                })).toList(),
        // children: quotes.map((quotes) {
        //   return Text(quotes);
        // }).toList(),
      ),
    );
  }
}
