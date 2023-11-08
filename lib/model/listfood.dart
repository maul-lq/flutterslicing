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

List<ListFood> listFood = [
  ListFood(
      image: "images/food_orange.png",
      title: "Orange Asem",
      category: "Healthy",
      rate: 4.5,
      descripton: "Makanan asal Bandung dengan tekstur\nyang lembut sehingga ketika dimakan rasanya enak.",
      price: 808.75),
  ListFood(
      image: "images/food_avocado.png",
      title: "Avocado Salad",
      category: "Healthy",
      rate: 4.2,
      descripton: "Makanan asal Bandung dengan tekstur\nyang lembut sehingga ketika dimakan rasanya enak.",
      price: 250.75),
  ListFood(
      image: "images/food_gyoza.png",
      title: "Gyoza",
      category: "Meal",
      rate: 4.7,
      descripton: "Makanan asal Bandung dengan tekstur\nyang lembut sehingga ketika dimakan rasanya enak.",
      price: 808.75),
];
