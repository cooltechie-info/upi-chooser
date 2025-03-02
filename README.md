[![pub package](https://img.shields.io/badge/pub-0.0.6-blue.svg)](https://pub.dev/packages/upi_chooser)

Flutter plugin to get the list of UPI apps that are installed on the device.

Note: This plugin only lists the available Apps, doesn't get transaction response from the selected App. 

## Getting started

1. Add the dependency.

```yml
upi_chooser: ^0.0.7
```

2. Import the package.

```Dart
import 'package:upi_chooser/upi_chooser.dart';
```

3. Use the function.

```Dart
 
final upiChooser = UpiChooser();

var upiAppsData = await upiChooser.getUpiAppList();

```

## Usage

**This full code is from the example folder. You can run the example to see.**

```dart
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:upi_chooser/upi_apps.dart';
import 'package:upi_chooser/upi_chooser.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UPI Apps',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'UPI Apps'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<UpiApps>? upiAppsData;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      fetchUpiAppsData();
    });
    super.initState();
  }

  Future<void> fetchUpiAppsData() async {
    final fetchUpiApps = UpiChooser();
    upiAppsData = await fetchUpiApps.getUpiAppList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: upiAppsData == null
          ? const Center(child: CircularProgressIndicator())
          : GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              shrinkWrap: true,
              itemCount: upiAppsData!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 1.2,
                crossAxisCount: 4,
              ),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                        onTap: () {
                          upiChooser.launchUpiIntent(
                              Platform.isIOS
                                  ? upiAppsData![index].scheme!
                                  : upiAppsData![index].appUri!,
                              "jhon@testupi",
                              "Jhon",
                              "308720457203456",
                              "100");
                        },                        
                child: SizedBox(
                  height: 80,
                  width: 80,                  
                  child: Card(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        Image.network(
                            upiAppsData![index].iconUrl!,
                            height: 42,
                          ),
                          Text('${upiAppsData![index].displayName}'),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
    );
  }
}
```