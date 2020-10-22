import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playground/views/characters/characters.dart';
import 'package:playground/views/home/home.dart';
import 'package:playground/views/items/item_detail/item_detail.dart';
import 'package:playground/views/items/items.dart';
import 'package:playground/views/quests/quests.dart';
import 'package:playground/views/settings/settings.dart';

abstract class RouteEntry {}

enum DrawerEntry {
  home,
  quests,
  characters,
  items,
  settings,
}

extension DrawerEntryFunctions on DrawerEntry {
  String get name => const {
        DrawerEntry.home: 'Home',
        DrawerEntry.quests: 'Quests',
        DrawerEntry.characters: 'Characters',
        DrawerEntry.items: 'Items',
        DrawerEntry.settings: 'Settings',
      }[this];

  IconData get icon => const {
        DrawerEntry.home: CupertinoIcons.home,
        DrawerEntry.quests: CupertinoIcons.exclamationmark,
        DrawerEntry.characters: CupertinoIcons.person_3_fill,
        DrawerEntry.items: CupertinoIcons.bag_fill,
        DrawerEntry.settings: CupertinoIcons.settings_solid,
      }[this];

  MapEntry<String, Widget Function(BuildContext)> get route => {
        DrawerEntry.home: MapEntry(
          '/home',
          (context) => HomeView(),
        ),
        DrawerEntry.quests: MapEntry(
          '/quests',
          (context) => QuestsView(),
        ),
        DrawerEntry.characters: MapEntry(
          '/characters',
          (context) => CharactersView(),
        ),
        DrawerEntry.items: MapEntry(
          '/items',
          (context) => ItemsView(),
        ),
        DrawerEntry.settings: MapEntry(
          '/settings',
          (context) => SettingsView(),
        ),
      }[this];
}

enum ItemsRoutingKey {
  detail,
}

extension ItemsRoutingKeyFunctions on ItemsRoutingKey {
  MapEntry<String, Widget Function(BuildContext)> get route => {
        ItemsRoutingKey.detail: MapEntry(
          DrawerEntry.items.route.key + '/detail',
          (context) => ItemDetailView(),
        ),
      }[this];
}

class RoutingHelper {
  static Map<String, Widget Function(BuildContext)> routes = {}..addEntries([
      ...DrawerEntry.values.map((entry) => entry.route),
      ...ItemsRoutingKey.values.map((entry) => entry.route),
    ]);

  static void drawerNavigation(BuildContext context, DrawerEntry entry) {
    if (ModalRoute.of(context).settings.name == entry.route.key) {
      Navigator.of(context).pop();
    } else {
      Navigator.pushReplacementNamed(context, entry.route.key);
    }
  }

  static void push(BuildContext context,
          MapEntry<String, Widget Function(BuildContext)> route,
          {Object arguments}) =>
      Navigator.of(context).pushNamed(route.key, arguments: arguments);
}
