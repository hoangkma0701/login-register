import 'package:flutter/material.dart';
import 'package:flutter_app/Screen/register.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 150,
              height: 150,
              child: new Image.asset('assets/images/logo.png'),
            ),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Tên đăng nhập"
                ),
              ),
            ),

            SizedBox(height: size.height * 0.03),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Mật khẩu"
                ),
                obscureText: true,
              ),
            ),

            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: GestureDetector(
                onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()))
                },
              child: Text(
                "Quên mật khẩu?",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0XFF2661FA)
                ),
              ),
            ),
            ),

            SizedBox(height: size.height * 0.05),

            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                textColor: Colors.white,
                padding: const EdgeInsets.all(0),
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  width: size.width * 1.0,
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(80.0),
                      gradient: new LinearGradient(
                          colors: [
                            Color.fromARGB(255, 0, 0, 255),
                            Color.fromARGB(255, 0, 0, 255)
                          ]
                      )
                  ),
                  padding: const EdgeInsets.all(0),
                  child: GestureDetector(
                    onTap: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()))
                    },
                  child: Text(
                    "ĐĂNG NHẬP",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: GestureDetector(
                onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()))
                },
                child: Text(
                  "Bạn chưa có tài khoản?Đăng ký tại đây",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2661FA)
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

