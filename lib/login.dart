import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
bool isLoading = false;
String v= "hello group 60";

getData()async{
  await Future.delayed(const Duration(seconds: 5));
  setState(() {
    isLoading = true;
  });

}
@override
  void initState() {
  getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading ?
      ConWithoutShimmer (x:v):
      Center(
        child: Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: Container(
              width: 300,
              height: 200,
              child:  Text(v, style: TextStyle(
                fontSize:  20,
              ),
              ),
            )
          ),
        ),
    );

  }
}

class  ConWithoutShimmer extends StatelessWidget {
  String x;
    ConWithoutShimmer({super.key , required this.x});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
            width: 300,
            height: 200,
            color:  Colors.pink,
            child:  Text(x, style: TextStyle(
              fontSize:  20,
            ),),
      ),
    );
  }
}
