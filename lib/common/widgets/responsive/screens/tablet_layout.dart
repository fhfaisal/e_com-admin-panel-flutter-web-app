
import 'package:flutter/material.dart';
import 'package:t_store/common/layouts/headers/header.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key,this.body});
  final Widget? body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar:const THeader(),
      body: body,
    );
  }
}