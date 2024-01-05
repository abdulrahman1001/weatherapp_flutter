import 'package:flutter/material.dart';
class searchview extends StatelessWidget {
  const searchview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search'),),
      body: const Center(
        
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a search term',
              labelText: 'search'

              
            ),
          ),
        ),
      ),
      
    );
  }
}