import 'package:flutter/material.dart';

class BgContainer extends StatelessWidget {
  const BgContainer(this.child, {super.key});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 254, 254, 254),
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.29,
            ),
            Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 31, 30, 30)
                          .withOpacity(0.6),
                      spreadRadius: 4,
                      blurRadius: 12,
                    ),
                  ],
                  color: const Color.fromARGB(245, 231, 233, 233),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: child),
          ],
        )
      ],
    );
  }
}
