import 'package:mams_city_guide/models/accomodation.dart';
import 'package:mams_city_guide/models/event.dart';
import 'package:mams_city_guide/models/guided_tour.dart';
import 'package:mams_city_guide/models/location.dart';
import 'package:mams_city_guide/models/place.dart';
import 'package:mams_city_guide/models/review.dart';

const List<Place> kPlaces = [
  Place(
    name: 'Pier 3 Plaza',
    description:
        'Enjoy sweeping views of the Manhattan skyline and the New York Harbor at this unique multipurpose hardscape area great for events, programming, and spontaneous fun like scooters and roller skating.',
    recording: 'plaza.mp3',
    location: Location(
      latitude: 40.69806,
      longitude: -73.99981,
      label: 'Pier 3 Plaza',
    ),
    images: ['plaza1.png', 'plaza2.png'],
    video: 'plaza.mp4',
  ),
  Place(
    name: 'Perelman Stage at Carnegie Hall',
    description:
        'The inestimable Stern Auditorium / Perelman Stage has seen innumerable historical concerts and events: The very first opening night in 1891, Horowitz’s sold-out 1965 recital, and Groucho Marx’s 1972 appearance at the twilight of his career are but a few. With five curvilinear levels that seat 2,790, Stern / Perelman has acoustics that have dazzled audiences and performers for over a century.',
    recording: 'perelman.mp3',
    location: Location(
      latitude: 40.76528,
      longitude: -73.97981,
      label: 'Perelman Stage at Carnegie Hall',
    ),
    images: ['perelman1.png'],
    video: 'perelman.mp4',
  ),
  Place(
    name: 'Solomon R. Guggenheim Museum',
    description:
        'Committed to innovation, the Solomon R. Guggenheim Foundation collects, preserves, and interprets modern and contemporary art, and explores ideas across cultures through dynamic curatorial and educational initiatives and collaborations. With its constellation of architecturally and culturally distinct museums, exhibitions, publications, and digital platforms, the foundation engages both local and global audiences.',
    recording: 'guggenheim.mp3',
    location: Location(
      latitude: 40.7829,
      longitude: -73.9589,
      label: 'Solomon R. Guggenheim Museum',
    ),
    images: ['guggenheim1.png', 'guggenheim2.png'],
    video: 'guggenheim.mp4',
  ),
  Place(
    name: 'Empire State Building',
    description:
        'The Empire State Building is a 102-story[c] Art Deco skyscraper in Midtown Manhattan, New York City. The building was designed by Shreve, Lamb & Harmon and built from 1930 to 1931. Its name is derived from "Empire State", the nickname of the state of New York. The building has a roof height of 1,250 feet (380 m) and stands a total of 1,454 feet (443.2 m) tall. The building’s Art Deco architecture, height, and observation decks have made it a popular attraction. Around four million tourists from around the world annually visit the building’s 86th- and 102nd-floor observatories; an additional indoor observatory on the 80th floor opened in 2019.',
    recording: 'empire.mp3',
    location: Location(
      latitude: 40.7484,
      longitude: -73.9856,
      label: 'Empire State Building',
    ),
    images: ['empire1.png', 'empire2.png', 'empire3.png'],
    video: 'empire.mp4',
  ),
  Place(
    name: 'Central Park',
    description:
        'A walk, peddle, or carriage ride through the crisscrossing pathways of Central Park is a must-do on anyone’s New York City itinerary. In winter, you can even lace up your skates and glide across Wollman Rink. This huge park in the city center, a half-mile wide and 2.5 miles long, is one of the things that makes New York such a beautiful and livable city. Besides being a great place to experience a little nature, Central Park has many attractions within its borders, and most of them are free, making it one of the few cheap things to do in NYC. Some of the most popular places to visit include the Belvedere Castle, Strawberry Fields, the Central Park Zoo, and the Lake. If you are exploring the park on your own, start by picking up a map at one of the visitor centers and plot your routing.',
    recording: 'central.mp3',
    location: Location(
      latitude: 40.7812,
      longitude: -73.9665,
      label: 'Central Park',
    ),
    images: [
      'central1.png',
      'central2.png',
      'central3.png',
      'central4.png',
      'central5.png',
    ],
    video: 'central.mp4',
  ),
];

final List<Event> kEvents = [
  Event(
    name: 'Zumba with Dodge YMCA',
    description:
        'Dodge YMCA fitness Zumba classes are so much fun you’ll forget that you’re burning calories. ZUMBA is a fusion of Latin and International music, utilizing dance themes that create a dynamic, exciting, effective fitness program. This socially-distanced class features aerobic training with a combination of fast and slow rhythms that tone and sculpt the body. Sneakers are recommended! Classes run on Mondays, May 2-September 26.',
    place: kPlaces[0],
    images: ['zumba1.png', 'zumba2.png', 'zumba3.png'],
  ),
  Event(
    name: 'Mendelssohn "Elijah"',
    description:
        'Elijah is the dramatic biblical tale of the unyielding prophet and his struggle against the wicked king Ahab who, with his duplicitous wife Jezebel, led the ancient Israelites astray from their true God. Felix Mendelssohn’s setting of this righteous man’s defense of the Hebrew God over the Canaanite Baal includes frenzied pagan rituals, ecstatic hymns of praise, stirring choruses, and operatic arias which are masterfully woven into an emotional depiction of this ancient epic. The Oratorio Society first performed Elijah in 1876. This concert marks the Society’s 39th performance of the piece.',
    place: kPlaces[1],
    images: ['elijah1.png', 'elijah2.png'],
  ),
  Event(
    name: 'Little Guggs',
    description:
        'In this program designed for young art lovers and their caregivers, participants explore works of art on view with the goal of creating their own artistic expressions. Each program includes art looking, art-making activities, and a story.',
    place: kPlaces[2],
    images: ['guggs1.png', 'guggs2.png'],
  ),
];

const List<Accomodation> kAccomodations = [
  Accomodation(
    name: 'citizenM New York Bowery',
    description:
        'Situated in the Lower East Side district in New York, citizenM New York Bowery is minutes away from the nightlife and restaurants of Bowery. The property is around an 8-minute walk from Bloomingdale’s and within 20 minutes’ walk of SoHo, Lower Manhattan, and Little Italy. There is a restaurant and a shared lounge.',
    location: Location(
      latitude: 40.7206,
      longitude: -73.9935,
      label: 'citizenM New York Bowery',
    ),
    images: ['citizen1.png', 'citizen2.png', 'citizen3.png'],
  ),
  Accomodation(
    name: 'Park Terrace Hotel',
    description:
        'Situated in the Lower East Side district in New York, citizenM New York Bowery is minutes away from the nightlife and restaurants of Bowery. The property is around an 8-minute walk from Bloomingdale’s and within 20 minutes’ walk of SoHo, Lower Manhattan, and Little Italy. There is a restaurant and a shared lounge.',
    location: Location(
      latitude: 40.7525,
      longitude: -73.9829,
      label: 'Park Terrace Hotel',
    ),
    images: ['terrace1.png', 'terrace2.png', 'terrace3.png'],
  ),
  Accomodation(
    name: 'LUMA Hotel',
    description:
        'Located 300 m from Times Square in New York, LUMA Hotel - Times Square features a restaurant and free WiFi throughout the property. Guests can enjoy the on-site bar. Every room at this hotel is air conditioned and is equipped with a 50 inch flat-screen TV with cable channels and windows with electronic control sheer and blackout shades. King rooms feature a sofa area where you can relax. You will find a Nespresso coffee machine in the room. Rooms are fitted with a private bathroom. For your comfort, you will find Frette Linens and bathrobes, slippers and ETRO bath amenities. There is a 24-hour front desk at the property.',
    location: Location(
      latitude: 40.7545,
      longitude: -73.9856,
      label: 'LUMA Hotel',
    ),
    images: ['luma1.png', 'luma2.png', 'luma3.png'],
  ),
];

final List<GuidedTour> kGuidedTours = [
  GuidedTour(
    name: 'Outdoor fun',
    description:
        'Do you think the weather is too good to spend your time indoors? Would you like to relax and read a book? Would you like to jog? Would you like to play volleyball with friends? If you answered YES to any of these questions, this tour is for you! Grab your hat and go out!',
    places: [kPlaces[0], kPlaces[4]],
  ),
  GuidedTour(
    name: 'Culture injection',
    description:
        'There are so many sightseeing opportunities in New York City that it would nearly impossible to list them all. If you are happy to include some cultural experiences into your day, this tour can help you. The most interesting museums, monuments, musical theatres and more have been gathered here for you. What are you waiting for?',
    places: [kPlaces[1], kPlaces[2], kPlaces[3]],
  ),
  GuidedTour(
    name: 'Sightseeing maniac',
    description:
        'If you are not afraid to set the alarm clock to the very morning because you want to explore New York City to the limits, then this tour will meet your need (maybe even exceed them?). Here we have gathered all of the most popular places you can find in the city. Parks, museums, art exhibitions, skyscrapers, famous restaurants... It is all here. Good luck!',
    places: [kPlaces[0], kPlaces[1], kPlaces[2], kPlaces[3], kPlaces[4]],
  ),
];

final List<PlaceReview> kPlacesReviews = [
  PlaceReview(
    objectName: kPlaces[0].name,
    rating: 4,
    comment:
        'As long as there are some events happening it is worthwile. I recommend it still, especially to groups.',
  ),
  PlaceReview(
    objectName: kPlaces[3].name,
    rating: 5,
    comment:
        'Visited the Empire State on 01/05/2022 with a ticket to the 86th floor and 102nd floor. Absolutely fantastic experience, the staff were so friendly and gracious. Enjoyed the different experiences on the different levels. I would recommend the extra money to visit the 102nd floor if you can stretch to it. The views are unmatched.',
  ),
  PlaceReview(
    objectName: kPlaces[3].name,
    rating: 5,
    comment:
        'We (couple) booked the VIP Tour. At first we were worried, as the queues by the will call desk were getting larger and larger. But right on time Renita picked us up and showed us around the lobby and business area. Then we skipped and crossed the queues a few times, while Renita told us interesting facts about the Building as we made our way through the exhibition, Renita (a talented photographer) took our pics in all the good spots. There was always an elevator waiting for us to bring us to the next level. You will have a great time on this tour. The weather was great and we had clear skies and good sights of all of New York. The modern exhibition and design combined with the old Art Deco was done really well. Renita was a wonderful, cheerful host with lots of experience, knowledge and great passion for her work and the Empire State Building. Thank you for giving us a marvelous experience!',
  ),
  PlaceReview(
    objectName: kPlaces[3].name,
    rating: 4,
    comment:
        'Views from the top are breathtaking, especially at night. Sadly, it was poorly organised and signposted and some staff were rude and unnecessarily shouty.',
  ),
];

final List<AccomodationReview> kAccomodationsReviews = [
  AccomodationReview(
    objectName: kAccomodations[0].name,
    rating: 5,
    comment:
        'Amazing hotel, both my partner and I were in awe. Location couldn’t be any better. Breakfast was amazing! The cloud bar on the rooftop is a must. It’s worth every penny. Staff are incredibly kind and really helpful if you have any questions. Citizen M does an excellent job of utilizing space in the rooms and the entire hotel is beautifully decorated. Highly recommended!',
  ),
  AccomodationReview(
    objectName: kAccomodations[0].name,
    rating: 5,
    comment:
        'I’ve stayed at the CitizenM at Amsterdam Airport before, so I knew what to expect, size-wise and room design-wise. The NYC one seemed little larger with a bit more privacy around the bathroom/shower. The room is perfect for a solo traveler. The bed was comfortable and the shower power was great. The location was most convenient with a few subway stations within a block or two, and the traffic noise wasn’t too bad, considering it’s in one of NYC’s most busy and vibrant areas.',
  ),
  AccomodationReview(
    objectName: kAccomodations[2].name,
    rating: 5,
    comment:
        'The room was super clean; great location; very friendly staff. Would stay here again. The is a Whole Foods across the street for snacks or a cheap meal; and an awesome coffee shop on the same corner. One block from the subway.',
  ),
  AccomodationReview(
    objectName: kAccomodations[2].name,
    rating: 4,
    comment:
        'Good breakfast with a friendly chap who greeted us. The rooms were a great size and clean. The hotel was in a great location, close to the open top bus tour stops and the subway stop. Good TV in the room too. Unfortunately, we encountered grumpy ladies serving breakfast when it was a bit busy. We decided best not to ask them to fill the empty coffee and orange juice.',
  ),
  AccomodationReview(
    objectName: kAccomodations[2].name,
    rating: 3,
    comment:
        'The cleaning of the rooms was done very well with the cleaning people coming to room twice daily. The location of the hotel was good. Now the drawbacks. Entrance area to the lifts and location of the reception is too small and becomes congested. The breakfast staff could improve with taking a course in customer relations and their approach to people in the breakfast / dining area.',
  ),
];
