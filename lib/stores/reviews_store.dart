import 'package:mams_city_guide/dummy_data.dart';
import 'package:mams_city_guide/models/review.dart';
import 'package:mobx/mobx.dart';

part 'reviews_store.g.dart';

class ReviewsStore = _ReviewsStore with _$ReviewsStore;

abstract class _ReviewsStore with Store {
  @observable
  ObservableList<PlaceReview> placesReviews =
      ObservableList<PlaceReview>.of(kPlacesReviews);

  @observable
  ObservableList<AccomodationReview> accomodationsReviews =
      ObservableList<AccomodationReview>.of(kAccomodationsReviews);

  @action
  void addPlaceReview(PlaceReview review) {
    placesReviews.insert(0, review);
  }

  @action
  void addAccomodationReview(AccomodationReview review) {
    accomodationsReviews.insert(0, review);
  }
}
