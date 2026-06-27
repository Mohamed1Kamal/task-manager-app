import 'package:flutter_app/core/networking/api_result.dart';
import 'package:flutter_app/feature/home/data/repo/project_repo.dart';
import 'package:flutter_app/feature/home/logic/project_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectCubit extends Cubit<ProjectState> {
  final ProjectRepo _projectRepo;
  ProjectCubit(this._projectRepo) : super(ProjectState.init());
  static ProjectCubit get(context) => BlocProvider.of(context);

  void getProjects(int userId) async {
    emit(ProjectState.loading());
    final response = await _projectRepo.getProjects(userId);
    response.when(
      success: (data) {
        emit(ProjectState.success(data));
      },
      failure: (error) {
        emit(
          ProjectState.error(error.apiErrorModel.message ?? "Error Message"),
        );
      },
    );
  }
}
