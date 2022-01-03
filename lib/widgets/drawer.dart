import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final imageUrl = "data:image/jpeg;base64,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";
    return Drawer(

      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text('Bhagyesh Thakkar',style: TextStyle(color: Colors.white),),
              accountEmail: Text('bhagyesh.imscit17@gmail.com',style: TextStyle(color: Colors.white),),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(

                  child: Image.asset("assets/images/hey.png",fit:BoxFit.cover,height:90,width:90),
                ),
              ),
            ),
            ),
            ListTile(

              leading: Icon(CupertinoIcons.home,color: Colors.white,
              ),
              title: (Text("Home",
              textScaleFactor: 1.2,style: TextStyle(color: Colors.white),)),

            ),
          ],
        ),
      ),
    );
  }
}
