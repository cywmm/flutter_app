import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'entity/prize/PrizeData.dart';
import 'net/api.dart';

class GetNetData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GetNetData',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SampleAppPage(),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}) : super(key: key);

  @override
  _SampleAppPageState createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  PrizeData prizeData;
  List<Prize> prizes = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample App"),
      ),
      body: ListView.builder(
        itemCount: prizes.length,
        itemBuilder: (BuildContext context, int position) {
          return getRow(position);
        },
      ),
    );
  }

  Widget getRow(int i) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            prizes[i].imgPath != null
                ? Image.network(
                    prizes[i].imgPath,
                    width: 350,
                    height: 350,
                  )
                : Container(width: 200, height: 200),
            Text(prizes[i].name)
          ]),
    );
  }

  Future<void> loadData() async {
    String dataURL =
        "https://advert.guyinmedia.com/game/roulette/init/10?source=1";
    http.Response response = await http.get(dataURL);
    setState(() {
      prizeData = PrizeData.json(response.body);
      prizes = prizeData.data.prize;
    });
  }
}
