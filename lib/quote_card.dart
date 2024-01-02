import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function() delete;
  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
          margin: const EdgeInsets.all(20.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  quote.text,
                  style: const TextStyle(fontWeight: FontWeight.normal),
                ),
                Text(
                  quote.author,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.0),
                TextButton(
                  onPressed: delete,
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.delete, // Replace with your desired icon
                        color:
                            Colors.red, // Replace with your desired icon color
                      ),
                      SizedBox(width: 8.0),
                      Text('Delete'),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
