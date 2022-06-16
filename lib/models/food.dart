class FoodInfo {
  final num id;
  final String name;
  final String price;
  final String description;
  final String image;
  final String link;

  FoodInfo(
      this.id, this.name, this.price, this.description, this.image, this.link);
}

class FoodModel {
  static List<FoodInfo> foodList = [
    FoodInfo(
        1,
        'Chicken',
        '1.99',
        'Chicken is a meaty, tender, and flavorful dish. It is a staple food in many cultures.',
        "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
        "https://stackoverflow.com/questions/72611971/alert-dialog-causing-render-box-was-laid-out-in-flutter/72615165#72615165")
  ];
}
