import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/models/books_model/books_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BooksModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BooksModel>>> fetchFeaturedBooks();
}
