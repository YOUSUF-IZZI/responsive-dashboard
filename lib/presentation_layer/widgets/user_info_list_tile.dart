import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/domain_layer/user_info_item_model.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.model});
  final UserInfoItemModel model;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(model.icon),
          title: Text(
            model.name,
            style: const TextStyle(
              color: Color(0xFF064060),
              fontSize: 16,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Text(
            model.email,
            style: const TextStyle(
              color: Color(0xFFAAAAAA),
              fontSize: 12,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ),
      ),
    );
  }
}
