import 'package:flutter/material.dart';

class CustomeLoader extends StatelessWidget {
  const CustomeLoader({
    Key? key,
    required this.text,
    required this.isLoading,
  }) : super(key: key);

  final String text;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.transparent,
            child: Center(
                child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(0.5),
              ),
              width: 100,
              height: 100,
              child: Container(
                width: 80,
                height: 80,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircularProgressIndicator(
                        color: Colors.white,
                      ),
                      Text(
                        text,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )))
        : Container(
            height: 0,
            width: 0,
          );
  }
}
