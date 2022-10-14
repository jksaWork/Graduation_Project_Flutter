import 'package:real_state_mangament/data/Models/RealState.dart';

RealState one = RealState(
    id: 12,
    name: "شقه مفروشه",
    image:
        'https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&w=600',
    location: 'الخرطوم 2 ',
    isFavorate: true);

RealState tow = RealState(
    id: 12,
    name: "شقه عاديه",
    image:
        'https://cdn.pixabay.com/photo/2016/11/18/17/46/house-1836070__340.jpg',
    location: ' ام درمان المهندسين',
    isFavorate: true);
RealState three = RealState(
    id: 12,
    name: "بيت ارضي ",
    image:
        'https://images.pexels.com/photos/1571463/pexels-photo-1571463.jpeg?auto=compress&cs=tinysrgb&w=600',
    location: 'شارع الستين ',
    isFavorate: false);

List<RealState> StaticRealState = [one, tow, three, one];
