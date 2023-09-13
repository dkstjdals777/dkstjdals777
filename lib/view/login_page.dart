import 'package:fit_test/view/bloc/login_bloc.dart';
import 'package:fit_test/view/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.isLogin) {
          context.pop();
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: CommonWidget.commonAppBar(context),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('로그인'),
              SizedBox(
                width: 0.5.sw,
                child: TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                  onChanged: (value) => context.read<LoginBloc>().add(LoginEvent.login(value)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
