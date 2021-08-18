import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:input_app/model/user.dart';

class Display extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final User user = ModalRoute.of(context)!.settings.arguments as User;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        elevation: 0,
        title: Text("Display"),
        centerTitle: true,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            
            child:Card(
              child: Column(
                
               crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                 Row(
                   children: [
                     logo(),
                    
                     Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "BioData",
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ),
                   ],
                 ),
                  SizedBox(height: 40),
                  CircleAvatar(
                    backgroundColor: Colors.black45,
                    radius: 40,
                    child: Icon(
                      
                      Icons.person),
                  ),
                  SizedBox(height: 10),
                 Container(
                   margin:EdgeInsets.all(10),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text(user.getFirst(), style: TextStyle(
                         fontSize: 30,
                         color: Colors.red
                       ),),
                       SizedBox(width: 5,),
                       Text(
                          user.getLast(),
                          style: TextStyle(fontSize: 30, color: Colors.red),
                        ),
                     ] 
                     
                   ), 
                 ),
                 SizedBox(height: 10),
                 Container(
                   margin: EdgeInsets.all(10),
                   child: Row(
                     children: [
                       Icon(Icons.email_outlined, color: Colors.black45,),
                       SizedBox(width: 10),
                       Text(
                          user.getEmail(),
                          style: TextStyle(fontSize: 16, color: Colors.black87),
                        ),
                     ],
                   ),
                 ),
            
                 Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      
                      children: [
                        Icon(Icons.track_changes, color: Colors.black45,
                        ),
                        SizedBox(width: 10),
                        Text(
                          user.getTrack(),
                          style: TextStyle(fontSize: 16, color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(Icons.person_add,
                          color: Colors.black45,
                        ),
                        SizedBox(width: 10),
                        Text(
                          user.getSlackName(),
                          style: TextStyle(fontSize: 16, color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(Icons.flag, color: Colors.black45,
                        ),
                        SizedBox(width: 10),
                        Text(
                          user.getCountry(),
                          style: TextStyle(fontSize: 16, color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("About",
                          style: TextStyle(fontSize: 16, color: Colors.lightBlue),
                        ),
                        SizedBox(height:5),
                        Text(
                          user.getABout(),
                          style: TextStyle(fontSize: 16, color: Colors.black38),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50,),
        
                  Container(
                    padding: EdgeInsets.all(10),
                    color:Colors.lightBlue,
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "Your Data was Captured Successfuly",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
    
  }

   Widget logo() {
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CircleAvatar(
            radius: 30,
            child: Image.asset("images/hng.png"),
          ),
          SizedBox(width: 10),
          CircleAvatar(
            radius: 30,
            child: Image.asset("images/hng3.png"),
          ),
        ],
      ),
    );
  }
  
}