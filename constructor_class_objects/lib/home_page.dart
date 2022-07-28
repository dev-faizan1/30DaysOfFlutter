import 'package:flutter/material.dart';
import 'quotes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Quotes> quotes = [
    Quotes(
        quote:
            'America was not built on fear. America was built on courage, on imagination and an unbeatable determination to do the job at hand',
        author: 'Faizan'),
    Quotes(
        quote:
            'America was not built on fear. America was built on courage, on imagination and an unbeatable determination to do the job at hand',
        author: 'Faizan'),
    Quotes(
        quote:
            'America was not built on fear. America was built on courage, on imagination and an unbeatable determination to do the job at hand',
        author: 'Faizan'),
    Quotes(
        quote:
            'America was not built on fear. America was built on courage, on imagination and an unbeatable determination to do the job at hand',
        author: 'Faizan'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Data passing')),
      body: Column(
        children: quotes.map((q) => Text('${q.quote}\n\n${q.author}')).toList(),
      ),
    );
  }
}
