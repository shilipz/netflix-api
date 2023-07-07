import 'package:flutter/material.dart';

class MainCardWidget extends StatelessWidget {
  const MainCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 180,
        width: 130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black,
            image: const DecorationImage(
                image:
                    AssetImage('assets/images/b9ykj4v8ykjRoGB7SpI1OuxblNU.jpg'),
                fit: BoxFit.cover)),
      ),
    );
  }
}
