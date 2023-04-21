import 'package:either_dart/either.dart';
import 'package:garasound_customer_apps/features/home_screen/data/repository/creator_repository.dart';
import 'package:garasound_customer_apps/features/home_screen/domain/model/creator_model.dart';
import 'package:garasound_customer_apps/features/home_screen/domain/translator/creator_translator.dart';

abstract class CreatorUseCase {
  Future<Either<String, List<CreatorModel>>> getListCreator();
  Future<Either<String, CreatorModel>> getCreatorById(String creatorId);
}

class CreatorUseCaseImpl implements CreatorUseCase {
  CreatorRepository repository;

  CreatorUseCaseImpl(this.repository);

  @override
  Future<Either<String, List<CreatorModel>>> getListCreator() async {
    return repository.getListCreator().mapRight(
        (right) => right.map((e) => CreatorTranslator.toModel(e)).toList());
  }

  @override
  Future<Either<String, CreatorModel>> getCreatorById(String creatorId) async {
    return repository.getCreatorById(creatorId).mapRight((right) => CreatorTranslator.toModel(right));
  }
}
