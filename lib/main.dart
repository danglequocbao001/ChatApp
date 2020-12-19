import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ChatApp(),
  ));
}

class ChatApp extends StatefulWidget {
  @override
  _ChatAppState createState() => _ChatAppState();
}

class _ChatAppState extends State<ChatApp> {

  List<String> avatarUrl = [
    "https://scontent.fvca1-1.fna.fbcdn.net/v/t1.0-9/s960x960/104492955_2750240981873307_1057965759589986903_o.jpg?_nc_cat=106&ccb=2&_nc_sid=85a577&_nc_ohc=lutYl2GFNiQAX_63U27&_nc_ht=scontent.fvca1-1.fna&tp=7&oh=2fb150e90532d0e05221ab62be6fd292&oe=5FD22F95",
    "https://images.unsplash.com/photo-1521038199265-bc482db0f923?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1535579710123-3c0f261c474e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1553544923-37efbe6ff816?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1936&q=80",
    "https://images.unsplash.com/photo-1579591919791-0e3737ae3808?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=658&q=80",
    "https://images.unsplash.com/photo-1525134479668-1bee5c7c6845?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1531369201-4f7be267b1de?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
  ];

  /// Avatar widget
  Widget avatarWidget(String urlImage, double radius) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
          image: NetworkImage(urlImage),
        ),
      ),
    );
  }

  /// Story button widget
  Widget storyButton(String urlImage, double radius) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          width: radius,
          height: radius,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
              image: NetworkImage(urlImage),
            ),
          ),
        ),
      ),
    );
  }

  /// List items widget
  Widget listItem(String urlImg, String userName, String messages, String hour) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.0 ,vertical: 8.0),
        child: Container(
          child: Row(
            children: [
              avatarWidget(urlImg, 60.0),
              SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 1.0),
                    Text(
                      messages,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                hour,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey[50],

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 35.0),
          child: Column(
            children: [
              /// Create menu bar
              Row(
                children: [
                  SizedBox(width: 0.0),
                  MaterialButton(
                    onPressed: () {},
                    child: avatarWidget(avatarUrl[0], 50.0),
                    padding: EdgeInsets.all(1.0),
                    color: Colors.blue,
                    elevation: 0.0,
                    shape: CircleBorder(),
                  ),
                  SizedBox(width: 0.0),
                  Expanded(
                    child: Text(
                      "Chat",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    elevation: 0.0,
                    padding: EdgeInsets.all(8.0),
                    color: Colors.grey[800],
                    shape: CircleBorder(),
                    child: Icon(Icons.camera_alt, color: Colors.white),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    elevation: 0.0,
                    padding: EdgeInsets.all(8.0),
                    color: Colors.grey[800],
                    shape: CircleBorder(),
                    child: Icon(Icons.edit, color: Colors.white),
                  ),
                ],
              ),
              /// Create search bar
              SizedBox(height: 20.0),
              TextField(
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Colors.white),
                  hintText: "Search",
                  contentPadding: EdgeInsets.only(left: 34.0),
                  filled: true,
                  fillColor: Colors.grey[800],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              /// Create list view
              Container(
                height: 60.0,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    /// Create story widget
                    MaterialButton(
                      onPressed: () {},
                      elevation: 0.0,
                      padding: EdgeInsets.all(12.0),
                      color: Colors.grey[800],
                      shape: CircleBorder(),
                      child: Icon(Icons.add, color: Colors.grey[300]),
                    ),
                    /// Create the story button widget
                    storyButton(avatarUrl[1], 60.0),
                    storyButton(avatarUrl[2], 60.0),
                    storyButton(avatarUrl[3], 60.0),
                    storyButton(avatarUrl[4], 60.0),
                    storyButton(avatarUrl[5], 60.0),
                    storyButton(avatarUrl[6], 60.0),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              /// Build the chat feed list view
              Expanded(
                child: ListView(
                  children: [
                    /// Create list items widget
                    listItem(avatarUrl[5], "Trinh Bede", "Hello", "18:35"),
                    listItem(avatarUrl[3], "Lan Less", "See u again", "17:00"),
                    listItem(avatarUrl[2], "Khang ThaiLand", "U r welcome", "09:25"),
                    listItem(avatarUrl[6], "Hoa Yellow", "Nothing", "07:30"),
                    listItem(avatarUrl[4], "Vayne", "Sure", "Yesterday, 23:35"),
                    listItem(avatarUrl[1], "David", "Good luck!", "Monday, 20:00"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      /// Create the button menu bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: "Friend Requests",
          ),
        ],
      ),
    );
  }
}


