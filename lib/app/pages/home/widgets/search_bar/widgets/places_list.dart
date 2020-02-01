import 'package:flutter/material.dart';
import 'package:snowmanlabs/app/pages/home/widgets/search_bar/models/place_item_model.dart';
import 'package:snowmanlabs/app/pages/home/widgets/search_bar/widgets/place_image.dart';
import 'package:snowmanlabs/app/shared/constants/colors.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({
    Key key,
    this.recents = const <PlaceItemModel>[],
    this.favorits = const <PlaceItemModel>[],
  }) : super(key: key);

  final List<PlaceItemModel> recents;
  final List<PlaceItemModel> favorits;

  double _calculateHeight() {
    var height = 0.0;
    if (recents.isNotEmpty) height += 50;
    if (favorits.isNotEmpty) height += 50;
    height += (recents.length + favorits.length) * 70.0;
    return height < 300 ? height : 300;
  }

  @override
  Widget build(BuildContext context) {
    return recents.isNotEmpty || favorits.isNotEmpty
        ? Container(
            margin: EdgeInsets.only(bottom: 10),
            height: _calculateHeight(),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(top: BorderSide(color: MAIN_GREY)),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  if (this.recents?.isNotEmpty)
                    ItemSection(
                      title: "Recents",
                      items: this.recents,
                    ),
                  if (this.favorits?.isNotEmpty)
                    ItemSection(
                      title: "Favorites",
                      itemBottomBorder: false,
                      items: this.favorits,
                    ),
                ],
              ),
            ),
          )
        : Container();
  }
}

class ItemSection extends StatelessWidget {
  const ItemSection({
    Key key,
    @required this.title,
    this.itemBottomBorder = true,
    this.items,
  }) : super(key: key);

  final String title;
  final bool itemBottomBorder;
  final List<PlaceItemModel> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 10, top: 20),
            child: Text(title, style: TextStyle(color: Colors.grey)),
          ),
          Column(
            children: this
                .items
                .map((item) => PlaceItem(
                      name: item.name,
                      location: item.location,
                      bottomBorder: itemBottomBorder,
                      urlImage: item.urlImage,
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}

class PlaceItem extends StatelessWidget {
  const PlaceItem({
    Key key,
    this.urlImage,
    @required this.name,
    @required this.location,
    this.bottomBorder = true,
  }) : super(key: key);

  final String urlImage;
  final String name;
  final String location;
  final bool bottomBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: this.bottomBorder
            ? Border(bottom: BorderSide(color: MAIN_GREY))
            : null,
      ),
      child: Row(
        children: <Widget>[
          ProfileImage(imageUrl: null),
          SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(name),
              Text(
                location,
                style: TextStyle(color: Colors.grey, fontSize: 13),
              )
            ],
          ),
        ],
      ),
    );
  }
}
