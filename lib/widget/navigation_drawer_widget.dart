import 'package:flutter/material.dart';
import 'package:navigation_drawer_example/page/user_page.dart';


class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final name = 'User Name';
    final email = 'user@user.com';
    final urlImage =
        '';

    return Drawer(
      child: Material(
        color: Color.fromARGB(255, 255, 255, 255),
        child: ListView(
          children: <Widget>[
            buildHeader(
              urlImage: urlImage,
              name: name,
              email: email,
              onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => UserPage(
                  name: 'User Name',
                  urlImage: urlImage,
                ),
              )),
            ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  const SizedBox(height: 24),
                     ListTile(
                        hoverColor:Color.fromARGB(255, 69, 17, 129) ,
                  title: Text("About Us", style: TextStyle( 
      fontSize: 18,
fontWeight: FontWeight.bold,
  color: Color.fromARGB(255, 11, 54, 88), 
     
  ),),
                  leading: Icon(
  Icons.people,
  color: Color.fromARGB(255, 15, 18, 20),
 size: 30.0,
),
                 onTap: () {
  },
                ),
            
                  const SizedBox(height: 24),
                   ListTile(
                      hoverColor:Color.fromARGB(255, 69, 17, 129) ,
                  title: Text("Settings", style: TextStyle( 
      fontSize: 18,
fontWeight: FontWeight.bold,
  color: Color.fromARGB(255, 11, 54, 88), 

     
  ),),
                  leading: Icon(
  Icons.settings,
  color: Color.fromARGB(255, 112, 132, 148),
   size: 30.0,
),
                 onTap: () {
        },
                ),
              
                  const SizedBox(height: 24),
                    ListTile(
                       hoverColor:Color.fromARGB(255, 69, 17, 129) ,
                  title: Text("Instructions", style: TextStyle( 
      fontSize: 18,
fontWeight: FontWeight.bold,
  color: Color.fromARGB(255, 11, 54, 88), 
     
  ),),
                  leading: Icon(
  Icons.integration_instructions,
  color: Color.fromARGB(255, 41, 105, 158),
   size: 30.0,
),
                 onTap: () {

        },
                ),
              
                
              
                  const SizedBox(height: 24),
                  ListTile(
                     hoverColor:Color.fromARGB(255, 69, 17, 129) ,
                  title: Text("Share App", style: TextStyle( 
      fontSize: 18,
fontWeight: FontWeight.bold,
  color: Color.fromARGB(255, 11, 54, 88), 
     
  ),),
                  leading: Icon(
  Icons.share,
  color: Color.fromARGB(255, 11, 31, 48),
   size: 30.0,
),
                 onTap: () {
        },
                ),
              
                  const SizedBox(height: 24),
               
                    ListTile(
                       hoverColor:Color.fromARGB(255, 69, 17, 129) ,
                  title: Text("Contact us", style: TextStyle( 
      fontSize: 18,
fontWeight: FontWeight.bold,
  color: Color.fromARGB(255, 11, 54, 88), 
     
  ),),
                  leading: Icon(
  Icons.phone,
  color: Color.fromARGB(255, 29, 223, 116),
   size: 30.0,
),
                 onTap: () {
        },
                ),
              
                  const SizedBox(height: 24),
                   ListTile(
                      hoverColor:Color.fromARGB(255, 69, 17, 129) ,
                  title: Text("Rate Our App", style: TextStyle( 
      fontSize: 18,
fontWeight: FontWeight.bold,
  color: Color.fromARGB(255, 11, 54, 88), 
     
  ),),
                  leading: Icon(
  Icons.star,
  color: Color.fromARGB(255, 228, 245, 82),
   size: 30.0,
),
              onTap: (){},  
                ),
              
                     const SizedBox(height: 24),
                  ListTile(
                    hoverColor:Color.fromARGB(255, 69, 17, 129) ,
                  title: Text("Favourite", style: TextStyle( 
      fontSize: 18,
fontWeight: FontWeight.bold,
  color: Color.fromARGB(255, 11, 54, 88), 
     
  ),),
                  leading: Icon(
  Icons.favorite_rounded,
  color: Color.fromARGB(255, 247, 47, 47),
  size: 30.0,
),
onTap: (){},
                ),
              
                
                     const SizedBox(height: 24),
               
                  ListTile(
                     hoverColor:Color.fromARGB(255, 69, 17, 129) ,
                  title: Text("Help", style: TextStyle( 
      fontSize: 18,
fontWeight: FontWeight.bold,
  color: Color.fromARGB(255, 11, 54, 88), 
    
  ),),
                  leading: Icon(
  Icons.help,
  color: Color.fromARGB(255, 79, 86, 92), size: 30.0,
),
   onTap: (){},             
                ),
               const SizedBox(height: 44),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 45, 21, 153)),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 31, 13, 129)),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  



 
  }

