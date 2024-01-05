class wether_model {
  final String city_name;
  final double temp;
  final double max_temp;
  final double min_temp;
  final String description;
  final String image;
  final String time_created;
  wether_model(
      {required this.city_name,
      required this.temp,
      required this.max_temp,
      required this.min_temp,
      required this.description,
      required this.image,
      required this.time_created});
  factory wether_model.fromJson(jason) {
    return wether_model(
        city_name: jason [ "location"]['name'],
        temp: jason[ "current"]['temp_c'],
        max_temp: jason[ "forecast"][ "forecast"][0]["maxtemp_c"],
        min_temp: jason[ "forecast"][ "forecast"][0]["mintemp_c"],
        description: jason[' "current"']["condition"]['text'],
        image: jason[' "current"']["condition"]['icon'],
        time_created: jason [ "current"][ "last_updated"]);
  }
}
