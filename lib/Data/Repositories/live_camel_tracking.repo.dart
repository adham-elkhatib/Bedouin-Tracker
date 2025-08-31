import '../../core/Providers/FB RTDB/fbrtdb_repo.dart';
import '../Model/Camel/live_camel_tracking.model.dart';

class LiveCamelTrackingRepo extends RTDBRepo<LiveCamelTracking> {
  LiveCamelTrackingRepo()
      : super(
          path: 'camels',
          discardKey: true,
        );

  @override
  LiveCamelTracking? toModel(Object? data) {
    return LiveCamelTracking.fromMap((data as Map<Object?, Object?>?)
            ?.map((key, value) => MapEntry(key.toString(), value)) ??
        {});
  }

  @override
  Map<String, dynamic>? fromModel(LiveCamelTracking? item) =>
      item?.toMap() ?? {};
}
