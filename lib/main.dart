// import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

//import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
//import 'package:mask_text_input_formatter/mask_text_input_formatter.dart/';
//import 'package:flutter_masked_text/flutter_masked_text.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var dinhdangtienviet =
      NumberFormat.simpleCurrency(locale: 'vi-VN', decimalDigits: 0);

  // final maskFormatter = MaskTextInputFormatter(mask: '##,###');
//  final CurrencyTextInputFormatter _formatter = CurrencyTextInputFormatter();

  var songaytrenthangtrucn = TextEditingController(text: '26');
  var songaynghi80 = TextEditingController(text: '0');
  var ngaynghikhongluong = TextEditingController(text: '0');
  var tangcabanngay150 = TextEditingController(text: '0');
  var tangcabandem210 = TextEditingController(text: '0');
  var tangcangaynghilecn200 = TextEditingController(text: '0');
  var lamdemngaychunhat230 = TextEditingController(text: '0');
  var tangcabandemngaychunhat270 = TextEditingController(text: '0');

  //var luongcoban = new MoneyMaskedTextController(decimalSeparator: '.', thousandSeparator: ',', rightSymbol: 'vi');
  //var luongcoban = new MaskedTextController(mask: '4553000');

  var luongcoban = TextEditingController(text: '4553000');
  var thuongchuyencan = TextEditingController(text: '300000');
  var trocapxangxe = TextEditingController(text: '200000');
  var trocapnhao = TextEditingController(text: '150000');
  var trocapthamnien = TextEditingController(text: '1100000');
  var trocaptrachnhiem = TextEditingController(text: '0');
  var hotrokhac = TextEditingController(text: '0');
  var doanphi = TextEditingController(text: '38000');

  String ThucLinh = '';
  String tdbh = '';
  String ketqua = '';
  String tldbhxh = '';
  String tlttangca = '';
  String tpchotro = '';
  String tl = '';
  String tc270 = '';
  String tc230 = '';
  String tc150 = '';
  String tc200 = '';
  String tc210 = '';
  String lngaycong = '';
  String cn100 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Phi???u L????ng Nh??n Vi??n',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 40),

        child: Column(
          children: [
            // Container(
            //   padding:const EdgeInsets.symmetric(horizontal: 1, vertical: 10) ,
            //   child:TextDropdownFormField(
            //     options:  ['26', '27'],
            //
            //     decoration: InputDecoration(
            //       border: OutlineInputBorder
            //         (borderRadius: BorderRadius.circular(12)),
            //       suffixIcon: Icon(Icons.arrow_drop_down),
            //       labelText: 'S??? ng??y tr??n th??ng tr??? CN',
            //       labelStyle: TextStyle(fontSize: 25),
            //     ),
            //     dropdownHeight: 120,
            //   ),
            // ),
            //editext so ngay gio
            buildContainer_edtDate(
               'S??? ng??y tr??n th??ng tr??? CN', '26', songaytrenthangtrucn),
            buildContainer_edtDate(
                'Ng??y ngh??? h?????ng l????ng 80%', '0', songaynghi80),
            buildContainer_edtDate(
                'Ng??y ngh??? kh??ng l????ng ', '0', ngaynghikhongluong),
            buildContainer_edtDate(
                'T??ng ca ban ng??y 150%', '0', tangcabanngay150),
            buildContainer_edtDate(
                'T??ng ca ban ????m 210%', '0', tangcabandem210),
            buildContainer_edtDate(
                'T??ng ca ng??y ngh??? l??? 200%', '0', tangcangaynghilecn200),
            buildContainer_edtDate(
                'L??m ????m ng??y ch??? nh???t 230%', '0', lamdemngaychunhat230),
            buildContainer_edtDate('T??ng ca ban ????m ng??y CN 270%', '0',
                tangcabandemngaychunhat270),
            //edittext $
            buildContainer_edittext('L????ng c?? b???n', '4,553,000', luongcoban),
            buildContainer_edittext(
                'Th?????ng chuy??n c???n', '300,000', thuongchuyencan),
            buildContainer_edittext('Tr??? c???p x??ng xe', '200,000', trocapxangxe),
            buildContainer_edittext('Tr??? c???p nh?? ???', '150,000', trocapnhao),
            buildContainer_edittext(
                'Tr??? c???p th??m ni??n', '1,100,000', trocapthamnien),
            buildContainer_edittext('Tr??ch nhi???m', '300,000', trocaptrachnhiem),
            buildContainer_edittext('H??? tr??? kh??c', '100,000', hotrokhac),
            buildContainer_edittext('??o??n ph??', '38,000', doanphi),
            // textview
            buildContainer_textview('Ca Ng??y 100% :', cn100),
            buildContainer_textview('L????ng ng??y c??ng :', lngaycong),
            buildContainer_textview('L????ng TC ng??y 150% :', tc150),
            buildContainer_textview('L????ng TC NN 210% :', tc210),
            buildContainer_textview('L????ng TC ng??y ????m NN 230% :', tc230),
            buildContainer_textview('L????ng TC ng??y ????m CN 270% :', tc270),
            buildContainer_textview('T???ng l????ng :', tl),
            buildContainer_textview('T???ng ph??? c???p h??? tr??? :', tpchotro),
            buildContainer_textview('T???ng l????ng t??nh t??ng ca :', tlttangca),
            buildContainer_textview('T???ng l????ng ????ng BHXH : ', tldbhxh),
            buildContainer_textview('Tr??ch ????ng B???o hi???m : ', tdbh),
            buildContainer_textview('Th???c l??nh : ', ThucLinh),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            // s?? ng??y gi??? t??ng ca
            double ngaytrenthangkcn = double.parse(songaytrenthangtrucn.text);

            double nghi80 = double.parse(songaynghi80.text);
            // print(nghi80);
            double nghikluong = double.parse(ngaynghikhongluong.text);
            // print(nghikluong);
            double tcbanngay150 = double.parse(tangcabanngay150.text);
            // print(tcbanngay150);
            tc150 = tcbanngay150.toString();
            double tcabandem210 = double.parse(tangcabandem210.text);
            // print(tcabandem210);
            tc210 = tcabandem210.toString();
            double tcNgaynghilecn200 = double.parse(tangcangaynghilecn200.text);
            // print(tcNgaynghilecn200);
            tc200 = tcNgaynghilecn200.toString();
            double lamdemngaycn230 = double.parse(lamdemngaychunhat230.text);
            // print(lamdemngaycn230);
            tc230 = lamdemngaycn230.toString();
            double tcbandemngaycn270 =
                double.parse(tangcabandemngaychunhat270.text);
            //print(tcbandemngaycn270);
            // c??c kho???n t??nh ti???n l????ng

            double lcb = double.parse(luongcoban.text);

            //print(lcb);
            double chuyencan = double.parse(thuongchuyencan.text);
            // print(chuyencan);
            double xangxe = double.parse(trocapxangxe.text);
            // print(xangxe);
            double nhao = double.parse(trocapnhao.text);
            // print(nhao);
            double thamnien = double.parse(trocapthamnien.text);
            // print(thamnien);
            double trachnhiem = double.parse(trocaptrachnhiem.text);
            // print(trachnhiem);
            double htkhac = double.parse(hotrokhac.text);
            // print(htkhac);
            double doan = double.parse(doanphi.text);
            // print(doan);
            // T??nh to??n ti???n l????ng
            num tinhcangay(num a, num b, num c) => a - b - c;
              // h??m t??nh nhanh c?? th??? ???????c s??? d???ng l???i
            var cangay100 = tinhcangay(ngaytrenthangkcn, nghi80, nghikluong);
            // double cangay100 = ngaytrenthangkcn - nghi80 - nghikluong;
            cn100 = cangay100.toString();
            print('ca ng??y = ' + "$cangay100");

            num tinhTientru(num x, num y, num z) => x / 26 * y * z;  // h??m t??nh c?? th??? ???????c s??? d???ng l???i
            var ttru80 = tinhTientru(lcb, 0.2, nghi80);
            // double ttru80 = lcb / 26 * 0.2 * nghi80;
            print('ti???n tr??? 80% = $ttru80');
            var tiennghikhongluong = tinhTientru(lcb, 1, nghikluong);
            //double tiennghikhongluong = lcb / 26 * nghikluong;
            print('ti???n ngh??? kh??ng l????ng =' + '$tiennghikhongluong');
            var tienluongngaycong31 =
                tinhTientru(lcb, 1, ngaytrenthangkcn - 26);
            //double tienluongngaycong31 = lcb / 26 * (ngaytrenthangkcn - 26);
            print('ti???n l????ng ng??y c??ng 31 = $tienluongngaycong31');

            double tluongtinhtc = lcb + chuyencan + trachnhiem + thamnien;
            print('t???ng l????ng t??nh t??ng ca = ' + '$tluongtinhtc');
            tlttangca =
                NumberFormat.simpleCurrency(locale: 'vi-VN', decimalDigits: 0)
                    .format(tluongtinhtc)
                    .toString();
            double luongngaycong =
                lcb - ttru80 - tiennghikhongluong + tienluongngaycong31;
            print('l????ng ng??y c??ng = ' + '$luongngaycong');
            lngaycong =
                NumberFormat.simpleCurrency(locale: 'vi-VN', decimalDigits: 0)
                    .format(luongngaycong)
                    .toString();

            num tinhtc(tluongtinhtc, num a, num b) => tluongtinhtc / 26 / 8 * a * b;
            var luongtangcangay150 = tinhtc(tluongtinhtc, 1.5, tcbanngay150);
            //double luongtangcangay150 =/ 26 / 8 * 1.5 * tcbanngay150;
            print('l????ng tang ca ng??y 150% = $luongtangcangay150');
            tc150 = dinhdangtienviet.format(luongtangcangay150).toString();

            var luongtangcabandem210 = tinhtc(tluongtinhtc, 2.1, tcabandem210);
            //double luongtangcabandem210 = tluongtinhtc / 26 / 8 * 2.1 * tcabandem210;
            print('l????ng t??ng ca ban ????m 210 = $luongtangcabandem210');
            tc210 = dinhdangtienviet.format(luongtangcabandem210).toString();

            // double Tangcangaynghilecn200 = tluongtinhtc / 26 / 8 * 2 * tcNgaynghilecn200;
            var Tangcangaynghilecn200 =
                tinhtc(tluongtinhtc, 2, tcNgaynghilecn200);
            print('t??ng ca ng??y ngh??? l??? = $Tangcangaynghilecn200');
            tc200 = dinhdangtienviet.format(Tangcangaynghilecn200).toString();

            //double Lamdemngaychunhat230 = tluongtinhtc / 26 / 8 * 2.3 * lamdemngaycn230;
            var Lamdemngaychunhat230 =
                tinhtc(tluongtinhtc, 2.3, lamdemngaycn230);
            print('l??m ????m ng??y ch??? nh???t 230 = $Lamdemngaychunhat230');
            tc230 = dinhdangtienviet.format(Lamdemngaychunhat230).toString();

            //double Tangcabandemngaychunhat270 = tluongtinhtc / 26 / 8 * 2.7 * tcbandemngaycn270;
            var Tangcabandemngaychunhat270 =
                tinhtc(tluongtinhtc, 2.7, tcbandemngaycn270);
            print('T??ng ca ban ????m ng??y ch??? nh???t 270% = ' +
                '$Tangcabandemngaychunhat270');
            tc270 =
                dinhdangtienviet.format(Tangcabandemngaychunhat270).toString();

            double tongluong = luongngaycong +
                luongtangcangay150 +
                luongtangcabandem210 +
                Tangcangaynghilecn200 +
                Lamdemngaychunhat230 +
                Tangcabandemngaychunhat270;
            print('t???ng l????ng  = $tongluong');
            tl = NumberFormat.simpleCurrency(locale: 'vi-VN', decimalDigits: 0)
                .format(tongluong)
                .toString();
            double tongphucaphotro =
                chuyencan + xangxe + nhao + trachnhiem + thamnien + htkhac;
            print('t???ng ph??? c???p h??? tr??? = ' + '$tongphucaphotro');
            tpchotro =
                NumberFormat.simpleCurrency(locale: 'vi-VN', decimalDigits: 0)
                    .format(tongphucaphotro)
                    .toString();
            double tongluongdongbhxh = thamnien + trachnhiem + lcb;
            print('t???ng l????ng ????ng b???o hi???m x?? h???i = ' + '$tongluongdongbhxh');
            tldbhxh =
                NumberFormat.simpleCurrency(locale: 'vi-VN', decimalDigits: 0)
                    .format(tongluongdongbhxh)
                    .toString();
            double trixhdongbaohiem = tongluongdongbhxh * 0.105;
            print('tr??ch ????ng b???o hi???m = $trixhdongbaohiem');
            tdbh =
                NumberFormat.simpleCurrency(locale: 'vi-VN', decimalDigits: 0)
                    .format(trixhdongbaohiem)
                    .toString();
            //
            double thuclinh =
                tongluong + tongphucaphotro - trixhdongbaohiem - doan;

            ThucLinh = dinhdangtienviet.format(thuclinh).toString();
            print('thuc linh = $ThucLinh');
            //NumberFormat formatter = DecimalFormat("#,###");
          });
        },
        child: Icon(
          Icons.add_outlined,
          size: 40,
          color: Colors.white,
        ),
      ),
      //button
    );
  }

  // Input ng??y gi???
  Container buildContainer_edtDate(
      String text_ngaygio, String hintext_date, songay) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 10),
      child: TextFormField(
        maxLength: 3,
        keyboardType: TextInputType.number,
        controller: songay,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            labelText: text_ngaygio,
            hintText: hintext_date,
            suffixIcon: Icon(Icons.access_alarm)),
        style: TextStyle(fontSize: 25, color: Colors.indigo),
      ),
    );
  }

  //Input Ti???n l????ng
  Container buildContainer_edittext(String name, String hintext, tienLuong) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 10),
      child: TextFormField(
        maxLength: 8,
        // inputFormatters: <TextInputFormatter>[
        //   CurrencyTextInputFormatter(
        //     locale: 'vi-VN',
        //     decimalDigits: 0,
        //     symbol: '???',
        //   ),
        // ],

        keyboardType: TextInputType.number,
        controller: tienLuong,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            labelText: name,
            hintText: hintext,
            suffixIcon: Icon(Icons.attach_money)),
        style: TextStyle(fontSize: 25, color: Colors.indigo),
      ),
    );
  }

  // Output th???c l??nh
  Container buildContainer_textview(String hienthi, String ketqua) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      margin: EdgeInsets.only(left: 5, bottom: 5),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.black12, borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(hienthi,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo)),
          Text(ketqua,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red)),
        ],
      ),
    );
  }
}
