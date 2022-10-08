import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: Container(

        color: Colors.black87,
        child: ListView(
          children: const [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Utkarsh Tiwari"),
                  accountEmail: Text("Ut88080@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://imgs.search.brave.com/s2lytfQE9bT1PFNevwQijUTaIwKpR-SXMrBzrzWB3YU/rs:fit:400:225:1/g:ce/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5t/TW82RlJBM0V6VDRR/anVMTW9DX0VRR1FH/USZwaWQ9QXBp")),
                )),
            ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
            ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                title: Text(
                  "Email me",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
            ListTile(
                leading: Icon(
                  Icons.verified_user,
                  color: Colors.white,
                ),
                title: Text(
                  "verify",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
            ListTile(
                leading: Icon(
                  Icons.call,
                  color: Colors.white,
                ),
                title: Text(
                  "Contact",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
            ListTile(
                leading: Icon(
                  Icons.account_balance_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  "About Us",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
