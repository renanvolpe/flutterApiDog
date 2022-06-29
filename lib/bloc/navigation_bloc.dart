import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';

import 'package:desafio_wa/bloc/bloc.dart';

class NavigationBloc extends Bloc<NavigationEvent, dynamic>{

  final GlobalKey<NavigatorState> navigatorKey;
  NavigationBloc({required this.navigatorKey}) : super(0);

  @override
  Stream<dynamic> mapEventToState(NavigationEvent event) async* {
    if (event is PopToFirst){
      navigatorKey.currentState!.popUntil((route) => route.isFirst);
    }
    if (event is Pop){
      navigatorKey.currentState!.pop(event.result);
    }
    if (event is Push){
      navigatorKey.currentState!.push(event.route);
    }
    if (event is PushReplacement){
      navigatorKey.currentState!.pushReplacement(event.route);
    }
  }
}