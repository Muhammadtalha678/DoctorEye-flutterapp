import 'package:flutter/material.dart';
class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({Key? key,required this.onChange}) : super(key: key);
  final Function onChange; 
  @override
  Widget build(BuildContext context) {
    return TextField(
                  onChanged: (String value){
                    onChange(value);
                  },
                  decoration: InputDecoration(
                     filled: true,
                    fillColor: Colors.white38,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.shuffle),
                    hintText: "Search" 
                  ),
                );
  }
}