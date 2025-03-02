import 'dart:io';
import 'package:appcheck/appcheck.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'upi_apps.dart';
import 'upi_apps_helper.dart';
import 'upi_chooser_platform_interface.dart';

class UpiChooser {
  Future<String?> getPlatformVersion(Map<String, dynamic> args) {
    return UpiChooserPlatform.instance.getPlatformVersion(args);
  }

  final List<String> verifiedFuaApps = [
    UpiAppsHelper.allBank.packageName,
    UpiAppsHelper.amazonPay.packageName,
    UpiAppsHelper.axisPay.packageName,
    UpiAppsHelper.barodaPay.packageName,
    UpiAppsHelper.bhim.packageName,
    UpiAppsHelper.centUpi.packageName,
    UpiAppsHelper.cointab.packageName,
    UpiAppsHelper.corpUpi.packageName,
    UpiAppsHelper.dcbUpi.packageName,
    UpiAppsHelper.finoBPay.packageName,
    UpiAppsHelper.freecharge.packageName,
    UpiAppsHelper.googlePay.packageName,
    UpiAppsHelper.iMobileICICI.packageName,
    UpiAppsHelper.indusPay.packageName,
    UpiAppsHelper.khaaliJeb.packageName,
    UpiAppsHelper.mahaUpi.packageName,
    UpiAppsHelper.mobikwik.packageName,
    UpiAppsHelper.orientalPay.packageName,
    UpiAppsHelper.paytm.packageName,
    UpiAppsHelper.paywiz.packageName,
    UpiAppsHelper.phonePe.packageName,
    UpiAppsHelper.psb.packageName,
    UpiAppsHelper.sbiPay.packageName,
    UpiAppsHelper.yesPay.packageName,
  ];

  List<AppInfo>? installedApps;
  List<AppInfo> androidApps = [
    AppInfo(appName: "G-Pay", packageName: UpiAppsHelper.googlePay.packageName),
    AppInfo(appName: "Paytm", packageName: UpiAppsHelper.paytm.packageName),
    AppInfo(appName: "PhonePe", packageName: UpiAppsHelper.phonePe.packageName),
    AppInfo(appName: "BHIM", packageName: UpiAppsHelper.bhim.packageName),
    AppInfo(
      appName: "CRED",
      packageName: 'com.dreamplug.androidapp',
    ),
    // AppInfo(
    //   appName: "Amazon Pay",
    //   packageName: UpiAppsHelper.amazonPay.packageName,
    // ),
    AppInfo(
      appName: "My Airtel",
      packageName: "com.myairtelapp",
    ),
    AppInfo(
      appName: "Payzapp",
      packageName: UpiAppsHelper.payZapp.packageName,
    ),
    AppInfo(
      appName: "Mobikwik",
      packageName: UpiAppsHelper.mobikwik.packageName,
    ),
    AppInfo(
      appName: "Freecharge",
      packageName: UpiAppsHelper.freecharge.packageName,
    ),
  ];

  List<AppInfo> iOSApps = [
    AppInfo(appName: "G-Pay", packageName: "gpay://"),
    AppInfo(appName: "Paytm", packageName: "paytmmp://"),
    AppInfo(appName: "PhonePe", packageName: "phonepe://"),
    AppInfo(appName: "BHIM", packageName: "bhim://"),
    AppInfo(appName: "CRED", packageName: "credpay://"),
    // AppInfo(appName: "Amazon Pay", packageName: "amazon://"),
    AppInfo(appName: "My Airtel", packageName: "myairtel://"),
    AppInfo(appName: "Payzapp", packageName: "payzapp://"),
    AppInfo(appName: "Mobikwik", packageName: "mobikwik://"),
    AppInfo(appName: "Freecharge", packageName: "freecharge://"),
  ];

  List<String> upiAndroidIcons = [
    UpiAppsHelper.gpayImg,
    UpiAppsHelper.paytmImg,
    UpiAppsHelper.phonepeImg,
    UpiAppsHelper.bhimImg,
    UpiAppsHelper.credImg,
    // UpiAppsHelper.amazonImg,
    UpiAppsHelper.airtelImg,
    UpiAppsHelper.payzappImg,
    UpiAppsHelper.mobikwikImg,
    UpiAppsHelper.freechargeImg,
  ];
  List<String> upiIosIcons = [
    UpiAppsHelper.gpayImg,
    UpiAppsHelper.paytmImg,
    UpiAppsHelper.phonepeImg,
    UpiAppsHelper.bhimImg,
    UpiAppsHelper.credImg,
    // UpiAppsHelper.amazonImg,
    UpiAppsHelper.airtelImg,
    UpiAppsHelper.payzappImg,
    UpiAppsHelper.mobikwikImg,
    UpiAppsHelper.freechargeImg,
  ];

  List<UpiApps> upiAppsMapList = [];

  AppCheck appCheck = AppCheck();

  Future<List<UpiApps>> getUpiAppList({String? pkgName}) async {
    try {
      upiAppsMapList.clear();
      if (Platform.isAndroid) {
        for (int i = 0; i < androidApps.length; i++) {
          try {
            await appCheck.checkAvailability(androidApps[i].packageName).then(
              (app) {
                debugPrint(app.toString());
                debugPrint('upiAndroidIcons[i]: ${upiAndroidIcons[i]}');
                upiAppsMapList.add(
                  UpiApps(
                    id: i,
                    displayName: androidApps[i].appName,
                    appUri: androidApps[i].packageName,
                    isAvailable: true,
                    scheme: iOSApps[i].packageName.split(':')[0],
                    iconUrl: upiAndroidIcons[i],
                  ),
                );
              },
            );
          } catch (e) {
            debugPrint('isAppAvailable | for | e: $e');
          }
          debugPrint('$i');
        }
      } else {
        for (int i = 0; i < iOSApps.length; i++) {
          try {
            await appCheck.checkAvailability(iOSApps[i].packageName).then(
              (app) {
                debugPrint(app.toString());
                upiAppsMapList.add(
                  UpiApps(
                    id: i,
                    displayName: iOSApps[i].appName,
                    appUri: iOSApps[i].packageName,
                    isAvailable: true,
                    scheme: iOSApps[i].packageName.split(':')[0],
                    iconUrl: upiIosIcons[i],
                  ),
                );
              },
            );
          } catch (e) {
            debugPrint('isAppAvailable | for | e: $e');
          }
          debugPrint('$i');
        }
      }
      return upiAppsMapList;
    } catch (e) {
      debugPrint('isAppAvailable | e: $e');
      return upiAppsMapList;
    }
  }

  void launchUpiIntent(
    String schemeType,
    String vpaAddress,
    String payeeName,
    String txnId,
    String amount, {
    String merchantChannel = '',
    String txnNotes = '',
    String currency = 'INR',
    String payeeMCC = '',
    String txnRefId = '',
    String refUrl = '',
    String mode = '00',
    String orgid = '',
    String mid = '',
  }) {
    try {
      if (Platform.isIOS) {
        launchUrl(
          Uri(
            host: 'upi',
            scheme: schemeType,
            path: "//pay",
            queryParameters: {
              "pa": vpaAddress,
              "pn": payeeName,
              "tr": txnId,
              "tn": txnNotes,
              "am": amount,
              "cu": currency,
              "mc": merchantChannel,
            },
          ),
          mode: LaunchMode.externalApplication,
        );
      } else if (Platform.isAndroid) {
        getPlatformVersion({
          'launchType': 'intent',
          'pkg': schemeType,
          'payeeAddress': vpaAddress,
          'payeeName': payeeName,
          'payeeMCC': payeeMCC,
          'txnID': txnRefId,
          'txnRefId': txnId,
          'txnNote': txnNotes,
          'payeeAmount': amount,
          'currencyCode': currency,
          'refUrl': refUrl,
          'mode': mode,
          'orgid': orgid,
          'mid': mid,
        });
        debugPrint('getPlatformVersion()');
      } else {}
    } catch (exception) {
      debugPrint('Error');
    }
  }

  void launchUpiChooser(
    String schemeType,
    String vpaAddress,
    String payeeName,
    String txnId,
    String amount, {
    String merchantChannel = '',
    String txnNotes = '',
    String currency = 'INR',
    String payeeMCC = '',
    String txnRefId = '',
    String refUrl = '',
    String mode = '00',
    String orgid = '',
    String mid = '',
  }) {
    try {
      if (Platform.isIOS) {
        launchUrl(
          Uri(
            host: 'upi',
            scheme: schemeType,
            path: "//pay",
            queryParameters: {
              "pa": vpaAddress,
              "pn": payeeName,
              "tr": txnId,
              "tn": txnNotes,
              "am": amount,
              "cu": currency,
              "mc": merchantChannel,
            },
          ),
          mode: LaunchMode.externalApplication,
        );
      } else if (Platform.isAndroid) {
        getPlatformVersion({
          'launchType': 'chooser',
          'pkg': schemeType,
          'payeeAddress': vpaAddress,
          'payeeName': payeeName,
          'payeeMCC': payeeMCC,
          'txnID': txnRefId,
          'txnRefId': txnId,
          'txnNote': txnNotes,
          'payeeAmount': amount,
          'currencyCode': currency,
          'refUrl': refUrl,
          'mode': mode,
          'orgid': orgid,
          'mid': mid,
        });
        debugPrint('getPlatformVersion()');
      } else {}
    } catch (exception) {
      debugPrint('Error');
    }
  }
}
