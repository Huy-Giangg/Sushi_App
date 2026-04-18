
class Sushi {
  final String name;
  final String img;
  final String price;
  final String rating;

  Sushi({
    required this.name,
    required this.img,
    required this.price,
    required this.rating,
});

  static List<Sushi> sushiMenu = [
    // Mẫu 1: Cá hồi truyền thống
    Sushi(
      name: "Salmon Sushi",
      img: "assets/imgs/sushi.png",
      price: "21.00",
      rating: "4.8",
    ),

    // Mẫu 2: Cá ngừ
    Sushi(
      name: "Tuna Sushi",
      img: "assets/imgs/sushi_1.png",
      price: "23.00",
      rating: "4.9",
    ),

    // Mẫu 3: Lươn Nhật
    Sushi(
      name: "Unagi Sushi",
      img: "assets/imgs/sushi_2.png",
      price: "25.50",
      rating: "5.0",
    ),

    // Mẫu 4: Tôm
    Sushi(
      name: "Ebi Sushi",
      img: "assets/imgs/sushi_3.png",
      price: "19.00",
      rating: "4.5",
    ),

    // Mẫu 5: Trứng cuộn
    Sushi(
      name: "Tamago Sushi",
      img: "assets/imgs/nigiri_4.png",
      price: "15.00",
      rating: "4.3",
    ),
  ];
}