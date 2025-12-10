import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  SearchBarWidget({super.key, required this.searchController, this.function});

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
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            ),
            backgroundColor: WidgetStateProperty.all(Color(0xFF1F2938)),
            onChanged: (value) {
              function?.call(value);
            },
          ),
        ),
      ],
    );
  }
}
