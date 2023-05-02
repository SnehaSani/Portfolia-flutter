import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : Colors.grey[900],
      appBar : AppBar(
        backgroundColor: Colors.grey[850],
        title : Text('Portfolio',
        style: TextStyle(
          letterSpacing: 2.0,
          fontSize: 20.0,
        ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black87,
              ),
              child: Center(
                child: Text('Navigation',
                style: TextStyle(
                  letterSpacing: 2.0,
                  color: Colors.white,
                ),),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: const Text('Page 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.train,
              ),
              title: const Text('Page 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body : SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            //image : AssetImage('assets/bg1.jpg'),
          ),
          padding: EdgeInsets.all(25),
          child : Column(
            children: [
              Text(
                "Hi, I'm Sneha Sani",
                style : TextStyle(
                  fontFamily: 'Heland',
                  color: Colors.white,
                  fontSize: 50.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0,),
              Text(
                "A Self-started, Motivated, Dynamic."
                    "\nI design and develop web applications.",
                style : TextStyle(
                  //fontFamily: 'Heland',
                  color: Colors.white54,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0,),
              Center(
                child: CircleAvatar(
                  radius : 150.0,
                  backgroundImage: AssetImage('assets/snehapic.jpg'),
                ),
              ),

              SizedBox(height: 30.0,),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "MORE ABOUT ME",
                  style : TextStyle(
                    //fontFamily: 'Heland',
                    color: Colors.white,
                    fontSize: 15.0,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                    
                  ),
                ),
              ),


              SizedBox(height: 20.0,),
              Container(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                width: MediaQuery.of(context).size.width,
                color: Colors.lightBlueAccent,
                height: 230.0,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.bookmark,
                          size: 50.0,
                          color: Colors.black,),
                        Text(
                          " EDUCATION",
                          style : TextStyle(
                            //fontFamily: 'Heland',
                            color: Colors.black,
                            fontSize: 30.0,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                      ],
                    ),
                    Text(
                      "B-Tech in Computer Science from College of Engineering, Trivandrum\n\n"
                          "Completed 12th with 96.2% from Chavara Public School, Pala\n\n"
                          "Completed 10th with 93% from The Indian Community School, Khaitan, Kuwait",
                      style : TextStyle(
                        //fontFamily: 'Heland',
                        color: Colors.indigo,
                        fontSize: 13.0,
                        //letterSpacing: 2.0,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ],
                )
              ),
              SizedBox(height: 30.0,),
              Container(
                  padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  width: MediaQuery.of(context).size.width,
                  color: Colors.amberAccent,
                  height: 150.0,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.view_module_rounded,
                            size: 50.0,
                            color: Colors.black,),
                          Text(
                            " PROJECTS",
                            style : TextStyle(
                              //fontFamily: 'Heland',
                              color: Colors.black,
                              fontSize: 30.0,
                              letterSpacing: 2.0,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "\nE-CARE Hackathon project\n"
                              "CODE A POOKALAM by Tinkerhub",
                          style : TextStyle(
                            //fontFamily: 'Heland',
                            color: Colors.redAccent,
                            fontSize: 13.0,
                            //letterSpacing: 2.0,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                      ),
                    ],
                  )
              ),
              SizedBox(height: 30.0,),
              Container(
                  padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  width: MediaQuery.of(context).size.width,
                  color: Colors.tealAccent,
                  height: 160.0,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.laptop_chromebook,
                            size: 50.0,
                            color: Colors.black,),
                          Text(
                            " SKILLS",
                            style : TextStyle(
                              //fontFamily: 'Heland',
                              color: Colors.black,
                              fontSize: 30.0,
                              letterSpacing: 2.0,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "\nProgramming Languages : C, C++, Java, Python\n"
                              "Database : mySQL\n"
                              "Frontend : html, css, javasript, flutter",
                          style : TextStyle(
                            //fontFamily: 'Heland',
                            color: Colors.teal,
                            fontSize: 13.0,
                            //letterSpacing: 2.0,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                      ),
                    ],
                  )
              ),

              SizedBox(height: 40.0,),
              Text(
                "Let's connect",
                style : TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Get in touch for opportunities or just say hi !",
                style : TextStyle(
                  color: Colors.white54,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      child: GestureDetector(
                        onTap: (){launch('https://mail.google.com/mail/u/0/#inbox?compose=new');},
                        child: Icon(
                          Icons.mail,
                          color: Colors.white,),
                      )
                  ),
                  Container(
                    child: GestureDetector(
                      onTap: (){launch('https://www.facebook.com/sneha.sani.33');},
                      child: Icon(
                        Icons.facebook,
                        color: Colors.white,),
                    )
                  ),
                  Container(
                      child: GestureDetector(
                        onTap: (){launch('https://www.instagram.com/sneha.sani_/');},
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,),
                      )
                  ),
                  // Icon(
                  //   Icons.,
                  // ),
                  // Icon(
                  //   Icons.,
                  // ),

                ],
              )
            ],
          )
        ),
      ),
    );
  }
}
