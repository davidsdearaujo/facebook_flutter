import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PublishbarComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              "https://media.licdn.com/dms/image/C5603AQEKYex09zfWlg/profile-displayphoto-shrink_100_100/0?e=1565827200&v=beta&t=Ta6g_Depl3poGqvIeNTHEGvGUpjNXSQ94WFJdXILLdA"),
          backgroundColor: Colors.grey[200],
        ),
        title: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: 10),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            "No que você está pensando?",
            style: TextStyle(fontSize: 12),
          ),
        ),
        trailing: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              FontAwesomeIcons.images,
              color: Colors.black,
            ),
            SizedBox(height: 3),
            Text("Foto", style: TextStyle(fontSize: 10))
          ],
        ),
      ),
    );
  }
}
