import 'dart:math';

class DistanceBetween{
  double calculateDistance(lat1, lon1, lat2, lon2){
    var p = 0.017453292519943295;
    var c = cos;
    var a = 0.5 - c((lat2 - lat1) * p)/2 +
        c(lat1 * p) * c(lat2 * p) *
            (1 - c((lon2 - lon1) * p))/2;
    return 12742 * asin(sqrt(a));
  }

  List<dynamic> data = [
    {
      "lat": 44.968046,
      "lng": -94.420307
    },{
      "lat": 44.33328,
      "lng": -89.132008
    },{
      "lat": 33.755787,
      "lng": -116.359998
    },{
      "lat": 33.844843,
      "lng": -116.54911
    },{
      "lat": 44.92057,
      "lng": -93.44786
    },{
      "lat": 44.240309,
      "lng": -91.493619
    },{
      "lat": 44.968041,
      "lng": -94.419696
    },{
      "lat": 44.333304,
      "lng": -89.132027
    },{
      "lat": 33.755783,
      "lng": -116.360066
    },{
      "lat": 33.844847,
      "lng": -116.549069
    },
  ];
  double totalDistance = 0;

  method(){

    print(totalDistance);
  }
}