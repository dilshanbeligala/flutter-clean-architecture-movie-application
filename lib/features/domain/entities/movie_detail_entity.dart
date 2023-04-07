import 'package:equatable/equatable.dart';

class MovieDetailsEntity extends Equatable {
  
  final String title;
   final String year;
   
   final String released;
   final String runtime;
   
   final String director;
   
   
   final String plot;
   
  
  
   final String poster;
  
   
  final  String imdbId;
  
   const MovieDetailsEntity({
         this.title,
         this.year,
        
         this.released,
         this.runtime,
        
         this.director,
        
       
         this.plot,
        
        
         this.poster,
       
         this.imdbId,
        
    });

      @override
  List<Object?> get props => [title,year,released,runtime,director,plot , poster, imdbId];

  @override
  bool get stringify => true;
}
