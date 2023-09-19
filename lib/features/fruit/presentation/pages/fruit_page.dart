import 'package:dart_extensions/dart_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../domain/entities/fruit_entity.dart';
import '../cubit/fruit_cubit.dart';
import '../cubit/fruit_state.dart';

class FruitPage extends StatelessWidget {
  const FruitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FruitCubit>(
      create: (BuildContext context) =>
          GetIt.instance.get<FruitCubit>()..getFruits(),
      child: BlocBuilder<FruitCubit, FruitState>(
        builder: (BuildContext context, FruitState state) {
          if (state.isLoading) {
            return const CircularProgressIndicator();
          } else if (!state.errorMessage.isEmptyOrNull) {
            return Text('Un error occured : ${state.errorMessage}');
          }
          return ListView.builder(
            itemCount: state.fruits.length,
            itemBuilder: (BuildContext context, int index) {
              final FruitEntity fruit = state.fruits[index];
              return ListTile(
                title: Text(fruit.name),
                subtitle: Text(fruit.family),
                trailing: fruit.genus == FruitGenus.citrus
                    ? const Icon(Icons.restaurant_menu)
                    : null,
              );
            },
          );
        },
      ),
    );
  }
}
