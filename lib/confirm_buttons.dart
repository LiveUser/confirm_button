import 'dart:async';
import 'package:flutter/material.dart';

class RadialConfirm extends StatefulWidget {
  const RadialConfirm({
    Key? key,
    this.valueColor,
    this.backgroundColor,
    required this.strokeWidth,
    required this.secondsToConfirm,
    required this.radius,
    required this.child,
    required this.onConfirmed,
  }) : super(key: key);
  final Color? valueColor;
  final Color? backgroundColor;
  final double strokeWidth;
  final int secondsToConfirm;
  final double radius;
  final Widget child;
  final Function onConfirmed;
  @override
  State<RadialConfirm> createState() => _RadialConfirmState();
}

class _RadialConfirmState extends State<RadialConfirm> {
  Timer? timer;
  double progress = 0;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPressStart: (details){
        timer = Timer.periodic(const Duration(milliseconds: 1), (timer) {
          if(progress == 1){
            timer.cancel();
            //Call callback
            widget.onConfirmed();
          }else{
            setState(() {
              //.001 is 1 millisecond
              progress = timer.tick / (widget.secondsToConfirm / 0.001);
            });
          }
        });
      },
      onLongPressEnd: (details){
        timer!.cancel();
        setState(() {
          progress = 0;
        });
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: widget.radius,
            height: widget.radius,
            child: CircularProgressIndicator(
              value: progress,
              valueColor: AlwaysStoppedAnimation(widget.valueColor),
              backgroundColor: widget.backgroundColor,
              strokeWidth: widget.strokeWidth,
            ),
          ),
          widget.child,
        ],
      ),
    );
  }
}