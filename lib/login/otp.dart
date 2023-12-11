import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class MyOtp extends StatefulWidget {
  const MyOtp({Key? key}) : super(key: key);

  @override
  State<MyOtp> createState() => _MyOtpState();
}

class _MyOtpState extends State<MyOtp> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
        ),
      ),
          body: Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Phone Verification',style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
               SizedBox(height: 10,),
                  Text('We need to register your phone before getting started !',
                  style: TextStyle(fontSize: 16
                  ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30,),
              Pinput(
                  length: 6,
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,

              ),
                  SizedBox(height: 20,),
                  SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (){},
                      child: Text('Verify phone number'),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blue.shade600,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                    ),


                  ),
                 Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),

                      ],
                    ),

                  SizedBox(height: 20,),
                  Row(
                    children: [
                      TextButton(onPressed: (){},
                        child: Text('Edit Phone Number ?',style: TextStyle(color: Colors.black),),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
    );
  }
}

