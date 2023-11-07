import 'package:flutter/material.dart';

class ClipPathScreen extends StatelessWidget {
  const ClipPathScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ClipPath"),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 200,
                    height: 200,
                    child: ClipPath(
                      clipper: Clipper1(),
                      child: Image.asset(
                        "assets/images/images-2.jpeg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 200,
                    height: 200,
                    child: ClipPath(
                      clipper: Clipper2(),
                      child: Image.asset(
                        "assets/images/images-2.jpeg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 200,
                    height: 200,
                    child: ClipPath(
                      clipper: Clipper3(),
                      child: Image.asset(
                        "assets/images/images-2.jpeg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 200,
                    height: 200,
                    child: ClipPath(
                      clipper: Clipper4(),
                      child: Image.asset(
                        "assets/images/images-2.jpeg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 200,
                    height: 200,
                    child: ClipPath(
                      clipper: Clipper5(),
                      child: Image.asset(
                        "assets/images/images-2.jpeg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 200,
                    height: 200,
                    child: ClipPath(
                      clipper: Clipper6(),
                      child: Image.asset(
                        "assets/images/images-2.jpeg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 200,
                    height: 200,
                    child: ClipPath(
                      clipper: Clipper7(),
                      child: Image.asset(
                        "assets/images/images-2.jpeg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 200,
                    height: 200,
                    child: ClipPath(
                      clipper: Clipper8(),
                      child: Image.asset(
                        "assets/images/images-2.jpeg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 200,
                    height: 200,
                    child: ClipPath(
                      clipper: Clipper9(),
                      child: Image.asset(
                        "assets/images/images-2.jpeg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 200,
                    height: 200,
                    child: ClipPath(
                      clipper: Clipper10(),
                      child: Image.asset(
                        "assets/images/images-2.jpeg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 200,
                    height: 200,
                    child: ClipPath(
                      clipper: Clipper11(),
                      child: Image.asset(
                        "assets/images/images-2.jpeg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 200,
                    height: 200,
                    child: ClipPath(
                      clipper: Clipper12(),
                      child: Image.asset(
                        "assets/images/images-2.jpeg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
              ClipPath(
                clipper: Clipper13(),
                child: Container(
                  height: 200,
                  width: 400,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 10),
              ClipPath(
                clipper: Clipper14(),
                child: Container(
                  height: 200,
                  width: 400,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Clipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var mPath = Path();
    mPath.lineTo(size.width, 0);
    mPath.lineTo(size.width, size.height);
    return mPath;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class Clipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var mPath2 = Path();
    mPath2.moveTo(size.width * 0.50, 0);
    mPath2.lineTo(size.width, size.height * 0.5);
    mPath2.lineTo(size.width * 0.5, size.height);
    mPath2.lineTo(0, size.height * 0.5);

    return mPath2;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class Clipper3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var mPath2 = Path();
    mPath2.moveTo(size.width * 0.25, 0);
    mPath2.lineTo(size.width * 0.75, 0);
    mPath2.lineTo(size.width, size.height * 0.5);
    mPath2.lineTo(size.width * 0.75, size.height);
    mPath2.lineTo(size.width * 0.25, size.height);
    mPath2.lineTo(0, size.height * 0.5);

    return mPath2;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class Clipper4 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var mPath2 = Path();
    mPath2.moveTo(0, size.height * 0.5);
    mPath2.lineTo(size.width * 0.40, size.height * 0.40);
    mPath2.lineTo(size.width * 0.50, 0);
    mPath2.lineTo(size.width * 0.60, size.height * 0.40);
    mPath2.lineTo(size.width, size.height * 0.50);
    mPath2.lineTo(size.width * 0.60, size.height * 0.60);
    mPath2.lineTo(size.width * 0.50, size.height);
    mPath2.lineTo(size.width * 0.40, size.height * 0.60);
    return mPath2;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class Clipper5 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var mPath2 = Path();
    mPath2.moveTo(size.width * 0.75, 0);
    mPath2.lineTo(size.width * 0.25, size.height * 0.60);
    mPath2.lineTo(size.width * 0.50, size.height * 0.60);
    mPath2.lineTo(size.width * 0.25, size.height);
    mPath2.lineTo(size.width * 0.75, size.height * 0.50);
    mPath2.lineTo(size.width * 0.50, size.height * 0.50);

    return mPath2;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class Clipper6 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var mPath2 = Path();
    mPath2.moveTo(0, 0);
    mPath2.lineTo(size.width * 0.20, size.height);
    mPath2.lineTo(size.width * 0.35, size.height * 0.60);
    mPath2.lineTo(size.width * 0.50, size.height);
    mPath2.lineTo(size.width * 0.65, size.height * 0.60);
    mPath2.lineTo(size.width * 0.80, size.height);
    mPath2.lineTo(size.width, 0);

    return mPath2;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class Clipper7 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var mPath2 = Path();
    mPath2.moveTo(0, size.height * 0.5);
    mPath2.lineTo(size.width * 0.15, size.height);
    mPath2.lineTo(size.width * 0.30, size.height * 0.50);
    mPath2.lineTo(size.width * 0.45, size.height);
    mPath2.lineTo(size.width * 0.60, size.height * 0.50);
    mPath2.lineTo(size.width * 0.75, size.height);
    mPath2.lineTo(size.width * 0.90, size.height * 0.50);
    mPath2.lineTo(size.width * 0.75, 0);
    mPath2.lineTo(size.width * 0.60, size.height * 0.50);
    mPath2.lineTo(size.width * 0.45, 0);
    mPath2.lineTo(size.width * 0.30, size.height * 0.50);
    mPath2.lineTo(size.width * 0.15, 0);

    return mPath2;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class Clipper8 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var mPath2 = Path();
    mPath2.lineTo(size.width, 0);
    mPath2.lineTo(size.width, size.height);
    mPath2.quadraticBezierTo(
      size.width * 0.8,
      size.height * 0.2,
      0,
      0,
    );

    return mPath2;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class Clipper9 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var mPath2 = Path();
    mPath2.lineTo(size.width, 0);
    mPath2.cubicTo(
      size.width * 0.5,
      size.height * 0.25,
      size.width,
      size.height * 0.75,
      size.width * 0.5,
      size.height,
    );

    return mPath2;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class Clipper10 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var mPath2 = Path();
    mPath2.lineTo(size.width, 0);
    mPath2.quadraticBezierTo(
      size.width * 0.8,
      size.height * 0.5,
      size.width,
      size.height,
    );
    mPath2.quadraticBezierTo(
      size.width * 0.6,
      size.height * 0.2,
      0,
      0,
    );

    return mPath2;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class Clipper11 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var mPath2 = Path();
    mPath2.lineTo(size.width, 0);

    mPath2.lineTo(size.width, size.height * 0.8);
    mPath2.cubicTo(
      size.width * 0.75,
      size.height * 0.6,
      size.width * 0.30,
      size.height,
      0,
      size.height * 0.8,
    );

    return mPath2;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class Clipper12 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var mPath2 = Path();
    mPath2.lineTo(size.width, 0);
    mPath2.quadraticBezierTo(
      size.width * 0.8,
      size.height * 0.5,
      size.width,
      size.height,
    );
    mPath2.quadraticBezierTo(
      size.width * 0.6,
      size.height * 0.2,
      0,
      0,
    );

    return mPath2;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class Clipper13 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var mPath = Path();
    mPath.lineTo(0, size.height);
    mPath.lineTo(size.width, size.height);
    mPath.lineTo(size.width, size.height * 0.8);
    mPath.cubicTo(
      size.width * 0.60,
      size.height * 0.40,
      size.width * 0.30,
      size.height,
      0,
      size.height * 0.5,
    );

    return mPath;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class Clipper14 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var mPath = Path();
    mPath.lineTo(size.width, 0);
    mPath.lineTo(size.width, size.height * 0.6);
    mPath.cubicTo(
      size.width * 0.60,
      size.height * 0.40,
      size.width * 0.30,
      size.height,
      0,
      size.height * 0.6,
    );

    return mPath;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
