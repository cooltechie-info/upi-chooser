import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
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
      debugShowCheckedModeBanner: false,
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
  final upiChooser = UpiChooser();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      fetchUpiAppsData();
    });
    super.initState();
  }

  Future<void> fetchUpiAppsData() async {
    upiAppsData = await upiChooser.getUpiAppList();
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
                crossAxisCount: 3,
              ),
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 60,
                  width: 60,
                  child: Card(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: InkWell(
                        onTap: () async {
                          upiChooser.launchUpiChooser(
                            Platform.isIOS
                                ? upiAppsData![index].scheme!
                                : upiAppsData![index].appUri!,
                            'jhon@testupi',
                            "Jhon",
                            "308720457203456",
                            "100",
                            mid: 'J687D7E',
                            orgid: '000000',
                          );
                        },
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Image.network(
                                  upiAppsData![index].iconUrl!,
                                  width: 58,
                                ),
                              ),
                              Text('${upiAppsData![index].displayName}'),
                              const SizedBox(height: 6),
                            ],
                          ),
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
