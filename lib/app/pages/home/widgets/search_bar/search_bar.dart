import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:snowmanlabs/app/pages/home/home_module.dart';
import 'package:snowmanlabs/app/pages/home/widgets/search_bar/search_bar_controller.dart';
import 'package:snowmanlabs/app/pages/home/widgets/search_bar/widgets/places_list.dart';
import 'package:snowmanlabs/app/shared/constants/colors.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  var _isOpened = true;
  var _searchTextStyle = TextStyle(color: Colors.grey, fontSize: 15);

  var controller = HomeModule.to.bloc<SearchBarController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.all(25),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          _buildSearchSection(),
          if (_isOpened)
            Observer(builder: (_) {
              return PlacesList(
                favorits: controller.favorits,
                recents: controller.recents,
              );
            }),
        ],
      ),
    );
  }

  Widget _buildSearchSection() {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Icon(Icons.search, size: 30, color: MAIN_GREY),
          ),
          Expanded(
            child: TextField(
              textAlignVertical: TextAlignVertical.bottom,
              style: _searchTextStyle,
              decoration: InputDecoration(
                hintStyle: _searchTextStyle,
                hintText: "Search here",
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(bottom: 12),
              ),
              onTap: () {
                setState(() {
                  _isOpened = !_isOpened;
                });
              },
            ),
          ),
          Container(
            height: double.infinity,
            width: 1,
            color: MAIN_GREY,
          ),
          IconButton(
            padding: EdgeInsets.all(0),
            icon: Icon(Icons.add, size: 25, color: Colors.black45),
            onPressed: () {
              print("asdas");
            },
          ),
        ],
      ),
    );
  }
}
