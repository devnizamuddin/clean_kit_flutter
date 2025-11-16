import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainShell extends StatelessWidget {
  final Widget child;
  const MainShell({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('App Shell')),
      // --- The persistent Drawer ---
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(child: Text('App Menu')),
            // Navigation via context.go is declarative and simple
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.of(context).pop();
                context.go('/');
              },
            ),
            ListTile(
              title: const Text('Profile'),
              onTap: () {
                Navigator.of(context).pop(); // closes the drawer
                context.go('/profile');
              },
            ),
            // ... other menu items
          ],
        ),
      ),
      // --- The content for the current nested route ---
      body: child,
    );
  }
}
