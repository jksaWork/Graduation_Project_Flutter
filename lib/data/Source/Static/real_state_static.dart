import 'package:real_state_mangament/data/Models/Area.dart';
import 'package:real_state_mangament/data/Models/Image.dart';
import 'package:real_state_mangament/data/Models/RealState.dart';
import 'package:real_state_mangament/data/Source/Static/areas_static.dart';

RealState one = RealState(
  price: 255,
  isFavorate: true,
  areaId: 1,
  area: areaone,
  images: [
    Image(
        id: 1,
        url:
            'https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&w=600')
  ],
  id: 12,
  location: 'الخرطوم 2 ',
  isAvaliable: 1,
  mainImage:
      'https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&w=600',
  shortDesc: "Hello From Here ",
  longDesc: 'Hello Form There ',
  service: areaone,
  type: areaone,
  title: 'Hello Jksa',
  lat: '15.11',
  long: 'Hello jksa',
  status: 'new',
  typeId: 1,
  clientId: 1,
  serviceId: 1,
);

RealState there = RealState(
  price: 255,
  areaId: 1,
  area: areaone,
  images: [
    Image(
        id: 1,
        url:
            'https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&w=600')
  ],
  id: 12,
  location: 'الخرطوم 2 ',
  isAvaliable: 1,
  mainImage:
      'https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&w=600',
  shortDesc: "Hello From Here ",
  longDesc: 'Hello Form There ',
  service: areaone,
  type: areaone,
  title: 'Hello Jksa',
  lat: '15.11',
  long: 'Hello jksa',
  status: 'new',
  typeId: 1,
  clientId: 1,
  serviceId: 1,
  isFavorate: true,
);

RealState tow = RealState(
  price: 255,
  isFavorate: true,
  areaId: 1,
  area: areaone,
  images: [
    Image(
        id: 1,
        url:
            'https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&w=600')
  ],
  id: 12,
  location: 'الخرطوم 2 ',
  isAvaliable: 1,
  mainImage:
      'https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&w=600',
  shortDesc: "Hello From Here ",
  longDesc: 'Hello Form There ',
  service: areaone,
  type: areaone,
  title: 'Hello Jksa',
  lat: '15.11',
  long: 'Hello jksa',
  status: 'new',
  typeId: 1,
  clientId: 1,
  serviceId: 1,
);

List<RealState> StaticRealState = [one, tow, there, one];
