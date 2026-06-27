import 'package:flutter/material.dart';
import 'package:flutter_app/core/helper/spacing.dart';
import 'package:flutter_app/core/routing/app_router.dart';
import 'package:flutter_app/core/widgets/app_bar_widget.dart';
import 'package:flutter_app/feature/home/data/model/project_model.dart';
import 'package:flutter_app/feature/home/logic/project_cubit.dart';
import 'package:flutter_app/feature/home/logic/project_state.dart';
import 'package:flutter_app/feature/home/ui/widgets/project_item.dart';
import 'package:flutter_app/feature/home/ui/widgets/project_item_shimmer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.97),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(15),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: AppBarWidget(
                title: 'Projects',
                iconPath: "assets/svgs/setting_icon.svg",
                onIconPressed: () {
                  AppRouter.router.push(AppRouter.kViewProfile);
                },
              ),
            ),

            verticalSpace(20),

            Expanded(
              child: BlocBuilder<ProjectCubit, ProjectState>(
                buildWhen: (previous, current) {
                  return current.maybeWhen(
                    loading: () => true,
                    success: (_) => true,
                    error: (_) => true,
                    orElse: () => false,
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    loading: () => setupLoading(),

                    success: (projects) => setupSuccess(projects),

                    error: (error) => setupError(error),

                    orElse: () => const SizedBox.shrink(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget setupLoading() {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      itemCount: 6,
      itemBuilder: (context, index) => const ProjectItemShimmer(),
    );
  }

  Widget setupSuccess(List<ProjectModel> projects) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      itemCount: projects.length,
      itemBuilder: (context, index) => ProjectItem(project: projects[index]),
    );
  } 

  Widget setupError(String error) {
    return Center(child: Text(error));
  }
}
