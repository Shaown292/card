import 'package:flutter/material.dart';

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const NavigationExample(),
    );
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int initialIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            initialIndex = index;
            debugPrint("My current index $index");
          });
        },
        indicatorColor: Colors.amber,
        selectedIndex: initialIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.notifications_sharp)),
            label: 'Notifications',
          ),
          NavigationDestination(
            icon: Badge(
              label: Text('2'),
              child: Icon(Icons.messenger_sharp),
            ),
            label: 'Messages',
          ),
        ],
      ),
      body: <Widget>[
        /// Home page
        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Text(
                'Home page',
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
        ),

        /// Notifications page
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: Icon(Icons.notifications_sharp),
                  title: Text('Notification 1'),
                  subtitle: Text('This is a notification'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.notifications_sharp),
                  title: Text('Notification 2'),
                  subtitle: Text('This is a notification'),
                ),
              ),
            ],
          ),
        ),

        /// Messages page
        ListView.builder(
          reverse: true,
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    'Hello',
                    style: theme.textTheme.bodyLarge!
                        .copyWith(color: theme.colorScheme.onPrimary),
                  ),
                ),
              );
            }
            return Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  'Hi!',
                  style: theme.textTheme.bodyLarge!
                      .copyWith(color: theme.colorScheme.onPrimary),
                ),
              ),
            );
          },
        ),
      ][initialIndex],
    );
  }
}

// Container(
// height: 60,
// decoration: const BoxDecoration(
// color: Colors.blueAccent,
// borderRadius: BorderRadius.only(
// topLeft: Radius.circular(100),
// topRight: Radius.circular(100),
// ),
// ),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: [
// IconButton(
// enableFeedback: false,
// onPressed: () {
// setState(() {
// isPressed = true;
// });
// },
// icon: isPressed == true ? const Icon(
// Icons.abc_sharp,
// color: Colors.white,
// size: 35,
// ) : const Icon(
// Icons.home_outlined,
// color: Colors.white,
// size: 35,
// ),
// ),
// IconButton(
// enableFeedback: false,
// onPressed: () {},
// icon: const Icon(
// Icons.work_outline_outlined,
// color: Colors.white,
// size: 35,
// ),
// ),
// IconButton(
// enableFeedback: false,
// onPressed: () {},
// icon: const Icon(
// Icons.widgets_outlined,
// color: Colors.white,
// size: 35,
// ),
// ),
// IconButton(
// enableFeedback: false,
// onPressed: () {},
// icon: const Icon(
// Icons.person_outline,
// color: Colors.white,
// size: 35,
// ),
// ),
// ],
// ),
// ),