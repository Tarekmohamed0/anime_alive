
    import '../sources/sources.dart';
    import '../../domain/repositories/repositories.dart';
    
    class Upgrade_planeRepositoryImp implements Upgrade_planeRepository{

        final Upgrade_planeRemoteDataSource remoteDataSource;
        Upgrade_planeRepositoryImp({required this.remoteDataSource});
      
        // ... example ...
        //
        // Future<User> getUser(String userId) async {
        //     return remoteDataSource.getUser(userId);
        //   }
        // ...
    }
    