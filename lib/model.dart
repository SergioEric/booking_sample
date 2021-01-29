class Booking {
  final String imageUrl;
  final String name;
  final int price;
  final double distance; // in km
  final int likes;
  final int comments;
  final Weather weather;

  Booking({
    this.imageUrl,
    this.name,
    this.price,
    this.distance,
    this.likes,
    this.comments,
    this.weather,
  });
}

class Weather {
  final String state;
  final int temperature;

  Weather(this.state, this.temperature);
}
