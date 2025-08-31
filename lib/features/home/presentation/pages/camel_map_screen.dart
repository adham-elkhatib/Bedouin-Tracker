import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../Data/Model/Camel/camel.model.dart';
import '../../../../Data/Repositories/live_camel_tracking.repo.dart';
import '../../../../core/utils/SnackBar/snackbar.helper.dart';

class CamelMapScreen extends StatelessWidget {
  final Camel camel;

  const CamelMapScreen({Key? key, required this.camel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: LiveCamelTrackingRepo().read(camel.trackerBarCode),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                return GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: LatLng(
                      snapshot.data!.location.latitude,
                      snapshot.data!.location.longitude,
                    ),
                    zoom: 10,
                  ),
                  markers: {
                    Marker(
                      markerId: const MarkerId('camel_location'),
                      position: LatLng(
                        snapshot.data!.location.latitude,
                        snapshot.data!.location.longitude,
                      ),
                      infoWindow: const InfoWindow(title: 'Camel Location'),
                      icon: BitmapDescriptor.defaultMarker,
                    ),
                  },
                );
              } else {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  SnackbarHelper.showError(
                    context,
                    title:
                        "Location data is unavailable.\nPlease ensure the Camel Tracker is turned on and functioning properly.",
                  );
                  Navigator.pop(context);
                });

                // Return an empty container to avoid UI errors
                return Container();
              }
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
