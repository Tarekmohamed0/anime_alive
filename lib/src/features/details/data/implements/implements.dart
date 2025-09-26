
    import '../sources/sources.dart';
    import '../../domain/repositories/repositories.dart';
    
    class DetailsRepositoryImp implements DetailsRepository{

        final DetailsRemoteDataSource remoteDataSource;
        DetailsRepositoryImp({required this.remoteDataSource});
      
        // ... example ...
        //
        // Future<User> getUser(String userId) async {
        //     return remoteDataSource.getUser(userId);
        //   }
        // ...
    }
    