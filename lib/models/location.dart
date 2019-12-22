
import './location_fact.dart';

class Location {
  final String name;
  final String imagePath;
  final List<LocationFact>fact;

  Location(this.name, this.imagePath, this.fact);

  static List<Location> fetchAll(){
    return [
      Location("Ertale","assets/images/ertale.jpeg",
          [LocationFact("Dallol","Dallol (Amharic: ዳሎል) is a locality in the Dallol woreda of northern Ethiopia")]),
      Location("Abay Nile","assets/images/abay.jpeg",
          [LocationFact("Tis abay","The Blue Nile Falls is a waterfall on the Blue Nile river in Ethiopia.")]),
      Location("Chilad Baboon","assets/images/chilad.jpeg",
          [LocationFact("Semen monunt","In the Semien Mountains that many call the Roof of Africa,")])
    ];
  }

}

