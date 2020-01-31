import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      height: 75,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Icon(Icons.search, size: 30),
            ),
            Expanded(
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                  hintText: "Search here",
                  border: InputBorder.none,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                child: IconButton(
                  icon: Icon(Icons.add, size: 30),
                  onPressed: () {
                    print("asdas");
                  },
                ),
                decoration: BoxDecoration(
                  border: Border(left: BorderSide(color: Colors.grey))
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
