import 'package:flutter/material.dart';
import 'package:flutter_app/Screen/login.dart';



class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(appBar: AppBar(
      title: Text("THÔNG TIN TÀI KHOẢN"),
    ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Tên đầy đủ"
                ),
              ),
            ),

            SizedBox(height: size.height * 0.03),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Số điện thoại"
                ),
              ),
            ),

            SizedBox(height: size.height * 0.03),

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

            SizedBox(height: size.height * 0.05),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Nhập lại mật khẩu"
                ),
                obscureText: true,
              ),
            ),

            SizedBox(height: size.height * 0.05),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)),
                textColor: Colors.white,
                padding: const EdgeInsets.all(0),
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  width: size.width * 1.0,
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(200.0),
                      gradient: new LinearGradient(
                          colors: [
                            Color.fromARGB(255, 30, 0, 255),
                            Color.fromARGB(255, 30, 0, 255)
                          ]
                      )
                  ),
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    "Đăng ký",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()))
                },
                child: Text(
                  "Bạn đã có tài khoản?Đăng nhập tại đây!",
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
