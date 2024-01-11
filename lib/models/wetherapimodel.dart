class wether_model {
  final String city_name;
  final double temp;
  final double max_temp;
  final double min_temp;
  final String description;
  final String image;
  
  wether_model(
      {required this.city_name,
      required this.temp,
      required this.max_temp,
      required this.min_temp,
      required this.description,
      required this.image,
   
      });
  factory wether_model.fromJson(jason) {
    return wether_model(
        city_name: jason ["location"]['name'],
        temp: jason[ "current"]['temp_c'],
        max_temp: jason["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
         min_temp: jason["forecast"]["forecastday"][0]["day"]["mintemp_c"],
        description: jason["forecast"]["forecastday"][0]["day"]["condition"]["text"],

         image: jason["forecast"]["forecastday"][0]["day"]["condition"]["icon"]
,
        
        );
  }
}
