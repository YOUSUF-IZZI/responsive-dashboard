import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.avatar});
  final String title, subTitle, avatar;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(avatar),
        title: Text(
          title,
          style: const TextStyle(
            color: Color(0xFF064060),
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Text(
          subTitle,
          style: const TextStyle(
            color: Color(0xFFAAAAAA),
            fontSize: 12,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
      ),
    );
  }
}
