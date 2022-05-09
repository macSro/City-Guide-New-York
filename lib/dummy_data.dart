import 'package:mams_city_guide/models/accomodation.dart';
import 'package:mams_city_guide/models/event.dart';
import 'package:mams_city_guide/models/location.dart';
import 'package:mams_city_guide/models/place.dart';

const List<Event> kEvents = [
  Event(
    name: 'Zumba with Dodge YMCA',
    description:
        'Dodge YMCA fitness Zumba classes are so much fun you’ll forget that you’re burning calories. ZUMBA is a fusion of Latin and International music, utilizing dance themes that create a dynamic, exciting, effective fitness program. This socially-distanced class features aerobic training with a combination of fast and slow rhythms that tone and sculpt the body. Sneakers are recommended! Classes run on Mondays, May 2-September 26.',
    place: Place(
      name: 'Pier 3 Plaza',
      descriptionText:
          'Enjoy sweeping views of the Manhattan skyline and the New York Harbor at this unique multipurpose hardscape area great for events, programming, and spontaneous fun like scooters and roller skating.',
      descriptionVoice: 'plaza.mp3',
      location: Location(latitude: 40.69806, longitude: -73.99981),
      images: [''],
      video: '',
    ),
    images: ['zumba1.png', 'zumba2.png', 'zumba3.png'],
  ),
  Event(
    name: 'Mendelssohn "Elijah"',
    description:
        'Elijah is the dramatic biblical tale of the unyielding prophet and his struggle against the wicked king Ahab who, with his duplicitous wife Jezebel, led the ancient Israelites astray from their true God. Felix Mendelssohn’s setting of this righteous man’s defense of the Hebrew God over the Canaanite Baal includes frenzied pagan rituals, ecstatic hymns of praise, stirring choruses, and operatic arias which are masterfully woven into an emotional depiction of this ancient epic. The Oratorio Society first performed Elijah in 1876. This concert marks the Society’s 39th performance of the piece.',
    place: Place(
      name: 'Perelman Stage a Carnegie Hall',
      descriptionText:
          'The inestimable Stern Auditorium / Perelman Stage has seen innumerable historical concerts and events: The very first opening night in 1891, Horowitz’s sold-out 1965 recital, and Groucho Marx’s 1972 appearance at the twilight of his career are but a few. With five curvilinear levels that seat 2,790, Stern / Perelman has acoustics that have dazzled audiences and performers for over a century.',
      descriptionVoice: 'perelman.mp3',
      location: Location(latitude: 40.76528, longitude: -73.97981),
      images: [],
      video: '',
    ),
    images: ['elijah1.png', 'elijah2.png'],
  ),
  Event(
    name: 'Little Guggs',
    description:
        'In this program designed for young art lovers and their caregivers, participants explore works of art on view with the goal of creating their own artistic expressions. Each program includes art looking, art-making activities, and a story.',
    place: Place(
      name: 'Solomon R. Guggenheim Museum',
      descriptionText:
          'Committed to innovation, the Solomon R. Guggenheim Foundation collects, preserves, and interprets modern and contemporary art, and explores ideas across cultures through dynamic curatorial and educational initiatives and collaborations. With its constellation of architecturally and culturally distinct museums, exhibitions, publications, and digital platforms, the foundation engages both local and global audiences.',
      descriptionVoice: 'guggenheim.mp3',
      location: Location(latitude: 40.7829, longitude: -73.9589),
      images: [],
      video: '',
    ),
    images: ['guggs1.png', 'guggs2.png'],
  ),
];

const List<Accomodation> kAccomodations = [
  Accomodation(
    name: 'citizenM New York Bowery',
    description:
        'Situated in the Lower East Side district in New York, citizenM New York Bowery is minutes away from the nightlife and restaurants of Bowery. The property is around an 8-minute walk from Bloomingdale’s and within 20 minutes’ walk of SoHo, Lower Manhattan, and Little Italy. There is a restaurant and a shared lounge.',
    location: Location(latitude: 40.7206, longitude: -73.9935),
    images: ['citizen1.png', 'citizen2.png', 'citizen3.png'],
  ),
  Accomodation(
    name: 'Park Terrace Hotel',
    description:
        'Situated in the Lower East Side district in New York, citizenM New York Bowery is minutes away from the nightlife and restaurants of Bowery. The property is around an 8-minute walk from Bloomingdale’s and within 20 minutes’ walk of SoHo, Lower Manhattan, and Little Italy. There is a restaurant and a shared lounge.',
    location: Location(latitude: 40.7525, longitude: -73.9829),
    images: ['terrace1.png', 'terrace2.png', 'terrace3.png'],
  ),
  Accomodation(
    name: 'LUMA Hotel',
    description:
        'Located 300 m from Times Square in New York, LUMA Hotel - Times Square features a restaurant and free WiFi throughout the property. Guests can enjoy the on-site bar. Every room at this hotel is air conditioned and is equipped with a 50 inch flat-screen TV with cable channels and windows with electronic control sheer and blackout shades. King rooms feature a sofa area where you can relax. You will find a Nespresso coffee machine in the room. Rooms are fitted with a private bathroom. For your comfort, you will find Frette Linens and bathrobes, slippers and ETRO bath amenities. There is a 24-hour front desk at the property.',
    location: Location(latitude: 40.7545, longitude: -73.9856),
    images: ['luma1.png', 'luma2.png', 'luma3.png'],
  ),
];
