import 'package:flutter/material.dart';
import 'package:sep_app/app/shared/sep_colors.dart';
import 'package:sep_app/app/shared/widgets/sep_app_scaffold/drawer_link.dart';

class SepAppScaffold extends StatelessWidget {
  final Widget child;
  final bool isDrawerActive;

  const SepAppScaffold({
    Key? key,
    required this.child,
    this.isDrawerActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: isDrawerActive ? Drawer(child: _drawerContent(context)) : null,
      appBar: AppBar(
        title: _title,
        centerTitle: true,
      ),
      backgroundColor: SepColors.backgroundColor,
      body: child,
    );
  }

  Text get _title {
    return const Text(
      "SEP",
      style: TextStyle(
        fontFamily: 'SoftFont',
        fontSize: 23,
      ),
    );
  }

  Widget _drawerContent(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _profileSection(context),
          _menuSection(context),
        ],
      ),
    );
  }
}

Widget _profileSection(BuildContext context) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
    padding: const EdgeInsets.all(5.0),
    decoration: const BoxDecoration(
        border: Border(
      bottom: BorderSide(
        color: Colors.grey,
      ),
    )),
    child: Row(
      children: [
        Icon(
          Icons.account_circle,
          color: SepColors.primaryColor,
          size: 50,
        ),
        const SizedBox(width: 10),
        const Text(
          "Berkay Murat",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    ),
  );
}

Widget _menuSection(BuildContext context) {
  return SafeArea(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: const [
        DrawerLink(
            title: "Ayarlar", prefixIcon: Icons.settings, path: "/settings"),
        DrawerLink(
            title: "Sıkça Sorulan Sorular",
            prefixIcon: Icons.question_mark_sharp,
            path: "/faq"),
        DrawerLink(
            title: "Çıkış Yap", prefixIcon: Icons.logout, path: "/login"),
      ],
    ),
  );
}