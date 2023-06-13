// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '/constants.dart';

import '../components/foto_perfil.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Perfil'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          //topo
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: 35), child: imageBanner()),
              Positioned(top: 150, child: ProfilePic()),
            ],
          ),

          Column(
            children: [
              const SizedBox(height: 20),
              Text(userName,
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold, color: texto)),
              const SizedBox(height: 5),
              Text(email,
                  style: TextStyle(fontSize: 16, color: Colors.grey[600])),
              const SizedBox(height: 20),
              Divider(
                height: 1,
                thickness: 1,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget imageBanner() => Container(
        color: secondary,
        height: 200,
      );
}
