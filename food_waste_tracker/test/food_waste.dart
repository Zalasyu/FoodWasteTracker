// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:food_waste_tracker/models/post.dart';

void main() {
  // Set up the test environment
  test('Post created from Map should have correct values', () {
    final date = DateTime.parse('2020-01-01');
    const url = 'FAKE';
    const quantity = 1;
    const latitude = 1.0;
    const longitude = 2.0;

    // Exercises the constructor
    final post = Post.fromMap({
      'date': date,
      'photoUrl': url,
      'quantity': quantity,
      'latitude': latitude,
      'longitude': longitude,
    });

    // Expect the values to be correct
    expect(post.date, date);
    expect(post.photoUrl, url);
    expect(post.quantity, quantity);
    expect(post.latitude, latitude);
    expect(post.longitude, longitude);
  });
}
