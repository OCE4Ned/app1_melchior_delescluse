import 'dart:math';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:flutter/material.dart';
import 'logo.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        const SizedBox(width: 75),

        const Logo(),

        Row(
          children: [
            InkWell(
              customBorder: const CircleBorder(),
              onTap: () {},
              child: Transform.rotate(
                angle: pi/2,
                child: Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      border: GradientBoxBorder(
                          width: 2,
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: <Color>[
                              Color(0xFF3573ac),
                              Color(0xFF73cbab),
                            ],
                          )
                      )
                  ),
                  child: const Icon(
                    Icons.tune_rounded,
                    color: Color(0xFF3573ac),
                  ),
                ),
              ),
            ),

            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings_rounded,
                  color: Color(0XFF3573ac),
                )
            )
          ],
        ),
      ],
    );
  }
}
