class Butterfly {
  final String name;
  final String imageUrl;
  final String description;
  final String info;
  final String? modelUrl;

  const Butterfly({
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.info,
    this.modelUrl,
  });
}