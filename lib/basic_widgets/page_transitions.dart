import 'package:all_in_one_widgets/basic_widgets/screen_for_basic_widgets/transitions_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class PageTransitionsScreen extends StatelessWidget {
  const PageTransitionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Transitions"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        child: const TransitionPage(),
                        childCurrent: this,
                      ),
                    );
                  },
                  child: const Text(
                    "Fade",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: const TransitionPage(),
                        childCurrent: this,
                      ),
                    );
                  },
                  child: const Text(
                    "Right to Left",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.leftToRight,
                        child: const TransitionPage(),
                        childCurrent: this,
                      ),
                    );
                  },
                  child: const Text(
                    "Left to Right",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.topToBottom,
                        child: const TransitionPage(),
                        childCurrent: this,
                      ),
                    );
                  },
                  child: const Text(
                    "Top to Bottom",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.bottomToTop,
                        child: const TransitionPage(),
                        childCurrent: this,
                      ),
                    );
                  },
                  child: const Text(
                    "Bottom to Top",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.scale,
                        alignment: Alignment.topCenter,
                        child: const TransitionPage(),
                        childCurrent: this,
                      ),
                    );
                  },
                  child: const Text(
                    "Scale (with Alignment)",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rotate,
                        alignment: Alignment.center,
                        child: const TransitionPage(),
                        childCurrent: this,
                      ),
                    );
                  },
                  child: const Text(
                    "Rotate (with Alignment)",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.size,
                        alignment: Alignment.center,
                        child: const TransitionPage(),
                        childCurrent: this,
                      ),
                    );
                  },
                  child: const Text(
                    "Size (with Alignment)",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeftWithFade,
                        child: const TransitionPage(),
                        childCurrent: this,
                      ),
                    );
                  },
                  child: const Text(
                    "Right to Left with Fade",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.leftToRightWithFade,
                        child: const TransitionPage(),
                        childCurrent: this,
                      ),
                    );
                  },
                  child: const Text(
                    "Left to Right with Fade",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeftJoined,
                        child: const TransitionPage(),
                        childCurrent: this,
                      ),
                    );
                  },
                  child: const Text(
                    "Right to Left Joined",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.leftToRightJoined,
                        child: const TransitionPage(),
                        childCurrent: this,
                      ),
                    );
                  },
                  child: const Text(
                    "Left to Right Joined",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.topToBottomJoined,
                        child: const TransitionPage(),
                        childCurrent: this,
                      ),
                    );
                  },
                  child: const Text(
                    "Top to Bottom Joined",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.bottomToTopJoined,
                        child: const TransitionPage(),
                        childCurrent: this,
                      ),
                    );
                  },
                  child: const Text(
                    "Bottom to Top Joined",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeftPop,
                        child: const TransitionPage(),
                        childCurrent: this,
                      ),
                    );
                  },
                  child: const Text(
                    "Right to Left Pop",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.leftToRightPop,
                        child: const TransitionPage(),
                        childCurrent: this,
                      ),
                    );
                  },
                  child: const Text(
                    "Left to Right Pop",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.topToBottomPop,
                        child: const TransitionPage(),
                        childCurrent: this,
                      ),
                    );
                  },
                  child: const Text(
                    "Top to Bottom Pop",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.bottomToTopPop,
                        child: const TransitionPage(),
                        childCurrent: this,
                      ),
                    );
                  },
                  child: const Text(
                    "Bottom to Top Pop",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
