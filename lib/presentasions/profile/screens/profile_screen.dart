import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../data/services/auth_service.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  User? user;

  @override
  void initState() {
    super.initState();
    user = AuthService.getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.black,
          child: Text(user!.displayName!.split('').first),
        ),
        title: Text(user!.displayName!),
        subtitle: Text(user!.email!),
      ),
    );
  }
}
