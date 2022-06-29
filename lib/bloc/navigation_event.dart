import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

abstract class NavigationEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class PopToFirst extends NavigationEvent {
  final dynamic result;

  PopToFirst({this.result});
}

class Pop extends NavigationEvent {
  final dynamic result;

  Pop({this.result});
}
class Push extends NavigationEvent {
  final Route route;

  Push({required this.route});

}
class PushReplacement extends NavigationEvent {
  final Route route;

  PushReplacement({required this.route});

}