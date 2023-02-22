import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:sharing_cooks/application/redux/actions/flags/app_flags.dart';
import 'package:sharing_cooks/application/redux/states/app_state.dart';

class GetCurrentLocationAction extends ReduxAction<AppState> {
  GetCurrentLocationAction({required this.context});

  final BuildContext context;

  @override
  void before() {
    super.before();
    dispatch(WaitAction<AppState>.add(locationFlag));
  }

  @override
  void after() {
    dispatch(WaitAction<AppState>.remove(locationFlag));
    super.after();
  }

  @override
  Future<AppState?> reduce() async {
    // final bool hasPermission = await handleLocationPermission(context);
    // if (!hasPermission) return null;

    // final Position currentPosition = await Geolocator.getCurrentPosition(
    //   desiredAccuracy: LocationAccuracy.high,
    // );

    // dispatch(
    //   BatchUpdateMiscStateAction(
    //     currentGeoPosition: <String, dynamic>{'position': currentPosition},
    //   ),
    // );
    return state;
  }
}

Future<bool> handleLocationPermission(BuildContext context) async {
  // bool serviceEnabled;
  // LocationPermission permission;

  // serviceEnabled = await Geolocator.isLocationServiceEnabled();
  // if (!serviceEnabled) {
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     const SnackBar(
  //       content: Text(
  //         'Location services are disabled. Please enable the services',
  //       ),
  //     ),
  //   );
  //   return false;
  // }
  // permission = await Geolocator.checkPermission();
  // if (permission == LocationPermission.denied) {
  //   permission = await Geolocator.requestPermission();
  //   if (permission == LocationPermission.denied) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       const SnackBar(content: Text('Location permissions are denied')),
  //     );
  //     return false;
  //   }
  // }
  // if (permission == LocationPermission.deniedForever) {
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     const SnackBar(
  //       content: Text(
  //         'Location permissions are permanently denied, we cannot request permissions.',
  //       ),
  //     ),
  //   );
    return false;
  }
//   return true;
// }
