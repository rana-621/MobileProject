import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newappflutter/features/auth/dashboard/modules/users/controller/cubit/user_cubit.dart';
import 'package:newappflutter/features/auth/dashboard/modules/users/view/components/user_widget.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserCubit(),
      child: BlocBuilder<UserCubit, UserState>(
        builder: (context, state) {
          final UserCubit controller = context.read<UserCubit>();
          return Scaffold(
          
            
            body: state is UserLoading
                ? const CircularProgressIndicator()
                : state is UserEmpty
                    ? const Center(
                        child: Icon(
                        CupertinoIcons.camera,
                        size: 100,
                        color: Colors.grey,
                      ))
                    : GridView.builder(
                        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1, crossAxisSpacing: 10, mainAxisSpacing: 10),
                        // separatorBuilder: (_, int index) => const Divider(
                        //       height: 1,
                        //       thickness: 5,
                        //     ),
                        itemCount: controller.users.length,
                        itemBuilder: (_, int index)=>Text(controller.users[index].name ??'xxx') ),
                    /*ListView.builder(
                      itemCount: controller.users.length,
                      itemBuilder: (_,int index){
                     return Text(controller.users[index].name?? 'xxx');

                    })*/
      
          );
        },
      ),
    );
  }
}
/*{
                          return UserItemWidget(userModel: controller.users[index]);
                        }*/