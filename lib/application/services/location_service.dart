import 'package:flutter_dotenv/flutter_dotenv.dart';

// import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class LocationService {
  final String key = dotenv.env['GOOGLE_MAPS_API_KEY'] ?? '';

  Future<String> getPlaceId(String input) async {
    final String url =
        'https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=$input&inputtype=textquery&key=$key';

    final http.Response response = await http.get(Uri.parse(url));
    final dynamic json = convert.jsonDecode(response.body);
    final String placeId = json['candidates'][0]['place_id'] as String;

    return placeId;
  }

  Future<Map<String, dynamic>> getPlace(String input) async {
    final String placeId = await getPlaceId(input);

    final String url =
        'https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=$key';

    final http.Response response = await http.get(Uri.parse(url));
    final dynamic json = convert.jsonDecode(response.body);
    final Map<String, dynamic> results = json['result'] as Map<String, dynamic>;
    return results;
  }

  // Future<Map<String, dynamic>> getDirections(
  //   String origin,
  //   String destination,
  // ) async {
  //   final String url =
  //       'https://maps.googleapis.com/maps/api/directions/json?origin=$origin&destination=$destination&key=$key';

  //   final http.Response response = await http.get(Uri.parse(url));
  //   final dynamic json = convert.jsonDecode(response.body);

  //   final Map<String, dynamic> results = <String, dynamic>{
  //     'bounds_ne': json['routes'][0]['bounds']['northeast'],
  //     'bounds_sw': json['routes'][0]['bounds']['southwest'],
  //     'start_location': json['routes'][0]['legs'][0]['start_location'],
  //     'end_location': json['routes'][0]['legs'][0]['end_location'],
  //     'polyline': json['routes'][0]['overview_polyline']['points'],
  //     'polyline_decoded': PolylinePoints()
  //         .decodePolyline(json['routes'][0]['overview_polyline']['points']),
  //   };

  //   print(results);

  //   return results;
  // }
}
