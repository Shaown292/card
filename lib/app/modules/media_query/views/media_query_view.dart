import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/media_query_controller.dart';

class MediaQueryView extends GetView<MediaQueryController> {
  const MediaQueryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaQueryView'),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 30,),
            Row(
              children: [
                Container(
                  width: (MediaQuery.of(context).size.width / 3) - 27,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xFFFFFFFF),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(),
                          Container(
                            height: 70,
                            width: 70,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                  AssetImage("assets/images/recomended_item.png"),
                                  fit: BoxFit.cover
                              ),
                            ),
                          ),
                          Container(
                            height: 16,
                            width: 40,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image:
                                AssetImage("assets/images/fav_icon.png"),

                              ),
                            ),
                          ),

                        ],
                      ),
                      const SizedBox(height: 20,),
                      const Text("Honey Limb Combo"),
                      const SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("2000"),
                            Container(
                              height: 16,
                              width: 40,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image:
                                  AssetImage("assets/images/add_icon.png"),

                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                    ],
                  ),
                ),
                const SizedBox(width: 20,),
                Container(
                  width: (MediaQuery.of(context).size.width / 3) - 27,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xFFFFFFFF),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(),
                          Container(
                            height: 70,
                            width: 70,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                  AssetImage("assets/images/recomended_item.png"),
                                  fit: BoxFit.cover
                              ),
                            ),
                          ),
                          Container(
                            height: 16,
                            width: 40,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image:
                                AssetImage("assets/images/fav_icon.png"),

                              ),
                            ),
                          ),

                        ],
                      ),
                      const SizedBox(height: 20,),
                      const Text("Honey Limb Combo"),
                      const SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("2000"),
                            Container(
                              height: 16,
                              width: 40,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image:
                                  AssetImage("assets/images/add_icon.png"),

                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                    ],
                  ),
                ),
                const SizedBox(width: 20,),
                Container(
                  width: (MediaQuery.of(context).size.width / 3) - 27,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xFFFFFFFF),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(),
                          Container(
                            height: 70,
                            width: 70,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                  AssetImage("assets/images/recomended_item.png"),
                                  fit: BoxFit.cover
                              ),
                            ),
                          ),
                          Container(
                            height: 16,
                            width: 40,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image:
                                AssetImage("assets/images/fav_icon.png"),

                              ),
                            ),
                          ),

                        ],
                      ),
                      const SizedBox(height: 20,),
                      const Text("Honey Limb Combo"),
                      const SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("2000"),
                            Container(
                              height: 16,
                              width: 40,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image:
                                  AssetImage("assets/images/add_icon.png"),

                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                    ],
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
