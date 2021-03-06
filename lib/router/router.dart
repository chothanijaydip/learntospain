import 'package:auto_route/annotations.dart';
import 'package:younmin/presentation/home/home.dart';
import 'package:younmin/presentation/login/login.dart';
import 'package:younmin/presentation/main/main_page.dart';
import 'package:younmin/presentation/questions/questions.dart';
import 'package:younmin/presentation/sign_up/sign_up.dart';
import 'package:younmin/presentation/yearlyTodo/yearly_todo.dart';

@AdaptiveAutoRouter(routes: <AutoRoute>[
  AutoRoute(path: "/", page: Home, initial: true),
  AutoRoute(path: "/login", page: Login),
  AutoRoute(path: "/signUp", page: SignUp),
  AutoRoute(path: "/yearlyTodo", page: YearlyTodo),
  AutoRoute(path: "/questions", page: Questions),
  AutoRoute(path: "main/:id", page: MainPage),
])
class $YounminRouter {}
