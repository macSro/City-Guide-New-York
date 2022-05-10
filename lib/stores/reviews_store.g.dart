// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ReviewsStore on _ReviewsStore, Store {
  late final _$placesReviewsAtom =
      Atom(name: '_ReviewsStore.placesReviews', context: context);

  @override
  ObservableList<PlaceReview> get placesReviews {
    _$placesReviewsAtom.reportRead();
    return super.placesReviews;
  }

  @override
  set placesReviews(ObservableList<PlaceReview> value) {
    _$placesReviewsAtom.reportWrite(value, super.placesReviews, () {
      super.placesReviews = value;
    });
  }

  late final _$accomodationsReviewsAtom =
      Atom(name: '_ReviewsStore.accomodationsReviews', context: context);

  @override
  ObservableList<AccomodationReview> get accomodationsReviews {
    _$accomodationsReviewsAtom.reportRead();
    return super.accomodationsReviews;
  }

  @override
  set accomodationsReviews(ObservableList<AccomodationReview> value) {
    _$accomodationsReviewsAtom.reportWrite(value, super.accomodationsReviews,
        () {
      super.accomodationsReviews = value;
    });
  }

  late final _$_ReviewsStoreActionController =
      ActionController(name: '_ReviewsStore', context: context);

  @override
  void addPlaceReview(PlaceReview review) {
    final _$actionInfo = _$_ReviewsStoreActionController.startAction(
        name: '_ReviewsStore.addPlaceReview');
    try {
      return super.addPlaceReview(review);
    } finally {
      _$_ReviewsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addAccomodationReview(AccomodationReview review) {
    final _$actionInfo = _$_ReviewsStoreActionController.startAction(
        name: '_ReviewsStore.addAccomodationReview');
    try {
      return super.addAccomodationReview(review);
    } finally {
      _$_ReviewsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
placesReviews: ${placesReviews},
accomodationsReviews: ${accomodationsReviews}
    ''';
  }
}
