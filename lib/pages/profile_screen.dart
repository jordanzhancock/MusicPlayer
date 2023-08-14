import 'package:flutter/material.dart';

import '../models/neubox.dart';
import '../themes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static const routeName = 'profile-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 60,
                      width: 60,
                      child: NeuBox(
                          child: IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: const Icon(Icons.arrow_back)))),
                  const SizedBox(
                    width: 75,
                  ),
                  const SizedBox(
                    child: Column(
                      children: [
                        Text(
                          'J A M E S  B L A K E',
                          softWrap: true,
                        ),
                        Text('P R O F I L E')
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: NeuBox(
                    child: Container(
                  width: 400.0,
                  height: 400.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://media2.giphy.com/media/OYWsiyDgnNGUw/giphy.gif')),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    color: Colors.redAccent,
                  ),
                )),
              ),
              const SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 40,
                    child: Center(
                      child: Text(
                        //textAlign: TextAlign.center,
                        'Info \n',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  NeuBox(
                      child: const SingleChildScrollView(
                    child: Text(
                      textAlign: TextAlign.center,
                      'Government Name: James Blake Litherland \n'
                      'Born: September 26, 1988 \n '
                      'Hometown: Enfield, London, England\n'
                      'Year of Rise to Fame: 2011',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ))
                ],
              ),
            ],
          ),
        )));
  }
}
