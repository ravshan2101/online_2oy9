import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'facebook',
          style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.grey.shade800,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt,
                color: Colors.grey.shade800,
              ))
        ],
      ),
      body: Container(
        color: Colors.grey.shade400,
        child: ListView(
          children: [
            //post grit
            Container(
              height: 120,
              color: Colors.white,
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Column(
                children: [
                  Expanded(
                      child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            AssetImage('assets/images/user_5.jpeg'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 10),
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.grey, width: 1)),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'What\'s on your mind?'),
                          ),
                        ),
                      ),
                    ],
                  )),
                  Expanded(
                      child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.video_call,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Live',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            )
                          ],
                        ),
                      )),
                      Container(
                        margin: EdgeInsets.only(top: 14, bottom: 14),
                        width: 1,
                        color: Colors.grey.shade300,
                      ),
                      Expanded(
                          child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.photo,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Photo',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            )
                          ],
                        ),
                      )),
                      Container(
                        margin: EdgeInsets.only(top: 14, bottom: 14),
                        width: 1,
                        color: Colors.grey.shade300,
                      ),
                      Expanded(
                          child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Check in',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            )
                          ],
                        ),
                      )),
                    ],
                  ))
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            //pos story
            Container(
              height: 200,
              color: Colors.white,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _makeStory(
                      storyImage: 'assets/images/story_5.jpeg',
                      userImage: 'assets/images/user_5.jpeg',
                      userName: 'User five'),
                  _makeStory(
                      storyImage: 'assets/images/story_4.jpeg',
                      userImage: 'assets/images/user_4.jpeg',
                      userName: 'User four'),
                  _makeStory(
                      storyImage: 'assets/images/story_3.jpeg',
                      userImage: 'assets/images/user_3.jpeg',
                      userName: 'User thre'),
                  _makeStory(
                      storyImage: 'assets/images/story_2.jpeg',
                      userImage: 'assets/images/user_2.jpeg',
                      userName: 'User two'),
                  _makeStory(
                      storyImage: 'assets/images/story_1.jpeg',
                      userImage: 'assets/images/user_1.jpeg',
                      userName: 'User one'),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            _makeFeed(
                userName: 'User Two',
                userImage: 'assets/images/user_2.jpeg',
                feedTime: '1 hr ago',
                feedText:
                    'All the Loream Ipsum generators on the Internet tendto repeat predefined',
                feedImage: 'assets/images/story_2.jpeg'),
            _makeFeed(
                userName: 'User Three',
                userImage: 'assets/images/user_3.jpeg',
                feedTime: '1 hr ago',
                feedText:
                    'All the Loream Ipsum generators on the Internet tendto repeat predefined',
                feedImage: 'assets/images/story_3.jpeg'),
            _makeFeed(
                userName: 'User Four',
                userImage: 'assets/images/user_4.jpeg',
                feedTime: '1 hr ago',
                feedText:
                    'All the Loream Ipsum generators on the Internet tendto repeat predefined',
                feedImage: 'assets/images/story_4.jpeg')
          ],
        ),
      ),
    );
  }

  Widget _makeFeed(
      {required userName,
      required userImage,
      required feedTime,
      required feedText,
      required feedImage}) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(userImage),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              userName,
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              feedTime,
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  feedText,
                  style:
                      TextStyle(fontSize: 16, height: 1.5, letterSpacing: 0.7),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ), //photo
          Container(
            height: 240,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(feedImage))),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(right: 10, left: 10, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    _makelike(),
                    Transform.translate(
                      offset: Offset(-5, 0),
                      child: _makelove(),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '2.5K',
                      style:
                          TextStyle(fontSize: 15, color: Colors.grey.shade800),
                    )
                  ],
                ),
                Text(
                  '400 Comments',
                  style: TextStyle(fontSize: 13, color: Colors.grey.shade800),
                )
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _makelikebutton(true),
                _makecommentbutton(),
                _shapebutton(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _makelikebutton(isActive) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.thumb_up,
              color: isActive ? Colors.blue : Colors.grey,
              size: 18,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Like',
              style: TextStyle(color: isActive ? Colors.blue : Colors.grey),
            )
          ],
        ),
      ),
    );
  }

  Widget _makecommentbutton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.comment,
              color: Colors.grey,
              size: 18,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Comment',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }

  Widget _shapebutton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.share,
              color: Colors.grey,
              size: 18,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Comment',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }

  Widget _makelike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)),
      child: Center(
        child: Icon(
          Icons.thumb_up,
          color: Colors.white,
          size: 12,
        ),
      ),
    );
  }

  Widget _makelove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)),
      child: Center(
        child: Icon(
          Icons.favorite,
          color: Colors.white,
          size: 12,
        ),
      ),
    );
  }

  Widget _makeStory(
      {required storyImage, required userImage, required userName}) {
    return AspectRatio(
      aspectRatio: 1.3 / 2,
      child: Container(
        margin: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(storyImage!))),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.1),
              ])),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 24,
                  child: CircleAvatar(
                    radius: 21,
                    backgroundImage: AssetImage(userImage),
                  ),
                ),
                Text(
                  userName,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
