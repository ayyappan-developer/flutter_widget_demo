import 'package:flutter/material.dart';

// TabBar + TabBarView: tabs at the top. Swipe or tap to change.
// DefaultTabController connects the TabBar and the TabBarView.
// length must be the same as the number of tabs.
class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.chat), text: 'Chats'),
              Tab(icon: Icon(Icons.update), text: 'Updates'),
              Tab(icon: Icon(Icons.call), text: 'Calls'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Chats Page', style: TextStyle(fontSize: 26))),
            Center(child: Text('Updates Page', style: TextStyle(fontSize: 26))),
            Center(child: Text('Calls Page', style: TextStyle(fontSize: 26))),
          ],
        ),
      ),
    );
  }
}
