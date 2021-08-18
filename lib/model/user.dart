
class User {
String _firstName;
String _lastName;
String _email;
String _track;
String _slackName;
String _country;
String _about;



User(this._firstName, 
this._lastName, 
this._email,  
this._track,
this._slackName,
this._country,
this._about);

String getFirst() => _firstName;
String getLast() => _lastName;
String  getEmail() => _email;
String getTrack ()=> _track;
String getSlackName ()=> _slackName;
String getCountry () => _country;
String getABout() => _about;


}

