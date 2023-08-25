class newsmodel {
  String? image;
  String title;
  String? subtitle;
  newsmodel({required this.image, required this.subtitle, required this.title});
  factory newsmodel.fromjason(dynamic data) {
    return newsmodel(
      image: data['urlToImage'],
      title: data['title'],
      subtitle: data['description'],
    );
  }
}
