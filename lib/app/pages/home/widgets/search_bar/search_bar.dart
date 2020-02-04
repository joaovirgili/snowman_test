import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:snowmanlabs/app/pages/home/home_module.dart';
import 'package:snowmanlabs/app/pages/home/widgets/search_bar/search_bar_controller.dart';
import 'package:snowmanlabs/app/pages/home/widgets/search_bar/widgets/places_list.dart';
import 'package:snowmanlabs/app/shared/constants/colors.dart';

class SearchBar extends StatefulWidget {
  final Function suffixOnTap;
  final FocusNode focusNode;

  const SearchBar({Key key, this.suffixOnTap, this.focusNode})
      : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> with TickerProviderStateMixin {
  var _searchTextStyle = TextStyle(color: Colors.grey, fontSize: 15);

  var controller = HomeModule.to.bloc<SearchBarController>();

  double _calculateHeight() {
    var height = 0.0;
    if (controller.recents.isNotEmpty) height += 50;
    if (controller.favorits.isNotEmpty) height += 50;
    height += (controller.recents.length + controller.favorits.length) * 70.0;
    return height < 300 ? height : 300;
  }

  @override
  void initState() {
    super.initState();

    widget.focusNode.addListener(() => widget.focusNode.hasFocus
        ? controller.openPlacesList()
        : controller.closePlacesList());

    controller.addRecent();
    controller.addRecent();
    controller.addFavorit();
  }

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
          Observer(builder: (_) {
            return AnimatedSize(
              duration: Duration(milliseconds: 300),
              vsync: this,
              curve: Curves.easeOut,
              child: PlacesList(
                favorits: controller.favorits,
                recents: controller.recents,
                height:
                    controller.isPlacesListOpened ? _calculateHeight() : 0.0,
              ),
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
              focusNode: widget.focusNode,
              textAlignVertical: TextAlignVertical.bottom,
              style: _searchTextStyle,
              decoration: InputDecoration(
                hintStyle: _searchTextStyle,
                hintText: "Search here",
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(bottom: 12),
              ),
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
            onPressed: widget.suffixOnTap,
          ),
        ],
      ),
    );
  }
}
