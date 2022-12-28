import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SettingWidget extends StatelessWidget {
  final String settings;
  final IconData settingIcon;

  const SettingWidget({
    super.key,
    required this.settings,
    required this.settingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * 0.03,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(settingIcon),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),
          Text(
            settings,
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }
}
