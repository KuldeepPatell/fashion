import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Story {
  final String username;
  final String imageUrl;

  Story({required this.username, required this.imageUrl});
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StoryScreen(),
    );
  }
}

class StoryScreen extends StatelessWidget {
  final List<Story> stories = [
    Story(username: 'user1', imageUrl: 'assets/images/splashScr.jpg'),
    Story(username: 'user2', imageUrl: 'assets/images/splashScr.jpg'),
    Story(username: 'user3', imageUrl: 'assets/images/splashScr.jpg'),
    Story(username: 'user4', imageUrl: 'assets/images/splashScr.jpg'),
    Story(username: 'user5', imageUrl: 'assets/images/splashScr.jpg'),
    Story(username: 'user6', imageUrl: 'assets/images/splashScr.jpg'),
    Story(username: 'user7', imageUrl: 'assets/images/splashScr.jpg'),
    Story(username: 'user8', imageUrl: 'assets/images/splashScr.jpg'),
    Story(username: 'user9', imageUrl: 'assets/images/splashScr.jpg'),
    Story(username: 'user10', imageUrl: 'assets/images/splashScr.jpg'),
    Story(username: 'user11', imageUrl: 'assets/images/splashScr.jpg'),
    Story(username: 'user12', imageUrl: 'assets/images/splashScr.jpg'),
    // Add more stories as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stories'),
      ),
      body: StoryList(stories: stories),
    );
  }
}

class StoryList extends StatelessWidget {
  final List<Story> stories;

  const StoryList({required this.stories});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: stories.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: StoryWidget(story: stories[index]),
        );
      },
    );
  }
}

class StoryWidget extends StatelessWidget {
  final Story story;

  const StoryWidget({required this.story});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(story.imageUrl),
            ),
          ),
        ),
        SizedBox(height: 4),
        Text(
          story.username,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}
