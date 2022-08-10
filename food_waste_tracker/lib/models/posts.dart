import 'package:food_waste_tracker/models/post.dart';

class Posts {
  final List<Post> posts;
  Posts({required this.posts});

  // Return Posts object.
  get getPosts => posts;

  // If the list is empty, return true.
  get isEmpty => posts.isEmpty;

  // If list is not empty, then return true.
  get isNotEmpty => posts.isNotEmpty;

  // Get length of posts
  get length => posts.length;

  // Operator overloading for [] operator to return a Post object.
  Post operator [](int index) => posts[index];

  // Add a post to the list.
  void add(Post post) => posts.add(post);

  // Add all posts to the list.
  void addAll(Iterable<Post> posts) => posts.forEach(this.add);

  // Clear the list.
  void clear() => posts.clear();

  // Iterate over the list.
  void forEach(void Function(Post) f) => posts.forEach(f);
}
