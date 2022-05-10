class Review {
  final String objectName;
  final int rating;
  final String comment;

  const Review({
    required this.objectName,
    required this.rating,
    required this.comment,
  });

  static int calculateAverage(List<Review> reviews) {
    if (reviews.isEmpty) return 0;

    final sum = reviews.fold(
        0, (int previousValue, Review review) => previousValue + review.rating);
    return sum ~/ reviews.length;
  }
}

class PlaceReview extends Review {
  const PlaceReview({
    required String objectName,
    required int rating,
    required String comment,
  }) : super(objectName: objectName, rating: rating, comment: comment);
}

class AccomodationReview extends Review {
  const AccomodationReview({
    required String objectName,
    required int rating,
    required String comment,
  }) : super(objectName: objectName, rating: rating, comment: comment);
}
