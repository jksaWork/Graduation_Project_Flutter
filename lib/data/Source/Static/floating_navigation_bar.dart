import 'package:flutter/material.dart';
import 'package:real_state_mangament/views/Favorate/favaorate_page.dart';
import 'package:real_state_mangament/views/Home/Home.dart';
import 'package:real_state_mangament/views/maps.dart';
import 'package:real_state_mangament/views/search/Search.dart';

List flotingButtonNav = [
  {
    'icon': Icons.map,
    'route': MapsScreen.routeName,
  },
  {
    'icon': Icons.home,
    'route': Home.routeName,
  },
  {
    'icon': Icons.favorite,
    'route': FavoratePage.routeName,
  },
  {
    'icon': Icons.search,
    'route': Search.routeName,
  },
];
