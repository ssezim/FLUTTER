import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        childAspectRatio: 0.95,
        children: [
          for (int i = 1; i < 8; i++)
            Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, spreadRadius: 1, blurRadius: 8),
                  ],
                ),
                child: Column(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'sinfnc');
                        },
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          child: Image.asset(
                            'assets/icons/7.png',
                            width: 110,
                            height: 110,
                            fit: BoxFit.cover,
                          ),
                        )),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Пицца',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '300 c',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Icon(
                          CupertinoIcons.cart_badge_plus,
                          size: 25,
                          color: Colors.white,
                        ),
                      ],
                    )
                  ],
                ))
        ]);
  }
}
