import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'google_sign_in_page.dart';


class NavBarWidget extends StatefulWidget {
  const NavBarWidget({Key? key}) : super(key: key);

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome To Home Page'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: (){
                  final provider = Provider.of<GoogleSignInProvider>(
                      context,
                      listen: false);
                  provider.logout();
                },
              icon:const Icon(Icons.logout),)
          ],
        ),
      ),
    );
  }
}
