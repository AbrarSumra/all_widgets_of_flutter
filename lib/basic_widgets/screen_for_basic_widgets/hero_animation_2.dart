import 'package:flutter/material.dart';

class HeroScreen2 extends StatelessWidget {
  const HeroScreen2({
    super.key,
    required this.tag,
  });

  final String tag;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hero Screen"),
        backgroundColor: Colors.blue,
      ),
      body: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Hero(
          tag: tag,
          child: Center(
            child: Container(
              height: 300,
              width: 400,
              color: Colors.primaries[int.parse(tag)],
            ),
          ),
        ),
      ),
    );
  }
}

/*InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Hero(
              tag: "Image",
              child: SizedBox(
                height: 400,
                width: 400,
                child: Image.asset("assets/images/Abrar_Stand.jpg"),
              ),
            ),
          ),*/
