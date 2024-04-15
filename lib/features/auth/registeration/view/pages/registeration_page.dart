import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newappflutter/features/auth/registeration/controller/cubit/registeration_cubit.dart';
import 'package:newappflutter/features/auth/registeration/view/components/bottom_widget.dart';
import 'package:newappflutter/features/auth/registeration/view/components/required_data_widget.dart';

class RegisterationPage extends StatelessWidget {
  const RegisterationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<RegisterationCubit>(
        create: (context) => RegisterationCubit(),
        child: BlocBuilder<RegisterationCubit, RegisterationState>(
          builder: (context, state) {
            RegisterationCubit controller = context.read<RegisterationCubit>();
            return Scaffold(
              body: RequiredDataWidget(controller: controller),
              bottomNavigationBar: SizedBox(
                height: 200,
                child: BottomNavigationWiidget(
                  controller: controller,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
