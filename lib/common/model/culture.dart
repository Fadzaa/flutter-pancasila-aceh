class Culture {
  final int id;
  final String name;
  final String cardDescription;
  final String detailDescription;
  final String imageCard;
  final List<String> imageDetail;

  Culture({
    required this.id,
    required this.name,
    required this.cardDescription,
    required this.detailDescription,
    required this.imageCard,
    required this.imageDetail,
  });

  factory Culture.fromJson(Map<String, dynamic> json) {
    return Culture(
      id: json['id'],
      name: json['name'],
      cardDescription: json['card_description'],
      detailDescription: json['detail_description'],
      imageCard: json['image_card'],
      imageDetail: List<String>.from(json['image_detail']),
    );
  }
}
