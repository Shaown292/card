import 'package:card/app/modules/home/views/widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CustomCard(
                images:
                    "https://compote.slate.com/images/22ce4663-4205-4345-8489-bc914da1f272.jpeg?crop=1560%2C1040%2Cx0%2Cy0&width=1280",
                backgroundColor: Colors.black,
              ),
              CustomCard(
                  images:
                      "https://cdn.pixabay.com/photo/2024/12/20/11/53/architect-9280053_1280.jpg",
                  backgroundColor: Colors.redAccent),
              CustomCard(
                  images:
                      "https://compote.slate.com/images/22ce4663-4205-4345-8489-bc914da1f272.jpeg?crop=1560%2C1040%2Cx0%2Cy0&width=1280",
                  backgroundColor: Colors.blueAccent),
              CustomCard(
                  images:
                      "https://cdn.pixabay.com/photo/2024/12/20/11/53/architect-9280053_1280.jpg",
                  backgroundColor: Colors.amberAccent),
              CustomCard(
                images:
                    "https://compote.slate.com/images/22ce4663-4205-4345-8489-bc914da1f272.jpeg?crop=1560%2C1040%2Cx0%2Cy0&width=1280",
                backgroundColor: Colors.black,
              ),
              CustomCard(
                  images:
                      "https://cdn.pixabay.com/photo/2024/12/20/11/53/architect-9280053_1280.jpg",
                  backgroundColor: Colors.redAccent),
              CustomCard(
                  images:
                      "https://compote.slate.com/images/22ce4663-4205-4345-8489-bc914da1f272.jpeg?crop=1560%2C1040%2Cx0%2Cy0&width=1280",
                  backgroundColor: Colors.blueAccent),
              CustomCard(
                  images:
                      "https://cdn.pixabay.com/photo/2024/12/20/11/53/architect-9280053_1280.jpg",
                  backgroundColor: Colors.amberAccent),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {

        },
        indicatorColor: Colors.amber,
        selectedIndex: 0,
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


    );
  }
}
