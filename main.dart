import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Providerrrrr extends StatefulWidget {
  const Providerrrrr({Key? key}) : super(key: key);

  @override
  State<Providerrrrr> createState() => _ProviderrrrrState();
}

class _ProviderrrrrState extends State<Providerrrrr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ChangeNotifierProvider(
            create: (context) => Myprovider(),
            child: Consumer<Myprovider>(builder: (context, value, child) {

              return Column(children: [IconButton(onPressed: () {

                value.Myincrement();

              }, icon: Icon(Icons.add)),Text("${value.i}")],);
            },),
          ),
          ),
    );
  }
}

class Myprovider extends ChangeNotifier {
  int i = 0;

  Myincrement() {
    i++;
    notifyListeners();
  }
}
