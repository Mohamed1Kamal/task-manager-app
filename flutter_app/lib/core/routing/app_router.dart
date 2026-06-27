import 'package:flutter_app/core/di/dependency_injection.dart';
import 'package:flutter_app/core/helper/constants.dart';
import 'package:flutter_app/feature/home/logic/project_cubit.dart';
import 'package:flutter_app/feature/home/ui/home_view.dart';
import 'package:flutter_app/feature/login/logic/login_cubit.dart';
import 'package:flutter_app/feature/login/ui/login_view.dart';
import 'package:flutter_app/feature/new_task/logic/add_task_cubit.dart';
import 'package:flutter_app/feature/project_details/logic/task_cubit.dart';
import 'package:flutter_app/feature/project_details/ui/project_details_view.dart';
import 'package:flutter_app/feature/profile/ui/profile_view.dart';
import 'package:flutter_app/feature/new_task/ui/add_task_view.dart';
import 'package:flutter_app/feature/register/logic/cubit/cubit.dart';
import 'package:flutter_app/feature/register/ui/register_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kViewLogin = '/loginView';
  static const kViewRegister = '/registerView';
  static const kViewHome = '/homeView';
  static const kViewProjectDetails = '/projectDetailsView';
  static const kViewAddTask = '/addTaskView';
  static const kViewProfile = '/profileView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          if (isLoggedInUser) {
            return BlocProvider(
              create: (context) => ProjectCubit(getIt())..getProjects(1),
              child: const HomeView(),
            );
          }

          return BlocProvider(
            create: (context) => LoginCubit(getIt()),
            child: const LoginView(),
          );
        },
      ),
      GoRoute(
        path: kViewHome,
        builder: (context, state) => BlocProvider(
          create: (context) => ProjectCubit(getIt())..getProjects(1),
          child: const HomeView(),
        ),
      ),
      GoRoute(
        path: kViewProjectDetails,
        builder: (context, state) {
          final data = state.extra as Map<String, dynamic>;

          return BlocProvider(
            create: (context) =>
                TaskCubit(getIt())
                  ..getTasksByProject(int.parse(data['projectId'].toString())),
            child: ProjectDetailsView(
              projectTitle: data['projectTitle'] as String,
              projectId: int.parse(data['projectId'].toString()),
            ),
          );
        },
      ),
      GoRoute(
        path: kViewAddTask,
        builder: (context, state) {
          final data = state.extra as Map<String, dynamic>;
          return BlocProvider(
            create: (context) => AddTaskCubit(getIt()),
            child: AddTaskView(
              projectTitle: data['projectTitle'] as String,
              projectId: int.parse(data['projectId'].toString()),
            ),
          );
        },
      ),
      GoRoute(
        path: kViewProfile,
        builder: (context, state) => const ProfileView(),
      ),

       GoRoute(
        path: kViewRegister,
        builder: (context, state) => BlocProvider(
          create: (context) => RegisterCubit(getIt()),
          child: const RegisterView(),
        ),
      ),
    ],
  );
}
