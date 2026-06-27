import 'package:flutter/material.dart';
import 'package:flutter_app/core/helper/spacing.dart';
import 'package:flutter_app/core/routing/app_router.dart';
import 'package:flutter_app/core/theming/styles.dart';
import 'package:flutter_app/feature/home/data/model/project_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectItem extends StatelessWidget {
  final ProjectModel project;
  const ProjectItem({super.key, required this.project});

  Color getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case "done":
        return Colors.green;
      case "in progress":
        return Colors.orange;
      case "pending":
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Title + Status
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  project.title,
                  style: AppTextStyles.font16WhiteSemiBold.copyWith(
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: getStatusColor(project.status).withOpacity(0.15),

                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  project.status,
                  style: TextStyle(
                    color: getStatusColor(project.status),
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          verticalSpace(8),
          Row(
            children: [
              Expanded(
                child: Text(
                  project.description,
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: Colors.grey[600],
                    fontSize: 14,
                  ),
                  maxLines: 2,
                ),
              ),

              IconButton(
                icon: Icon(Icons.arrow_forward_ios, size: 16),
                onPressed: () {
                  AppRouter.router.push(
                    AppRouter.kViewProjectDetails,
                    extra: {
                      "projectId": project.id,
                      "projectTitle": project.title,
                    },
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
