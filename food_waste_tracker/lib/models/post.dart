class Post {
  final DateTime date;
  final String photoUrl;
  final int quantity;
  final double latitude;
  final double longitude;

  // Constructor
  Post({
    required this.date,
    required this.photoUrl,
    required this.quantity,
    required this.latitude,
    required this.longitude,
  });

  // Create a Post from a Map object.
  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      date: DateTime.parse(map['date']),
      photoUrl: map['photoUrl'],
      quantity: map['quantity'],
      latitude: map['latitude'],
      longitude: map['longitude'],
    );
  }
}
