import '../../core/Providers/FB Firestore/fbfirestore_repo.dart';
import '../Model/Camel/camel.model.dart';

class CamelsRepo extends FirestoreRepo<Camel> {
  CamelsRepo()
      : super(
          'Camels',
        );

  @override
  Camel? toModel(Map<String, dynamic>? item) => Camel.fromMap(item ?? {});

  @override
  Map<String, dynamic>? fromModel(Camel? item) => item?.toMap() ?? {};
}
