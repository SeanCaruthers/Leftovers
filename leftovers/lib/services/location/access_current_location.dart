/*
 *
 *  Following example from pub.dev on usage of location package
 *  pub.dev/packages/location
 * 
 */

import 'package:location/location.dart';

Future<LocationData?> currentLocation() async {
  Location location = new Location();

  bool _service;
  PermissionStatus _permission;

  _service = await location.serviceEnabled();

  if (!_service) {
    _service = await location.requestService();
    if (!_service) {
      return null;
    }
  }

  _permission = await location.hasPermission();
  if (_permission == PermissionStatus.denied) {
    _permission = await location.requestPermission();
    if (_permission != PermissionStatus.granted) {
      return null;
    }
  }
  return await location.getLocation();
}
