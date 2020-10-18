class MenuModel {
  String image;
  String name;
  bool isSelect;
  MenuModel({this.image, this.name, this.isSelect});
}

List<MenuModel> MenuList = [
  MenuModel(
      image: "assets/img/icons8-home.png", name: "Catalogue", isSelect: true),
  MenuModel(
      image: "assets/img/yourcart.png", name: "Your Cart", isSelect: false),
  MenuModel(
      image: "assets/img/Favourites.png", name: "Favourites", isSelect: false),
  MenuModel(
      image: "assets/img/YourOrders.png", name: "Your Orders", isSelect: false),
  MenuModel(image: "assets/img/logout.png", name: "Sign Out", isSelect: false),
];
