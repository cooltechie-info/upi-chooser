import 'dart:typed_data';

enum _AllUpiApps {
  allBank,
  amazonPay,
  axisPay,
  barodaPay,
  bhim,
  boiUpi,
  centUpi,
  cointab,
  corpUpi,
  csbUpi,
  cubUpi,
  digibank,
  dcbUpi,
  equitasUpi,
  finoBPay,
  freecharge,
  googlePay,
  hsbcSimplyPay,
  iMobileICICI,
  indusPay,
  kblUpi,
  khaaliJeb,
  kotak,
  mahaUpi,
  miPayGlobal,
  miPayXiaomi,
  mobikwik,
  orientalPay,
  paytm,
  paywiz,
  payZapp,
  phonePe,
  pnb,
  psb,
  rblPay,
  realmePaySa,
  sbiPay,
  trueCallerUpi,
  unitedUpiPay,
  vijayaUpi,
  yesPay,
}

class UpiAppsHelper {
  String _getName(_AllUpiApps app) {
    switch (app) {
      case _AllUpiApps.allBank:
        return 'ALLBANK';
      case _AllUpiApps.amazonPay:
        return 'Amazon Pay';
      case _AllUpiApps.axisPay:
        return 'Axis Pay';
      case _AllUpiApps.barodaPay:
        return 'Baroda Pay';
      case _AllUpiApps.bhim:
        return 'BHIM';
      case _AllUpiApps.boiUpi:
        return 'BOI UPI';
      case _AllUpiApps.centUpi:
        return 'Cent UPI';
      case _AllUpiApps.cointab:
        return 'Cointab';
      case _AllUpiApps.corpUpi:
        return 'CORP UPI';
      case _AllUpiApps.csbUpi:
        return 'CSB UPI';
      case _AllUpiApps.cubUpi:
        return "CUB UPI";
      case _AllUpiApps.digibank:
        return "Digibank UPI";
      case _AllUpiApps.dcbUpi:
        return 'DCB UPI';
      case _AllUpiApps.equitasUpi:
        return "Equitas UPI";
      case _AllUpiApps.finoBPay:
        return 'Fino BPay';
      case _AllUpiApps.freecharge:
        return 'Freecharge';
      case _AllUpiApps.googlePay:
        return "Google Pay";
      case _AllUpiApps.hsbcSimplyPay:
        return 'HSBC Simply Pay';
      case _AllUpiApps.iMobileICICI:
        return 'iMobile by ICICI';
      case _AllUpiApps.indusPay:
        return 'IndusPay';
      case _AllUpiApps.kblUpi:
        return 'KBL UPI';
      case _AllUpiApps.khaaliJeb:
        return 'KhaaliJeb';
      case _AllUpiApps.kotak:
        return "Kotak UPI";
      case _AllUpiApps.mahaUpi:
        return 'MahaUPI';
      case _AllUpiApps.miPayGlobal:
      case _AllUpiApps.miPayXiaomi:
        return 'MiPay';
      case _AllUpiApps.mobikwik:
        return 'Mobikwik';
      case _AllUpiApps.orientalPay:
        return 'Oriental Pay';
      case _AllUpiApps.paytm:
        return 'Paytm';
      case _AllUpiApps.paywiz:
        return 'Paywiz';
      case _AllUpiApps.payZapp:
        return "PayZapp";
      case _AllUpiApps.phonePe:
        return 'PhonePe';
      case _AllUpiApps.pnb:
        return "PNB UPI";
      case _AllUpiApps.psb:
        return 'PSB';
      case _AllUpiApps.rblPay:
        return 'RBL Pay';
      case _AllUpiApps.realmePaySa:
        return "Realme PaySa";
      case _AllUpiApps.sbiPay:
        return 'SBI Pay';
      case _AllUpiApps.trueCallerUpi:
        return 'Truecaller';
      case _AllUpiApps.unitedUpiPay:
        return "United UPI Pay";
      case _AllUpiApps.vijayaUpi:
        return 'Vijaya UPI';
      case _AllUpiApps.yesPay:
        return 'Yes Pay';
      default:
        return "Unknown";
    }
  }

  String _getPackageName(_AllUpiApps app) {
    switch (app) {
      case _AllUpiApps.allBank:
        return 'com.lcode.allahabadupi';
      case _AllUpiApps.amazonPay:
        return 'in.amazon.mShop.android.shopping';
      case _AllUpiApps.axisPay:
        return 'com.upi.axispay';
      case _AllUpiApps.barodaPay:
        return 'com.bankofbaroda.upi';
      case _AllUpiApps.bhim:
        return 'in.org.npci.upiapp';
      case _AllUpiApps.boiUpi:
        return 'com.infra.boiupi';
      case _AllUpiApps.centUpi:
        return 'com.infrasofttech.centralbankupi';
      case _AllUpiApps.cointab:
        return 'in.cointab.app';
      case _AllUpiApps.corpUpi:
        return 'com.lcode.corpupi';
      case _AllUpiApps.csbUpi:
        return 'com.lcode.csbupi';
      case _AllUpiApps.cubUpi:
        return "com.cub.wallet.gui";
      case _AllUpiApps.digibank:
        return "com.dbs.in.digitalbank";
      case _AllUpiApps.dcbUpi:
        return 'com.olive.dcb.upi';
      case _AllUpiApps.equitasUpi:
        return "com.equitasbank.upi";
      case _AllUpiApps.finoBPay:
        return 'com.finopaytech.bpayfino';
      case _AllUpiApps.freecharge:
        return 'com.freecharge.android';
      case _AllUpiApps.googlePay:
        return "com.google.android.apps.nbu.paisa.user";
      case _AllUpiApps.hsbcSimplyPay:
        return 'com.mgs.hsbcupi';
      case _AllUpiApps.iMobileICICI:
        return 'com.csam.icici.bank.imobile';
      case _AllUpiApps.indusPay:
        return 'com.mgs.induspsp';
      case _AllUpiApps.kblUpi:
        return 'com.lcode.smartz';
      case _AllUpiApps.khaaliJeb:
        return 'com.khaalijeb.inkdrops';
      case _AllUpiApps.kotak:
        return "com.msf.kbank.mobile";
      case _AllUpiApps.mahaUpi:
        return 'com.infrasofttech.mahaupi';
      case _AllUpiApps.miPayGlobal:
        return 'com.mipay.in.wallet';
      case _AllUpiApps.miPayXiaomi:
        return 'com.mipay.wallet.in';
      case _AllUpiApps.mobikwik:
        return 'com.mobikwik_new';
      case _AllUpiApps.orientalPay:
        return 'com.mgs.obcbank';
      case _AllUpiApps.paytm:
        return 'net.one97.paytm';
      case _AllUpiApps.paywiz:
        return 'com.idbibank.paywiz';
      case _AllUpiApps.payZapp:
        return "com.hdfcbank.payzapp";
      case _AllUpiApps.phonePe:
        return 'com.phonepe.app';
      case _AllUpiApps.pnb:
        return "com.fss.pnbpsp";
      case _AllUpiApps.psb:
        return 'com.mobileware.upipsb';
      case _AllUpiApps.rblPay:
        return 'com.rblbank.upi';
      case _AllUpiApps.realmePaySa:
        return "com.realmepay.payments";
      case _AllUpiApps.sbiPay:
        return 'com.sbi.upi';
      case _AllUpiApps.trueCallerUpi:
        return 'com.truecaller';
      case _AllUpiApps.unitedUpiPay:
        return "com.fss.unbipsp";
      case _AllUpiApps.vijayaUpi:
        return 'com.fss.vijayapsp';
      case _AllUpiApps.yesPay:
        return 'com.YesBank';
      default:
        return 'unknown';
    }
  }

  late String packageName;

  /// This is the app name for display purpose
  late String name;

  /// This is the icon of the UPI app
  late Uint8List icon;

  UpiAppsHelper(appName, package) {
    packageName = package;
    name = appName;
  }

  UpiAppsHelper._fromEnum(_AllUpiApps app) {
    packageName = _getPackageName(app);
    name = _getName(app);
  }

  UpiAppsHelper.fromMap(Map<String, dynamic> m) {
    packageName = m['packageName'];
    name = m['name'];
    icon = m['icon'];
  }

  static UpiAppsHelper allBank = UpiAppsHelper._fromEnum(_AllUpiApps.allBank);

  /// Amazon(Amazon Mobile LLC): in.amazon.mShop.android.shopping
  static UpiAppsHelper amazonPay =
      UpiAppsHelper._fromEnum(_AllUpiApps.amazonPay);

  /// BHIM Axis Pay(Axis Bank Ltd.): com.upi.axispay
  static UpiAppsHelper axisPay = UpiAppsHelper._fromEnum(_AllUpiApps.axisPay);

  /// BHIM Baroda Pay(Bank of Baroda): com.bankofbaroda.upi
  static UpiAppsHelper barodaPay =
      UpiAppsHelper._fromEnum(_AllUpiApps.barodaPay);

  /// BHIM(National Payments Corporation of India): in.org.npci.upiapp
  static UpiAppsHelper bhim = UpiAppsHelper._fromEnum(_AllUpiApps.bhim);

  /// BHIM BOI UPI(Bank of India Official): com.infra.boiupi
  static UpiAppsHelper boiUpi = UpiAppsHelper._fromEnum(_AllUpiApps.boiUpi);

  /// BHIM Cent UPI(CENTRAL BANK OF INDIA): com.infrasofttech.centralbankupi
  static UpiAppsHelper centUpi = UpiAppsHelper._fromEnum(_AllUpiApps.centUpi);

  /// Cointab: in.cointab.app
  static UpiAppsHelper cointab = UpiAppsHelper._fromEnum(_AllUpiApps.cointab);

  /// BHIM CORP UPI(Corporation Bank): com.lcode.corpupi
  static UpiAppsHelper corpUpi = UpiAppsHelper._fromEnum(_AllUpiApps.corpUpi);

  /// BHIM CSB-UPI(CSB Bank Ltd): com.lcode.csbupi
  static UpiAppsHelper csbUpi = UpiAppsHelper._fromEnum(_AllUpiApps.csbUpi);

  ///BHIM CUB UPI(CITY UNION BANK LTD): com.cub.wallet.gui
  static UpiAppsHelper cubUpi = UpiAppsHelper._fromEnum(_AllUpiApps.cubUpi);

  /// BHIM DCB Bank UPI(DCB Bank): com.olive.dcb.upi
  static UpiAppsHelper dcbUpi = UpiAppsHelper._fromEnum(_AllUpiApps.dcbUpi);

  ///digibank(DBS Bank India): com.dbs.in.digitalbank
  static UpiAppsHelper digibank = UpiAppsHelper._fromEnum(_AllUpiApps.digibank);

  /// BHIM Equitas UPI(Equitas Small Finance Bank Ltd): com.equitasbank.upi
  static UpiAppsHelper equitasUpi =
      UpiAppsHelper._fromEnum(_AllUpiApps.equitasUpi);

  /// Fino BPay(Fino Payments Bank): com.finopaytech.bpayfino
  static UpiAppsHelper finoBPay = UpiAppsHelper._fromEnum(_AllUpiApps.finoBPay);

  /// Freecharge: com.freecharge.android
  static UpiAppsHelper freecharge =
      UpiAppsHelper._fromEnum(_AllUpiApps.freecharge);

  /// Google Pay(GoogleLLC): com.google.android.apps.nbu.paisa.user
  static UpiAppsHelper googlePay =
      UpiAppsHelper._fromEnum(_AllUpiApps.googlePay);

  /// HSBC Simply Pay(HSBC India): com.mgs.hsbcupi
  static UpiAppsHelper hsbcSimplyPay =
      UpiAppsHelper._fromEnum(_AllUpiApps.hsbcSimplyPay);

  /// iMobile(ICICI Bank Ltd.): com.csam.icici.bank.imobile
  static UpiAppsHelper iMobileICICI =
      UpiAppsHelper._fromEnum(_AllUpiApps.iMobileICICI);

  /// BHIM IndusPay(IndusInd Bank Ltd.): com.mgs.induspsp
  static UpiAppsHelper indusPay = UpiAppsHelper._fromEnum(_AllUpiApps.indusPay);

  /// KhaaliJeb: com.khaalijeb.inkdrops
  static UpiAppsHelper khaaliJeb =
      UpiAppsHelper._fromEnum(_AllUpiApps.khaaliJeb);

  /// Kotak - 811 & Mobile Banking(Kotak Mahindra Bank Ltd): com.msf.kbank.mobile
  static UpiAppsHelper kotak = UpiAppsHelper._fromEnum(_AllUpiApps.kotak);

  /// BHIM Maha UPI(Bank of Maharashtra): com.infrasofttech.mahaupi
  static UpiAppsHelper mahaUpi = UpiAppsHelper._fromEnum(_AllUpiApps.mahaUpi);

  /// Mi Pay(Non Xiaomi devices): com.mipay.in.wallet (From Play Store)
  static UpiAppsHelper miPayGlobal =
      UpiAppsHelper._fromEnum(_AllUpiApps.miPayGlobal);

  /// Mi Pay(Only Xiaomi devices): com.mipay.wallet.in (From Get Apps)
  static UpiAppsHelper miPayXiaomi =
      UpiAppsHelper._fromEnum(_AllUpiApps.miPayXiaomi);

  /// Mobikwik: com.mobikwik_new
  static UpiAppsHelper mobikwik = UpiAppsHelper._fromEnum(_AllUpiApps.mobikwik);

  /// BHIM Oriental Pay(Oriental Bank of Commerce): com.mgs.obcbank
  static UpiAppsHelper orientalPay =
      UpiAppsHelper._fromEnum(_AllUpiApps.orientalPay);

  /// Paytm(Paytm-One97 Communications Ltd.): net.one97.paytm
  static UpiAppsHelper paytm = UpiAppsHelper._fromEnum(_AllUpiApps.paytm);

  ///BHIM PayWiz(IDBI BANK): com.idbibank.paywiz
  static UpiAppsHelper paywiz = UpiAppsHelper._fromEnum(_AllUpiApps.paywiz);

  ///PayZapp(HDFC Bank Ltd.): com.enstage.wibmo.hdfc
  static UpiAppsHelper payZapp = UpiAppsHelper._fromEnum(_AllUpiApps.payZapp);

  /// PhonePe: com.phonepe.app
  static UpiAppsHelper phonePe = UpiAppsHelper._fromEnum(_AllUpiApps.phonePe);

  ///BHIM PNB(PNB): com.fss.pnbpsp
  static UpiAppsHelper pnb = UpiAppsHelper._fromEnum(_AllUpiApps.pnb);

  /// BHIM PSB(PUNJAB & SIND BANK): com.mobileware.upipsb
  static UpiAppsHelper psb = UpiAppsHelper._fromEnum(_AllUpiApps.psb);

  /// BHIM RBL Pay(RBL Bank Ltd.): com.rblbank.upi
  static UpiAppsHelper rblPay = UpiAppsHelper._fromEnum(_AllUpiApps.rblPay);

  /// realme PaySa(M-Kash India Financial Solutions Private Limited): com.realmepay.payments
  static UpiAppsHelper realmePaySa =
      UpiAppsHelper._fromEnum(_AllUpiApps.realmePaySa);

  /// BHIM SBI Pay(State Bank of India): com.sbi.upi
  static UpiAppsHelper sbiPay = UpiAppsHelper._fromEnum(_AllUpiApps.sbiPay);

  /// Truecaller(True Software Scandinavia AB): com.truecaller
  static UpiAppsHelper trueCallerUPI =
      UpiAppsHelper._fromEnum(_AllUpiApps.trueCallerUpi);

  ///BHIM United UPI Pay(United Bank of India): com.fss.unbipsp
  static UpiAppsHelper unitedUpiPay =
      UpiAppsHelper._fromEnum(_AllUpiApps.unitedUpiPay);

  /// BHIM VIJAYA UPI App(Vijaya Bank): com.fss.vijayapsp
  static UpiAppsHelper vijayaUpi =
      UpiAppsHelper._fromEnum(_AllUpiApps.vijayaUpi);

  /// BHIM YES PAY(Yes Bank Limited): com.YesBank
  static UpiAppsHelper yesPay = UpiAppsHelper._fromEnum(_AllUpiApps.yesPay);

  static const bhimImg =
      "https://github.com/cooltechie-info/upi-chooser/blob/master/example/assets/upi/bhim.png?raw=true";
  static const paytmImg =
      "https://github.com/cooltechie-info/upi-chooser/blob/master/example/assets/upi/paytm.png?raw=true";
  static const credImg =
      "https://github.com/cooltechie-info/upi-chooser/blob/master/example/assets/upi/cred.png?raw=true";
  static const amazonImg =
      "https://github.com/cooltechie-info/upi-chooser/blob/master/example/assets/upi/amazon.png?raw=true";
  static const gpayImg =
      "https://github.com/cooltechie-info/upi-chooser/blob/master/example/assets/upi/gpay.png?raw=true";
  static const phonepeImg =
      "https://github.com/cooltechie-info/upi-chooser/blob/master/example/assets/upi/phonepe.png?raw=true";
  static const airtelImg =
      "https://github.com/cooltechie-info/upi-chooser/blob/master/example/assets/upi/airtel.png?raw=true";
  static const payzappImg =
      "https://github.com/cooltechie-info/upi-chooser/blob/master/example/assets/upi/payzapp.png?raw=true";
  static const mobikwikImg =
      "https://github.com/cooltechie-info/upi-chooser/blob/master/example/assets/upi/mobikwik.png?raw=true";
  static const freechargeImg =
      "https://github.com/cooltechie-info/upi-chooser/blob/master/example/assets/upi/freecharge.png?raw=true";
}
