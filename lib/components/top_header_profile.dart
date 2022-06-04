import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class TopHeaderProfile extends StatelessWidget {
  final String imagePath;
  final String name;

  const TopHeaderProfile({
    super.key,
    required this.imagePath,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: Image.asset(imagePath, width: 80, height: 80),
        ),
        const SizedBox(width: 20),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Hello $name',
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Text(
                'Welcome Back',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )
            ],
          ),
        ),
        Flexible(
          flex: 1,
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                border: Border.all(
                  color: Theme.of(context).primaryColor,
                  width: 1.5,
                ),
              ),
              child: IconButton(
                onPressed: () {},
                icon: FaIcon(
                  FontAwesomeIcons.solidBell,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
