class ListFood {
  String image;
  String title;
  String category;
  double rate;
  String descripton;
  double price;

  ListFood(
      {required this.image,
      required this.title,
      required this.category,
      required this.rate,
      required this.descripton,
      required this.price});
}

List<ListFood> _data = [
  ListFood(
      image: "images/food_orange.png",
      title: "Orange Asem",
      category: "Healthy",
      rate: 4.5,
      descripton:
          "lorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emet.",
      price: 808.75),
  ListFood(
      image: "images/food_avocado.png",
      title: "Avocado Salad",
      category: "Healthy",
      rate: 4.2,
      descripton:
          "lorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emet.",
      price: 250.75),
  ListFood(
      image: "images/food_gyoza.png",
      title: "Gyoza",
      category: "Meal",
      rate: 4.7,
      descripton:
          "lorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emetlorem ipsum emet.",
      price: 808.75),
];
