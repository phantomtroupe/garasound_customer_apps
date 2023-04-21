import 'package:either_dart/either.dart';
import 'package:garasound_customer_apps/features/home_screen/data/repository/track_repository.dart';
import 'package:garasound_customer_apps/features/home_screen/domain/model/track_model.dart';
import 'package:garasound_customer_apps/features/home_screen/domain/translator/track_translator.dart';

abstract class TrackUseCase {
  Future<Either<String, List<TrackModel>>> getListTrack();
}

class TrackUseCaseImpl implements TrackUseCase {
  TrackRepository repository;

  TrackUseCaseImpl(this.repository);

  @override
  Future<Either<String, List<TrackModel>>> getListTrack() async {
    return repository.getListTrack().mapRight(
            (right) => right.map((e) => TrackTranslator.toModel(e)).toList());
  }
}
