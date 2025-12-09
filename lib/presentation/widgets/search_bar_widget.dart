import 'package:flutter/material.dart';




class SearchBarWidget extends StatelessWidget {
  SearchBarWidget({super.key, required this.searchController,this.function});

  final void Function(String)? function;
  final SearchController searchController;

  String query = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SearchBar(
            hintText: "Search movies...",
            leading: Icon(Icons.search),
            controller: searchController,
            textInputAction: TextInputAction.search,
            onChanged: (value) {
              function?.call(value);
            },          ),
        ),
      ],
    );
  }
}
