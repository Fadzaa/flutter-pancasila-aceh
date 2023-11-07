class Couliner {
  final int id;
  final String name;
  final String cardDescription;
  final String detailDescription;
  final String imageCard;
  final List<String> detailImages;

  Couliner({
    required this.id,
    required this.name,
    required this.cardDescription,
    required this.detailDescription,
    required this.imageCard,
    required this.detailImages,
  });

  factory Couliner.fromJson(Map<String, dynamic> json) {
    return Couliner(
      id: json['id'],
      name: json['name'],
      cardDescription: json['card_description'],
      detailDescription: json['detail_description'],
      imageCard: json['image_card'],
      detailImages: [
        json['image_detail_1'],
        json['image_detail_2'],
        json['image_detail_3'],
        json['image_detail_4'],
      ],
    );
  }
}
