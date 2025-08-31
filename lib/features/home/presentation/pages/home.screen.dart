//t2 Core Packages Imports
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../Data/Model/Camel/camel.model.dart';
import '../../../../Data/Model/User/user.model.dart' as User;
import '../../../../Data/Repositories/camel.repo.dart';
import '../../../../Data/Repositories/user.repo.dart';
import '../../../../core/Providers/src/condition_model.dart';
import '../../../../core/Services/Auth/auth.service.dart';
import '../../../../core/Services/Auth/src/Providers/auth_provider.dart';
import '../../../../core/widgets/section_placeholder.dart';
import '../../../../core/widgets/section_title.dart';
import '../../../profile/presentation/pages/profile.screen.dart';
import 'add_camel_screen.dart';
import 'camel_details_screen.dart';

//t2 Dependencies Imports
//t3 Services
//t3 Models
//t1 Exports
class HomeScreen extends StatefulWidget {
  //SECTION - Widget Arguments
  //!SECTION
  //
  const HomeScreen({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //
  //SECTION - State Variables
  //t2 --Controllers
  //t2 --Controllers
  //
  //t2 --State
  User.User? appUser;
  bool isLoading = true;
  String? deviceId;
  String? userId;

  //t2 --State
  //
  //t2 --Constants
  //t2 --Constants
  //!SECTION
  @override
  void initState() {
    super.initState();
    // SECTION - State Variables Initializations & Listeners
    userId = AuthService(
      authProvider: FirebaseAuthProvider(firebaseAuth: FirebaseAuth.instance),
    ).getCurrentUserId();
    if (userId != null) {
      AppUserRepo().readSingle(userId!).then((value) {
        setState(() {
          appUser = value;
          isLoading = false;
        });
      });
    }
    // END SECTION
  }

  //SECTION - Stateless functions
  //!SECTION

  //SECTION - Action Callbacks
  //!SECTION
  List<Camel?> camels = [];

  void _navigateToAddCamel() async {
    final newCamel = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AddCamelScreen()),
    );
    if (newCamel != null) {
      await CamelsRepo().createSingle(newCamel, itemId: newCamel.id);
      camels.add(newCamel);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    //SECTION - Build Setup
    //t2 -Values
    //double w = MediaQuery.of(context).size.width;
    //double h = MediaQuery.of(context).size.height;
    //t2 -Values
    //
    //t2 -Widgets
    //t2 -Widgets
    //!SECTION
    //SECTION - Build Return
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome back 👋'),
          actions: [
            IconButton(
              icon: Icon(
                Icons.person_2_outlined,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                size: 24,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const ProfileScreen(),
                  ),
                );
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SectionTitle(
                title: "All Camels",
                onPressed: _navigateToAddCamel,
              ),
              FutureBuilder(
                  future: CamelsRepo().readAllWhere([
                    QueryCondition.equals(field: "userId", value: userId),
                  ]),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                        camels = snapshot.data!;

                        return Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: ListView.builder(
                                  itemCount: camels.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8.0),
                                      child: Card(
                                        elevation: 4,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        color: Colors.orange.shade100,
                                        child: ListTile(
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 16, vertical: 8),
                                          title: Text(
                                            camels[index]!.name,
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.brown.shade800,
                                            ),
                                          ),
                                          subtitle: Text(
                                              'Tracker ID: ${camels[index]!.trackerBarCode}'),
                                          leading: CircleAvatar(
                                            backgroundColor:
                                                Colors.brown.shade300,
                                            child: const Icon(Icons.pets,
                                                color: Colors.white),
                                          ),
                                          trailing: Icon(
                                              Icons.arrow_forward_ios,
                                              color: Colors.brown.shade600),
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    CamelDetailsScreen(
                                                        camel: camels[index]!),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        );
                      } else {
                        return const Center(
                            child: SectionPlaceholder(
                          title: 'No camels are added yet!',
                        ));
                      }
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }),
            ],
          ),
        ));
    //!SECTION
  }

  @override
  void dispose() {
    //SECTION - Disposable variables
    //!SECTION
    super.dispose();
  }
}
