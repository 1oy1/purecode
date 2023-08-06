

import 'package:flutter/material.dart';

class ContactUsPage extends StatefulWidget {
  @override
  _ContactUsPageState createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Perform form submission logic here
      // You can access form field values using _nameController.text, _emailController.text, etc.
      // For example, you can print the values to the console:
      print('Name: ${_nameController.text}');
      print('Email: ${_emailController.text}');
      print('Phone Number: ${_phoneController.text}');
      print('Message: ${_messageController.text}');
    }
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Contact Us',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text('FAQ>'),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff2BBFB0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Have a question, comment or feedback?'
                      'Please use the form below to get in touch.',
                      textAlign: TextAlign.center,
                    ),
                    Text('Name'),
                    SizedBox(height: 16),
                    TextFormField(
                      style: TextStyle(color: Color(0xfffffffff)),
                      controller: _nameController,
                      decoration: InputDecoration(
                        labelText: 'Type your name',
                        labelStyle: TextStyle(color: Color(0xfffffffff)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xfffffffff)),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),
                     Text('Email') ,
                  SizedBox(height: 16),
                  TextFormField(
                     style: TextStyle(color: Color(0xfffffffff)),
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Type your email',
                      labelStyle: TextStyle(color: Color(0xfffffffff)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xfffffffff)),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                  ),
                   Text('Phone Number') ,
                  SizedBox(height: 16),
                  TextFormField(
                    style: TextStyle(color: Color(0xfffffffff)),
                    controller: _phoneController,
                    decoration: InputDecoration(
                      labelText: 'Type your phone number',
                      labelStyle: TextStyle(color: Color(0xfffffffff)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xfffffffff)),
                      ),
                    ),
                  ),
                          Text('Message') ,
                  SizedBox(height: 16),
                  TextFormField(
                    style: TextStyle(color: Color(0xfffffffff)),
                    controller: _messageController,
                    decoration: InputDecoration(
                      labelText: 'Type your message',
                       labelStyle: TextStyle(color: Color(0xfffffffff)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xfffffffff)),
                      ),
                    ),
                    maxLines: 5,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your message';
                      }
                      return null;
                    },
                  ),
                   const SizedBox(height: 30),
                  ElevatedButton(
                     style: ButtonStyle(
backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
EdgeInsets.symmetric(vertical: 8, horizontal: 16),
),
textStyle: MaterialStateProperty.all<TextStyle>(
TextStyle(fontSize: 16),
),
minimumSize: MaterialStateProperty.all<Size>(
Size(12, 40),
),
shape: MaterialStateProperty.all<RoundedRectangleBorder>(
RoundedRectangleBorder(
borderRadius: BorderRadius.circular(10),
),
),
),
onPressed: _submitForm,
child: Text('Submit'),
),
],
),
),
],
),
                    // Rest of the code...
   
                ),
              ),
           bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        child: Container(
          color: Color.fromRGBO(43, 191, 176, 1.0),
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(28, 97, 121, 1.0),
                ),
                child: Icon(Icons.home, color: Colors.white),
              ),
              Icon(Icons.chat, color: Colors.white),
              Icon(Icons.settings, color: Colors.white),
            ],
          ),
        ),
      ),
  );
  }
    Widget Boxes(IconData iconData, String text) {
      return Container(
        height: 100,
        margin: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 36,
              color: Color.fromRGBO(51, 62, 80, 1.0),
            ),
            SizedBox(height: 8),
            Text(
              text,
              style: TextStyle(
                color: Color.fromRGBO(51, 62, 80, 1.0),
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
        color: Color.fromRGBO(43, 191, 176, 1.0),
      );
    }

 
}