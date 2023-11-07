class Economic {
  final int id;
  final String name;
  final String description;
  final String imageUrl;

  Economic({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
  });

  factory Economic.fromJson(Map<String, dynamic> json) {
    return Economic(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      imageUrl: json['image_url'],
    );
  }
}
