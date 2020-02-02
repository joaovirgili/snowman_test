import 'package:mobx/mobx.dart';
import 'package:snowmanlabs/app/pages/home/widgets/search_bar/models/place_item_model.dart';

part 'search_bar_controller.g.dart';

class SearchBarController = _SearchBarBase with _$SearchBarController;

abstract class _SearchBarBase with Store {
  @observable
  ObservableList<PlaceItemModel> recents = ObservableList<PlaceItemModel>();

  @observable
  ObservableList<PlaceItemModel> favorits = ObservableList<PlaceItemModel>();

  @observable
  bool isPlacesListOpened = false;

  @action
  void openPlacesList() => isPlacesListOpened = true;

  @action
  void closePlacesList() => isPlacesListOpened = false;

  @action
  void addRecent() {
    recents.add(PlaceItemModel(
      name: "Jardim Botanico",
      location: "Cristo Rei - Curitiba, Brazil",
    ));
  }

  @action
  void removeRecent() {
    recents.removeAt(recents.length - 1);
  }

  @action
  void addFavorit() {
    favorits.add(PlaceItemModel(
      name: "Pão de Açúcar",
      location: "Rio de Janeiro - Brazil",
    ));
  }

  @action
  void removeFavorit() {
    favorits.removeAt(favorits.length - 1);
  }
}
