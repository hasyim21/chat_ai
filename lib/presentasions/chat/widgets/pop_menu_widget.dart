import 'package:flutter/material.dart';

import '../../../data/services/auth_service.dart';
import '../../auth/screens/login_screen.dart';
import '../../profile/screens/profile_screen.dart';

class PopMenuWidget extends StatelessWidget {
  const PopMenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry>[
          PopupMenuItem(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                );
              },
              child: const Row(
                children: [
                  Icon(
                    Icons.person,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text('Profile'),
                ],
              ),
            ),
          ),
          PopupMenuItem(
            child: GestureDetector(
              onTap: () async {
                await AuthService.logout();
                if (context.mounted) {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                      (route) => false);
                }
              },
              child: const Row(
                children: [
                  Icon(
                    Icons.logout_outlined,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text('Logout'),
                ],
              ),
            ),
          ),
        ];
      },
    );
  }
}
