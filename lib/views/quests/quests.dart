import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playground/shared/p_drawer/p_drawer.dart';

class QuestsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: PDrawer(),
      appBar: AppBar(
        title: Text('Quests'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: Icon(
                CupertinoIcons.exclamationmark,
                size: 128.0,
              ),
            ),
            Divider(),
            Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
          ],
        ),
      ),
    );
  }
}
