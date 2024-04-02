// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: public_member_api_docs, avoid_print

import 'dart:async';

import 'package:embecta/home_page/home_page_widget.dart';
import 'package:embecta/home_page/pin_widget.dart';
import 'package:embecta/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class FaceIdWidget extends StatefulWidget {
  const FaceIdWidget({super.key});

  @override
  State<FaceIdWidget> createState() => _FaceIdWidgetState();
}

class _FaceIdWidgetState extends State<FaceIdWidget> {
  final LocalAuthentication auth = LocalAuthentication();
  _SupportState _supportState = _SupportState.unknown;
  bool? _canCheckBiometrics;
  List<BiometricType>? _availableBiometrics;
  String _authorized = 'Not Authorized';
  bool _isAuthenticating = false;

  @override
  void initState() {
    super.initState();
    auth.isDeviceSupported().then(
          (bool isSupported) => setState(() => _supportState = isSupported
              ? _SupportState.supported
              : _SupportState.unsupported),
        );
    if (_supportState == _SupportState.supported) {
      _checkBiometrics();
    }
  }

  Future<void> _checkBiometrics() async {
    late bool canCheckBiometrics;
    try {
      canCheckBiometrics = await auth.canCheckBiometrics;
    } on PlatformException catch (e) {
      canCheckBiometrics = false;
      print(e);
    }
    if (!mounted) {
      return;
    }

    setState(() {
      _canCheckBiometrics = canCheckBiometrics;
    });
  }

  Future<void> _getAvailableBiometrics() async {
    late List<BiometricType> availableBiometrics;
    try {
      availableBiometrics = await auth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      availableBiometrics = <BiometricType>[];
      print(e);
    }
    if (!mounted) {
      return;
    }

    setState(() {
      _availableBiometrics = availableBiometrics;
    });
  }

  Future<void> _authenticate() async {
    bool authenticated = false;
    try {
      setState(() {
        _isAuthenticating = true;
        _authorized = 'Authenticating';
      });
      authenticated = await auth.authenticate(
        localizedReason: 'Let OS determine authentication method',
        options: const AuthenticationOptions(
          stickyAuth: true,
        ),
      );
      setState(() {
        _isAuthenticating = false;
      });
    } on PlatformException catch (e) {
      print(e);
      setState(() {
        _isAuthenticating = false;
        _authorized = 'Error - ${e.message}';
      });
      return;
    }
    if (!mounted) {
      return;
    }

    setState(
        () => _authorized = authenticated ? 'Authorized' : 'Not Authorized');
  }

  Future<void> _authenticateWithBiometrics() async {
    // if(_canCheckBiometrics!){
    //   print("test _canCheckBiometrics");
    // }
    bool authenticated = false;
    try {
      setState(() {
        _isAuthenticating = true;
        _authorized = 'Authenticating';
      });
      authenticated = await auth.authenticate(
        localizedReason:
            'Scan your fingerprint (or face or whatever) to authenticate',
        options: const AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: true,
        ),
      );
      setState(() {
        _isAuthenticating = false;
        _authorized = 'Authenticating';
      });
    } on PlatformException catch (e) {
      print(e);
      setState(() {
        _isAuthenticating = false;
        _authorized = 'Error - ${e.message}';
      });
      return;
    }
    if (!mounted) {
      return;
    }

    final String message = authenticated ? 'Authorized' : 'Not Authorized';
    if (authenticated) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    }
    setState(() {
      _authorized = message;
    });
  }

  Future<void> _cancelAuthentication() async {
    await auth.stopAuthentication();
    setState(() => _isAuthenticating = false);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(
              width: 200,

              child: Image.asset("assets/images/embecta.png"),
            ),
            SizedBox(height: 20,),
            Text('Enter 4 Digit Login PIN',style: TextStyle(fontSize: Constants.fontSize_16),),
            SizedBox(height: 10,),
            PinWidget(),
            SizedBox(height: 50,),
            Align(alignment: Alignment.bottomCenter,child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //  ElevatedButton(
                //           onPressed: _authenticate,
                //           child: const Row(
                //             mainAxisSize: MainAxisSize.min,
                //             children: <Widget>[
                //               Text('Authenticate'),
                //               Icon(Icons.perm_device_information),
                //             ],
                //           ),
                //         ),
                ElevatedButton(
                  onPressed: _authenticateWithBiometrics,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(_isAuthenticating
                          ? 'Cancel'
                          : 'Unlock with fingerprint or Face ID'),
                      const Icon(Icons.fingerprint),
                    ],
                  ),
                ),
              ],
            ),),
            const SizedBox(
              height: 10,
            ),

          ],
        ),
      ),
    );
  }
}

enum _SupportState {
  unknown,
  supported,
  unsupported,
}
