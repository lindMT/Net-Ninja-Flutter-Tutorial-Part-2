import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: 'Ava Smith',
        text:
            'Life is a journey that must be traveled no matter how bad the roads and accommodations.'),
    Quote(
        author: 'Jackson Rivers',
        text:
            'Success is not the key to happiness. Happiness is the key to success. If you love what you are doing, you will be successful.'),
    Quote(
        author: 'Olivia Woods',
        text:
            'The only limit to our realization of tomorrow will be our doubts of today.')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QuoteLister'),
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                }))
            .toList(),
      ),
    );
  }
}


//////////////////////////////////////////////////
// MAP
// String list ////////////////////////////////
// class _QuoteListState extends State<QuoteList> {
//   List<String> quotes = [
//     'quote 1',
//     'quote 2',
//     'quote 3',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('QuoteLister'),
//         backgroundColor: Colors.pink,
//         centerTitle: true,
//       ),
//       body: Column(
//         children: quotes.map((quote) => Text(quote)).toList(),
//       ),
//     );
//   }
// }
//
// Custom Class list ////////////////////////////////
// class _QuoteListState extends State<QuoteList> {
//   List<Quote> quotes = [
//     Quote(author: 'John', text: '12345'),
//     Quote(author: 'Emily', text: '1123412345'),
//     Quote(author: 'Christine', text: '1212341234qwedrqwer5'),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('QuoteLister'),
//         backgroundColor: Colors.pink,
//         centerTitle: true,
//       ),
//       body: Column(
//         children: quotes
//             .map((quote) => Text('${quote.text} - ${quote.author}'))
//             .toList(),
//       ),
//     );
//   }
// }
//
// Custom class list with template ////////////////////////////////
// class _QuoteListState extends State<QuoteList> {
//   List<Quote> quotes = [
//     Quote(author: 'John', text: '12345'),
//     Quote(author: 'Emily', text: '1123412345'),
//     Quote(author: 'Christine', text: '1212341234qwedrqwer5'),
//   ];
//
//   Widget quoteTemplate(quote) {
//     return Card(
//         margin: EdgeInsets.all(20.0),
//         child: Column(
//           children: <Widget>[
//             Text(
//               quote.text,
//               style: TextStyle(backgroundColor: Colors.pink[200]),
//             ),
//             Text(
//               quote.author,
//               style: TextStyle(backgroundColor: Colors.blue[200]),
//             ),
//           ],
//         ));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('QuoteLister'),
//         backgroundColor: Colors.pink,
//         centerTitle: true,
//       ),
//       body: Column(
//         children: quotes.map((quote) => quoteTemplate(quote)).toList(),
//       ),
//     );
//   }
// }
// 
// Custom classes for template and list ////////////////////////////////
// class QuoteList extends StatefulWidget {
//   const QuoteList({super.key});
//
//   @override
//   State<QuoteList> createState() => _QuoteListState();
// }
//
// class _QuoteListState extends State<QuoteList> {
//   List<Quote> quotes = [
//     Quote(author: 'John', text: '12345'),
//     Quote(author: 'Emily', text: '1123412345'),
//     Quote(author: 'Christine', text: '1212341234qwedrqwer5'),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('QuoteLister'),
//         backgroundColor: Colors.pink,
//         centerTitle: true,
//       ),
//       body: Column(
//         children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
//       ),
//     );
//   }
// }
//
// class QuoteCard extends StatelessWidget {
//   final Quote quote;
//   QuoteCard({required this.quote});
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//         margin: EdgeInsets.all(20.0),
//         child: Column(
//           children: <Widget>[
//             Text(
//               quote.text,
//               style: TextStyle(backgroundColor: Colors.pink[200]),
//             ),
//             Text(
//               quote.author,
//               style: TextStyle(backgroundColor: Colors.blue[200]),
//             ),
//           ],
//         ));
//   }
// }