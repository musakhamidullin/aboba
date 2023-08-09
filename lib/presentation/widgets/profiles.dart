import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

import '../themes/theme.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: primary[100],
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Text(loremIpsum(words: 4))),
          Text(DateFormat('HH:MM').format(DateTime.now()))
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 240,
            child: Text(
              loremIpsum(words: 10),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Stack(
            children: [
              Icon(Icons.check_outlined, color: Colors.green),
              Positioned(
                  left: 5,
                  child: Icon(
                    Icons.check,
                    color: Colors.green,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
