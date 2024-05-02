import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newappflutter/features/auth/dashboard/controller/cubit/dashboard_cubit.dart';
import 'package:newappflutter/features/auth/dashboard/modules/users/view/user_page.dart';
import 'package:newappflutter/features/auth/registeration/view/pages/registeration_page.dart';

class Dashboard extends StatelessWidget {
 final List<String> titles= const['home','user','service'];
   const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
  
          return BlocProvider(
            create: (context) => DashboardCubit(),
            child: BlocBuilder<DashboardCubit, DashboardState>(
              builder: (context, state) {
                DashboardCubit cubit=context.read<DashboardCubit>();
                
                return Scaffold(
                                  appBar: AppBar(
                                   backgroundColor: Colors.indigo,
                                   title: Text(titles[cubit.selectedTabIndex]),
                                   actions: [
                                    IconButton(onPressed: (){
                                     // Navigator.push(context, 'RegisterationPage' as Route<Object?>);
                                    }, icon: Icon(Icons.add))
                                   ],
                                  ),
                                  body: PageView(
                                    controller: cubit.pageController,
                                    onPageChanged: cubit.onChangeTabIndex,
                                    children: const [
                                      Text("home"),
                                      UserPage(),
                                      Text("services"),
                                    ],
                                  ),
                                  bottomNavigationBar: BottomNavigationBar(
                                    currentIndex: cubit.selectedTabIndex,
                                    onTap: cubit.onChangeTabIndex,
                                    unselectedItemColor: Colors.black,
                                    showSelectedLabels: true,
                                    unselectedLabelStyle:
                                        const TextStyle(fontSize: 20, color: Colors.amber),
                                    items: [
                                      BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
                                      BottomNavigationBarItem(
                                          icon: Icon(Icons.person), label: "users"),
                                      BottomNavigationBarItem(
                                          icon: Icon(Icons.category), label: "services"),
                                    ],
                                  ),
                                );
              },
            ),
          );
        }
      
    
  }
  /*import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newappflutter/features/auth/dashboard/controller/cubit/dashboard_cubit.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardCubit(),
      child: BlocBuilder<DashboardCubit, DashboardState>(
        builder: (context, state) {
          final cubit = context.read<DashboardCubit>();

          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.indigo,
            ),
            body: PageView(
              controller: cubit.pageController,
              onPageChanged: cubit.onChangeTabIndex,
              children: const [
                Text("home"),
                Text("users"),
                Text("services"),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.selectedTabIndex,
              onTap: cubit.onChangeTabIndex,
              unselectedItemColor: Colors.black,
              showSelectedLabels: true,
              unselectedLabelStyle: const TextStyle(fontSize: 20, color: Colors.amber),
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: "users"),
                BottomNavigationBarItem(icon: Icon(Icons.category), label: "services"),
              ],
            ),
          );
        },
      ),
    );
  }
}*/
