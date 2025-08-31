import '../../core/Providers/FB Firestore/fbfirestore_repo.dart';
import '../Model/User/user.model.dart';

class AppUserRepo extends FirestoreRepo<User> {
  AppUserRepo()
      : super(
          'Users',
        );

  @override
  User? toModel(Map<String, dynamic>? item) => User.fromMap(item ?? {});

  @override
  Map<String, dynamic>? fromModel(User? item) => item?.toMap() ?? {};
}
