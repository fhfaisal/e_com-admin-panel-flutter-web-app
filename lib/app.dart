import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:t_store/common/layouts/templates/site_layout.dart';
import 'package:t_store/common/widgets/responsive/screens/desktop_layout.dart';
import 'package:t_store/features/routes/app_route.dart';
import 'package:t_store/features/routes/routes.dart';
import 'package:t_store/main.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/theme/theme.dart';

import 'common/widgets/containers/rounded_container.dart';
import 'common/widgets/responsive/responsive_widget.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: TTexts.appName,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: TRoutes.responsiveDesignScreen,
      getPages: TAppRoute.pages,
      // initialBinding: GeneralBindings(),
      // home: const Scaffold(
      //   body: Center(
      //     child: Text('Awesome! 🎊 Project Structure is set up and running. \n Happy T Coding 🎊', textAlign: TextAlign.center,),
      //   ),
      // ),
    );
  }
}

class ResponsiveDesignScreen extends StatelessWidget {
  const ResponsiveDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const TSiteTemplate(desktop: Desktop(),tablet: Tablet(),);
  }
}



class Desktop extends StatelessWidget {
  const Desktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        Row(
          spacing: 20,
          children: [
            Expanded(
              child: Column(
                children: [
                  TRoundedContainer(
                    height: 450,
                    width: double.maxFinite,
                    backgroundColor: Colors.blue.withOpacity(0.2),
                    child: const Center(
                      child: Text('Box 1'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                spacing: 20,
                children: [
                  TRoundedContainer(
                    height: 215,
                    width: double.maxFinite,
                    backgroundColor: Colors.blue.withOpacity(0.2),
                    child: const Center(
                      child: Text('Box 2'),
                    ),
                  ),
                  Row(
                    spacing: 20,
                    children: [
                      Expanded(
                        child: TRoundedContainer(
                          height: 215,
                          backgroundColor: Colors.blue.withOpacity(0.2),
                          child: const Center(
                            child: Text('Box 3'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TRoundedContainer(
                          height: 215,
                          backgroundColor: Colors.blue.withOpacity(0.2),
                          child: const Center(
                            child: Text('Box 4'),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        Row(
          spacing: 20,
          children: [
            Expanded(
              flex: 2,
              child: TRoundedContainer(
                height: 215,
                backgroundColor: Colors.pink.withOpacity(0.2),
                child: const Center(
                  child: Text('Box 5'),
                ),
              ),
            ),
            Expanded(
              child: TRoundedContainer(
                height: 215,
                backgroundColor: Colors.grey.withOpacity(0.2),
                child: const Center(
                  child: Text('Box 6'),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Tablet extends StatelessWidget {
  const Tablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 20,
        children: [
          Row(
            spacing: 20,
            children: [
              Expanded(
                child: Column(
                  children: [
                    TRoundedContainer(
                      height: 450,
                      width: double.maxFinite,
                      backgroundColor: Colors.blue.withOpacity(0.2),
                      child: const Center(
                        child: Text('Box 1'),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  spacing: 20,
                  children: [
                    TRoundedContainer(
                      height: 215,
                      width: double.maxFinite,
                      backgroundColor: Colors.blue.withOpacity(0.2),
                      child: const Center(
                        child: Text('Box 2'),
                      ),
                    ),
                    Row(
                      spacing: 20,
                      children: [
                        Expanded(
                          child: TRoundedContainer(
                            height: 215,
                            backgroundColor: Colors.blue.withOpacity(0.2),
                            child: const Center(
                              child: Text('Box 3'),
                            ),
                          ),
                        ),
                        Expanded(
                          child: TRoundedContainer(
                            height: 215,
                            backgroundColor: Colors.blue.withOpacity(0.2),
                            child: const Center(
                              child: Text('Box 4'),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          TRoundedContainer(
            height: 215,
            width: double.infinity,
            backgroundColor: Colors.pink.withOpacity(0.2),
            child: const Center(
              child: Text('Box 5'),
            ),
          ),
          TRoundedContainer(
            height: 215,
            width: double.infinity,
            backgroundColor: Colors.red.withOpacity(0.2),
            child: const Center(
              child: Text('Box 6'),
            ),
          ),
        ],
      ),
    );
  }
}

class Mobile extends StatelessWidget {
  const Mobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 20,
        children: [
          TRoundedContainer(
            height: 450,
            width: double.infinity,
            backgroundColor: Colors.blue.withOpacity(0.2),
            child: const Center(
              child: Text('Box 1'),
            ),
          ),
          TRoundedContainer(
            height: 215,
            width: double.infinity,
            backgroundColor: Colors.blue.withOpacity(0.2),
            child: const Center(
              child: Text('Box 2'),
            ),
          ),
          TRoundedContainer(
            height: 215,
            width: double.infinity,
            backgroundColor: Colors.blue.withOpacity(0.2),
            child: const Center(
              child: Text('Box 3'),
            ),
          ),
          TRoundedContainer(
            height: 215,
            width: double.infinity,
            backgroundColor: Colors.blue.withOpacity(0.2),
            child: const Center(
              child: Text('Box 4'),
            ),
          ),
          TRoundedContainer(
            height: 215,
            width: double.infinity,
            backgroundColor: Colors.pink.withOpacity(0.2),
            child: const Center(
              child: Text('Box 5'),
            ),
          ),
          TRoundedContainer(
            height: 215,
            width: double.infinity,
            backgroundColor: Colors.grey.withOpacity(0.2),
            child: const Center(
              child: Text('Box 6'),
            ),
          ),
        ],
      ),
    );
  }
}



class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
