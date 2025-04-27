import 'package:flutter/material.dart';
import 'package:t_store/common/layouts/headers/header.dart';
import 'package:t_store/common/widgets/containers/rounded_container.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key,this.body});
final Widget? body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Expanded(child: Drawer()),
          Expanded(
            flex: 5,
              child: Column(
            children: [
              //HEADER
              const THeader(),
              //BODY
              if(body!=null)body!,
            ],
          ))
        ],
      ),
    );
  }
}