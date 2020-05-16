


import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
       home :  Firstscreen()
    );
  
  }
}
class Firstscreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      
      home: SafeArea(

        child: Scaffold(
          body: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80.0),
                  
                  bottomRight: Radius.circular(80.0)
                ),
                child : Card(
                  child:  Container(
                
                height: 250.0,
                width: 250.0,
                child: Expanded(
                  
                  child: Image.network("https://s3.amazonaws.com/zaubatrademarks/501ecc1e-75f2-46cd-956e-ba2f7632abb7.png"),
                  flex: 1,
                  
                ),
               
               
              

                

                
              ),

                )
              
            
              ),
              SizedBox(
                 height: 10.0,
              ),
              Text(
                "NEON",
                style: TextStyle(
                  fontSize: 50.0,
                  fontFamily: "cursive",
                  color: Colors.white,
                  letterSpacing: 20.0,
                ),
              ),
              Divider(
             color: Colors.white,
             thickness: 2.0,
             indent: 40.0,
             endIndent: 40.0,
             
             
          
              ),

             
              Container(
                width: 300.0,
              
                child: RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius : BorderRadius.circular(25.0) ),

                
            onPressed: () {
              
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>Intros()),
              );
            },
            textColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal : 70.0,vertical:20.0),
            
            color:Colors.blue,
            hoverColor: Colors.white,
            child : Row(
              children: <Widget>[
                Text(
              "Continue",
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Icon(
              Icons.arrow_forward
            ),
                
              ],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            )
          
            
          ),
              ),
              Divider(
             color: Colors.white,
             thickness: 1.0,
             indent: 20.0,
             endIndent: 20.0,
             
             
          
              ),
             Container(
               width: double.infinity,
             ),
            

            
              
              


               

              
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

           
        ),
        backgroundColor: Colors.blue,
        
        
      ),
     
    ),
    );
  }
}

class Intros extends StatefulWidget {
  @override
  _IntrosState createState() => _IntrosState();
}

class _IntrosState extends State<Intros> {
  int i=0;
  int j=1;
  List<String>title = ["Welcome to Neon","A place to engage","Know your peers"];
  List<String>para = ["A great place to engage with your community","See what your peers like","let your organization know you better"];
  List<String>buttontext = ["Explore","Let's start","Finish"];

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
          child: Scaffold(
            body: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    
                    Image(
                      image: AssetImage("images/image-$j.PNG"),
                      height:300.0,
                    ),
                    
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                       
                ),

                SizedBox(
                   height: 2.0,
                ),
                FlatButton(
                      color: Colors.white,
                      textColor: Colors.blue,
                      padding: EdgeInsets.all(8.0),
                      splashColor: Colors.blue,
                      child: Text("Skip"),
                      shape: StadiumBorder(),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder : (context)=> Profile(), 
                          ),
                        );
                      },
                       
                      

                    ),
                Text(

                   title[i],
                  style:  TextStyle(
                    fontFamily: 'cursive',
                    fontSize: 45.0,
                    
                  ),
                  
                ),
                SizedBox(
                   height: 20.0,
                ),
                Center(
                  
                    child:Text(
                 para[i],
                  style:  TextStyle(
                    fontFamily: 'sans-serif',
                    fontSize: 15.0,
                  
                  ),
                ),
                ),
                
                SizedBox(
                   height: 20.0,
                ),
                Row(
                  children: <Widget>[
                    Container(
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       border: Border.all(color : Colors.blue,width: 1),
                       color: i==0 ? Colors.blue : Colors.white,
                     ),
                     height: 10.0,
                     width: 10.0,
                     margin: EdgeInsets.fromLTRB(0, 0, 10.0, 0),
                     
                  ),
                  Container(
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       border: Border.all(color : Colors.blue,width: 1),
                       color: i==1 ? Colors.blue : Colors.white,
                     ),
                     height: 10.0,
                     width: 10.0,
                     margin: EdgeInsets.fromLTRB(0, 0, 10.0, 0),
                  ),
                  Container(
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       border: Border.all(color : Colors.blue,width: 1),
                       color: i==2 ? Colors.blue : Colors.white,
                       
                     ),
                     height: 10.0,
                     width: 10.0,
                     margin: EdgeInsets.fromLTRB(0, 0, 10.0, 0),
                  ),
                  

                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  
                  
                  

                ),
                SizedBox(
                     height: 25.0,
                ),
                Container(
                  width: 180.0,

                     child: RaisedButton(
                       onPressed : (){
                         setState(() {
                           if(i<2){

                           
                           i = i +1;
                            j = j +1;
                           }
                           else{
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context)=>Profile()),
                             );
                           }

                         });
                       },
                       padding: EdgeInsets.symmetric(horizontal : 0,vertical:20.0),
                  

                  shape: StadiumBorder(),
                  textColor: Colors.white,
                  hoverColor: Colors.blue,
                  color: Colors.blue,
                
                 
                  child : Row(
            
                   children: <Widget>[
                         Text(
                        buttontext[i],
                    
                    style: TextStyle(
                      fontSize: 20.0,
                    
                    ),
                  ),
                  Icon(
                        Icons.arrow_forward,
                        color : Colors.white      
                  ),

                   ],
                   mainAxisAlignment: MainAxisAlignment.center,
                   

                  ),
                 
                
                 


                ),
                ),
                Container(
                   width: double.infinity,
                ),
                

              ],
              crossAxisAlignment: CrossAxisAlignment.center,
              
             
            ),
          ),
        ),
    );
  }
}
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : SafeArea(
        child: Scaffold(
          body: Text("Hello world"),
          backgroundColor: Colors.white,
        ),
      )
            
    );
    
  }
}




