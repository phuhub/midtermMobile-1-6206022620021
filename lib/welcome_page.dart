import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  String imac,macbook,ipad;

  double imp= 0, total1 = 0 , total2 = 0, total3 = 0, total4 = 0, total5 = 0, total6 = 0, total7 = 0, total8 = 0, total9 = 0;
  WelcomePage(
    {Key? key,
    required this.imac,
    required this.macbook,
    required this.ipad,})
    :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ตารางผ่อน'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('Imac price : '),
                    subtitle: Text(' $imac'),
                  )),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('Macbook price : '),
                    subtitle: Text(' $macbook'),
                  )),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('Ipad price: '),
                    subtitle: Text(' $ipad'),
                  )),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('ราคาผ่อน IMAC 6เดือน/งวด '),
                    subtitle: Text(' ' +
                              numberAdd(double.parse(ipad),double.parse(imac),double.parse(macbook))
                              .toString()),
                  )),
                  Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('ราคาผ่อน IMAC 10เดือน/งวด '),
                    subtitle: Text(' ' +
                              numberAdd2(double.parse(ipad),double.parse(imac),double.parse(macbook))
                              .toString()),
                  )),
                   Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('ราคาผ่อน IMAC 24เดือน/งวด '),
                    subtitle: Text(' ' +
                              numberAdd3(double.parse(ipad),double.parse(imac),double.parse(macbook))
                              .toString()),
                  )),
                                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('ราคาผ่อน Macbook 6เดือน/งวด '),
                    subtitle: Text(' ' +
                              numberAdd4(double.parse(ipad),double.parse(imac),double.parse(macbook))
                              .toString()),
                  )),
                                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('ราคาผ่อน Macbook 10เดือน/งวด '),
                    subtitle: Text(' ' +
                              numberAdd5(double.parse(ipad),double.parse(imac),double.parse(macbook))
                              .toString()),
                  )),
                                                  Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('ราคาผ่อน Macbook 24เดือน/งวด '),
                    subtitle: Text(' ' +
                              numberAdd6(double.parse(ipad),double.parse(imac),double.parse(macbook))
                              .toString()),
                  )),
                                                  Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('ราคาผ่อน Ipad 6เดือน/งวด '),
                    subtitle: Text(' ' +
                              numberAdd7(double.parse(ipad),double.parse(imac),double.parse(macbook))
                              .toString()),
                  )),
                                                  Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('ราคาผ่อน Ipad 10 เดือน/งวด '),
                    subtitle: Text(' ' +
                              numberAdd8(double.parse(ipad),double.parse(imac),double.parse(macbook))
                              .toString()),
                  )),
                                                  Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('ราคาผ่อน Ipad 24เดือน/งวด '),
                    subtitle: Text(' ' +
                              numberAdd9(double.parse(ipad),double.parse(imac),double.parse(macbook))
                              .toString()),
                  )),

              ],
            ),
          ),
        ),
      ),
    );
  }
  double numberAdd(double i, double m, double p) {
    total1 = i/3;
    return total1;
  }
    double numberAdd2(double i, double m, double p) {
    total2 = (i+(i*(1/100)))/10;
    return total2;
  }
    double numberAdd3(double i, double m, double p) {
    total3 = (i+(i*(2/100)))/24;
    return total3;
  }
      double numberAdd4(double i, double m, double p) {
    total4 = m/3;
    return total4;
  }
    double numberAdd5(double i, double m, double p) {
    total5 = (m+(m*(1/100)))/10;
    return total5;
  }
    double numberAdd6(double i, double m, double p) {
    total6 = (m+(m*(2/100)))/24;
    return total6;
  }
    double numberAdd7(double i, double m, double p) {
    total7 = p/3;
    return total7;
  }
    double numberAdd8(double i, double m, double p) {
    total8 = (p+(p*(1/100)))/10;
    return total8;
  }
    double numberAdd9(double i, double m, double p) {
    total9 = (p+(p*(2/100)))/24;
    return total9;
  }
}
