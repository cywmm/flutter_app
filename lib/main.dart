import 'package:flutter/material.dart';
import 'package:flutter_app/learn/request_net_data.dart';
import 'learn/learn-add-count.dart';
import 'learn/learn-update-widgets.dart';
import 'learn/learn-anim.dart';
import 'learn/learn-canvas.dart';
import 'learn/widget/learn-custom-widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //add count
      home: GetNetData(),
      //更新小部件
      // home: LearnUpdateWidgets(title: 'LearnUpdateWidgets'),
      //动画
      // home: LearnAnim(title: 'LearnUpdateWidgets'),
      //绘制canvas
      // home: LearnCanvas(title: 'LearnCanvas'),
      //自定义小部件
      // home: LearnCustomWidget(title: 'LearnCustomWidget'),
      routes: <String, WidgetBuilder>{
        'a/': (BuildContext context) =>
            LearnUpdateWidgets(title: 'UpdateWidget'),
        'b/': (BuildContext context) => LearnAnim(title: 'LearnAnim'),
        'c/': (BuildContext context) => LearnCanvas(title: 'LearnCanvas'),
        'd/': (BuildContext context) => LearnCustomWidget(title: 'CustomWidget')
      },
    );
  }
}
