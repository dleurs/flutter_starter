// Fruit feature
import './features/fruit/data/mapper/fruit_mapper_test.dart' as fruit_mapper_test;
import './features/fruit/data/repository/fruit_repository_test.dart' as fruit_repository_test;
import './features/fruit/domain/usecases/fruit_usecase_test.dart' as fruit_usecase_test;
import './features/fruit/presentation/cubit/fruit_cubit_test.dart' as fruit_cubit_test;

void main() {
  // Fruit feature
  fruit_mapper_test.main();
  fruit_repository_test.main();
  fruit_usecase_test.main();
  fruit_cubit_test.main();
}
