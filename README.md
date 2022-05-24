# confirm_button

Buttons for confirming actions. Hecho en 🇵🇷 por Radamés J. Valentín Reyes.



<img src="https://by3302files.storage.live.com/y4mEbCfveha7MtRud9FRV-FIrMgyGoV1rHlaBqSy5fDrfLwYsYMYDya9xGf00o5p0ci8v3tCurHfusb4De1HRg4MSg9BnkEPPzZeZnXWFktno-vuR4e92A6BL3UrYo1zu805IBdkYwGemRBlM7ecNJTvrf4YlGrLUvuLYBRHyZzXcGLj4qdUNxEwuo_zyx5AbwB?width=180&height=360&cropmode=none" width="180" height="360" />

# Import

~~~dart
import 'package:confirm_button/confirm_buttons.dart';
import 'package:flutter/material.dart';
~~~

# Widgets
### RadialConfirm
~~~dart
//Do stuff here
RadialConfirm(
  radius: 50,
  secondsToConfirm: 10,
  strokeWidth: 5,
  valueColor: Colors.green,
  backgroundColor: Colors.black,
  onConfirmed: (){
    print("Confirmed");
  },
  child: const Icon(
    Icons.check,
    color: Colors.green,
  ),
),
~~~

# Full examples

### RadialConfirm

~~~dart
import 'package:confirm_button/confirm_buttons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          RadialConfirm(
            radius: 50,
            secondsToConfirm: 10,
            strokeWidth: 5,
            valueColor: Colors.green,
            backgroundColor: Colors.black,
            onConfirmed: (){
              //Do stuff
              print("Confirmed");
            },
            child: const Icon(
              Icons.check,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
~~~
------------------------------------------------------------
## Contribute/donate by tapping on the Pay Pal logo/image

<a href="https://www.paypal.com/paypalme/onlinespawn"><img src="https://www.paypalobjects.com/webstatic/mktg/logo/pp_cc_mark_74x46.jpg"/></a>

------------------------------------------------------------
## References:
- https://www.youtube.com/watch?v=y4_x6Ss8gOE