
import 'package:flutter/material.dart';
import 'package:input_app/model/user.dart';
import 'package:input_app/screens/output_screen.dart';

class Input extends StatelessWidget {

  final TextEditingController _first = TextEditingController();
  final TextEditingController _last = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _track = TextEditingController();
  final TextEditingController _slack = TextEditingController();
  final TextEditingController _country = TextEditingController();
  final TextEditingController _about = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        elevation: 0,
        title: Text("HNG INternship"),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              logo(),
        
              textForm(),
              textForm2(),
              textForm3(),
              textForm4(),
              textForm5(),
              textForm6(),
              textForm7(),
              submit(context)
             
            ],
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

  Widget textForm() {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        //border: Border.all(color: Colors.blueGrey)
      ),
      child: TextField(
        controller: _first,
        textInputAction: TextInputAction.done,
        cursorColor: Colors.black54,
        cursorHeight: 30,
        decoration: InputDecoration(
          labelText: "First Name",
          prefixIcon: Icon(Icons.person),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: EdgeInsets.all(10),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.red,
              )),
        ),
      ),
    );
  }

   Widget textForm2() {
    return Container(
     
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        //border: Border.all(color: Colors.blueGrey)
      ),
      child: TextField(
         controller: _last,
        textInputAction: TextInputAction.done,
        cursorColor: Colors.black54,
        cursorHeight: 30,
        decoration: InputDecoration(
          labelText: "Last Name",
          prefixIcon: Icon(Icons.person),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: EdgeInsets.all(10),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.red,
              )),
        ),
      ),
    );
  }

   Widget textForm3() {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        //border: Border.all(color: Colors.blueGrey)
      ),
      child: TextField(
         controller: _email,
        textInputAction: TextInputAction.done,
        cursorColor: Colors.black54,
        cursorHeight: 30,
        decoration: InputDecoration(
          labelText: "Email",
          prefixIcon: Icon(Icons.email),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: EdgeInsets.all(10),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.red,
              )),
        ),
      ),
    );
  }
   Widget textForm4() {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        //border: Border.all(color: Colors.blueGrey)
      ),
      child: TextField(
         controller: _track,
        textInputAction: TextInputAction.done,
        cursorColor: Colors.black54,
        cursorHeight: 30,
        decoration: InputDecoration(
          labelText: "Track",
          prefixIcon: Icon(Icons.track_changes),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: EdgeInsets.all(10),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.red,
              )),
        ),
      ),
    );
  }

   Widget textForm5() {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        //border: Border.all(color: Colors.blueGrey)
      ),
      child: TextField(
         controller: _slack,
        textInputAction: TextInputAction.done,
        cursorColor: Colors.black54,
        cursorHeight: 30,
        decoration: InputDecoration(
          labelText: "Slack Name",
          prefixIcon: Icon(Icons.person),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: EdgeInsets.all(10),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.red,
              )),
        ),
      ),
    );
  }

   Widget textForm6() {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        //border: Border.all(color: Colors.blueGrey)
      ),
      child: TextField(
         controller: _country,
        textInputAction: TextInputAction.done,
        cursorColor: Colors.black54,
        cursorHeight: 30,
        decoration: InputDecoration(
          labelText: "Country",
          prefixIcon: Icon(Icons.flag),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: EdgeInsets.all(10),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.red,
              )),
        ),
      ),
    );
  }

   Widget textForm7() {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        //border: Border.all(color: Colors.blueGrey)
      ),
      child: TextField(
         controller: _about,
        maxLength: 100,
        maxLines: null,
        textInputAction: TextInputAction.done,
        cursorColor: Colors.black54,
        cursorHeight: 30,
        decoration: InputDecoration(
          labelText: "About",
          prefixIcon: Icon(Icons.person),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: EdgeInsets.all(10),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.red,
              )),
        ),
      ),
    );
  }

  Widget submit(BuildContext context){
    User user;
    return Container(
      margin: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white)
          ),
        onPressed: ()=>{
          if(validator()){
            showDialog(context: context, builder: (context){
              return AlertDialog(
                content: Text("All Fields are required", style:TextStyle(
                    color: Colors.red,
                    fontSize: 20
                )),
              );
            })
          
          }
          else{
             user  = User(_first.text,
              _last.text,
              _email.text,
              _track.text,
              _slack.text,
              _country.text,
              _about.text),
            Navigator.push(context,
             MaterialPageRoute(
               builder:(context)=> Display(),
               settings:RouteSettings(
                 arguments: user),
             )
            ),
            clear(),
          }
        },
        child: Text("Submit",
          style: TextStyle(fontSize: 16, color: Colors.lightBlue),
        ),
        ),
    );
  }

bool validator(){

  if(_first.text.isEmpty || _last.text.isEmpty || _email.text.isEmpty
  || _track.text.isEmpty || _slack.text.isEmpty || _country.text.isEmpty
  || _about.text.isEmpty){
    return true;
  }
    return false;
  }

  void clear(){
    _first.text = "";
     _last.text ="";
      _email.text ="";
      _track.text ="";
      _slack.text ="";
      _country.text ="";
      _about.text ="";





  }
  
}
 

