import 'package:dmc/app/modules/home/views/dialogview_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Title"),
      ),
      body: Column(children: [
        Container(
          margin: const EdgeInsets.only(left: 45, right: 45, top: 5),
          height: 45,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.teal),
          child: const Center(
            child: Text(
              "Course Purchase",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: 250,
          width: double.infinity,
            //child: VideoPlayerScreen()
          
        ),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 25, top: 15),
              height: 45,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Course Description",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),

                  GestureDetector(
                      onTap: () {
                        Get.to(ShowDialog());
                      },
                      child: const Icon(Icons.keyboard_arrow_down))

                  // Get.defaultDialog(
                  //     title: '',
                  //     content: Column(
                  //       mainAxisSize: MainAxisSize.min,
                  //       children: const [
                  //         TextField(
                  //           //controller: settingsScreenController.categoryNameController,
                  //           keyboardType: TextInputType.text,
                  //           maxLines: 1,
                  //           decoration: InputDecoration(
                  //               labelText: 'Category Name',
                  //               hintMaxLines: 1,
                  //               border: OutlineInputBorder(
                  //                   borderSide: BorderSide(
                  //                       color: Colors.green,
                  //                       width: 4.0))),
                  //         ),
                  //         SizedBox(
                  //           height: 30.0,
                  //         ),
                  //       ],
                  //     ),
                  //     radius: 10.0);
                ],
              ),
            ),
            const SizedBox(
              width: 15,
            ),
          ],
        ),
        const MyStatefulWidget(),
        ButtonDesign(),
      ]),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// private State class that goes with MyStatefulWidget
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Color(0xffeae7db), borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: SfSlider.vertical(
              value: _currentSliderValue,
              min: 0,
              max: 100,
              // divisions: 100,
              //
              // label: _currentSliderValue.round().toString(),
              interval: 20,
              showTicks: true,
              showLabels: true,
              enableTooltip: true,
              minorTicksPerInterval: 1,
              onChanged: (dynamic value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
          ),
          SizedBox(
            height: 320,
            width: 180,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Course Duration",
                  style: TextStyle(color: Colors.black87, fontSize: 15),
                ),
                SizedBox(
                  height: 5,
                ),
                CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.blue,
                  child: Text(
                    "6 Month",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ButtonDesign extends StatefulWidget {
  const ButtonDesign({Key? key}) : super(key: key);

  @override
  State<ButtonDesign> createState() => _ButtonDesignState();
}

class _ButtonDesignState extends State<ButtonDesign> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: double.infinity,
          color: const Color(0xffeae7db),
          margin: EdgeInsets.all(5),
          child: Column(
            children: [
              Text(
                "Price:00 BDT",
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "PROMOCODE",
                style: TextStyle(fontSize: 22),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Optional",
                  style: TextStyle(fontSize: 20),
                )),
            SizedBox(
              width: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(DialogviewView(),
                  transition: Transition.rightToLeft,
                  duration: Duration(seconds: 1),
                  arguments: ['Arnab','arnabr131@gmail.com',01628993875],
                  preventDuplicates: false,
                  );
                },
                child: Text(
                  "Submit",
                  style: TextStyle(fontSize: 20),
                )),
          ],
        ),
        SizedBox(height: 10,),

        Container(

          height: 45,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.teal),
          child: const Center(
            child: Text(
              "BUY",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
          ),
        ),


      ],
    );
  }
}

class ShowDialog extends StatefulWidget {
  @override
  State<ShowDialog> createState() => _ShowDialogState();
}

class _ShowDialogState extends State<ShowDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AlertDialog(
        content: Container(
          width: 350,
          padding: EdgeInsets.all(5.0),
          margin: EdgeInsets.only(left: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text(
                    "Editor",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 230,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert_rounded),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.all(17)),
                  Text(
                    "Link",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white70,
                      filled: true,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.all(17)),
                  Text(
                    "Name",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white70,
                      filled: true,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Center(
                        child: Text(
                      "Change",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    )),
                  ),
                  SizedBox(
                    width: 110,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Center(
                        child: Text(
                      "Cancel",
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    )),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Center(
                        child: Text(
                      "Start",
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({Key? key}) : super(key: key);

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    );

    _initializeVideoPlayerFuture = _controller.initialize();

  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


// class SliderGrid extends StatefulWidget {
//   @override
//   _GridState createState() => new _GridState();
// }
//
// class _GridState extends State<SliderGrid> {
//   var val = 5;
//
//   @override
//   build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text("Game"),
//         backgroundColor: Colors.red,
//         elevation: 1.0,
//       ),
//       body: new Container(
//         child: new Transform(
//           alignment: FractionalOffset.center,
//           // Rotate sliders by 90 degrees
//           transform: new Matrix4.identity()..rotateZ(90 * 3.1415927 / 180),
//           child: new Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               new Slider(
//                 value: val.toDouble(),
//                 min: 1.0,
//                 max: 50.0,
//                 divisions: 50,
//                 label: '$val',
//                 onChanged: (double newValue) {
//                   setState(() {
//                     val = newValue.round();
//                   });
//                 },
//               ),
//               new Slider(
//                 value: val.toDouble(),
//                 min: 1.0,
//                 max: 50.0,
//                 divisions: 50,
//                 label: '$val',
//                 onChanged: (double newValue) {
//                   setState(() {
//                     val = newValue.round();
//                   });
//                 },
//               ),
//             ],
//           ),
//
//         ),
//       ),
//     );
//   }
// }
//
//

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blueGrey[100],
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: Text('Flutter Video Player Demo'),
//         centerTitle: true,
//       ),
//       body: ListView(
//         children: <Widget>[
//           VideoItems(
//             videoPlayerController: VideoPlayerController.asset(
//               'assets/video_6.mp4',
//             ),
//             looping: true,
//             autoplay: true,
//           ),
//           VideoItems(
//             videoPlayerController: VideoPlayerController.network(
//                 'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4'
//             ),
//             looping: false,
//             autoplay: true,
//           ),
//           VideoItems(
//             videoPlayerController: VideoPlayerController.asset(
//               'assets/video_3.mp4',
//             ),
//             looping: false,
//             autoplay: false,
//           ),
//           VideoItems(
//             videoPlayerController: VideoPlayerController.asset(
//               'assets/video_2.mp4',
//             ),
//             autoplay: true,
//           ),
//           VideoItems(
//             videoPlayerController: VideoPlayerController.network(
//                 "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4"
//             ),
//             looping: true,
//             autoplay: false,
//           ),
//         ],
//       ),
//     );
//   }
// }
