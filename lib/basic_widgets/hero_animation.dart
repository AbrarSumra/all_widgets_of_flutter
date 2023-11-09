import 'package:all_in_one_widgets/basic_widgets/screen_for_basic_widgets/hero_animation_2.dart';
import 'package:flutter/material.dart';

class HeroAnimationScreen extends StatelessWidget {
  const HeroAnimationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hero Animation"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Expanded(
            child: GridView.builder(
              itemCount: 18,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 9 / 5,
              ),
              itemBuilder: (ctx, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => HeroScreen2(
                                  tag: index.toString(),
                                )));
                  },
                  child: Hero(
                    tag: "$index",
                    child: Container(
                      color: Colors.primaries[index],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

/*InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (ctx) => const HeroScreen2(tag: index,)));
            },
            child: Hero(
              tag: "Image",
              child: SizedBox(
                height: 300,
                width: 400,
                child: Image.asset("assets/images/Abrar_sit.JPG"),
              ),
            ),
          ),*/
