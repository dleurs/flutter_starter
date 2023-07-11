import 'package:dart_extensions/dart_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter/features/fruit/domain/entities/fruit_entity.dart';
import 'package:flutter_starter/features/fruit/presentation/cubit/fruit_cubit.dart';
import 'package:flutter_starter/features/fruit/presentation/cubit/fruit_state.dart';
import 'package:get_it/get_it.dart';

class FruitPage extends StatelessWidget {
  const FruitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FruitCubit>(
      create: (context) => GetIt.instance.get<FruitCubit>()..getFruits(),
      child: BlocBuilder<FruitCubit, FruitState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const CircularProgressIndicator();
          } else if (state.errorMessage.isEmptyOrNull == false) {
            return Text("Un error occured : ${state.errorMessage}");
          }
          return ListView.builder(
              itemCount: state.fruits.length,
              itemBuilder: (context, index) {
                final fruit = state.fruits[index];
                return ListTile(
                  title: Text(fruit.name),
                  subtitle: Text(fruit.family),
                  trailing: fruit.genus == FruitGenus.citrus ? const Icon(Icons.restaurant_menu) : null,
                );
              });
        },
      ),
    );
  }
}
