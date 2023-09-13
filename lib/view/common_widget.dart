import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CommonWidget {
  static PreferredSizeWidget commonAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => context.pop(),
        child: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
    );
  }
}
