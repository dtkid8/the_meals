import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_meals/core/domain/usecase/get_favorites.dart';
import 'package:the_meals/module/favorite/bloc/favorite_cubit.dart';

import '../../../core/domain/model/meal.dart';
import '../../../core/generic_state.dart';
import '../../detail/view/detail_screen.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FavoriteCubit(getFavorites: context.read<GetFavorites>()),
      child: const FavoriteView(),
    );
  }
}

class FavoriteView extends StatefulWidget {
  const FavoriteView({super.key});

  @override
  State<FavoriteView> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  @override
  void initState() {
    super.initState();
    context.read<FavoriteCubit>().fetchFavorites();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite"),
        centerTitle: true,
      ),
      body: BlocBuilder<FavoriteCubit, GenericState>(
        builder: (context, state) {
          if (state is GenericLoadedState) {
            final List<Meal> meal = state.data;
            return meal.isEmpty
                ? const Center(
                    key: Key("FavoriteListEmpty"),
                    child: Text("Your Favorite Is Empty"),
                  )
                : ListView.builder(
                    key: const Key("FavoriteListContainer"),
                    shrinkWrap: true,
                    itemCount: meal.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: GestureDetector(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                  id: meal[index].id,
                                ),
                              ),
                            );
                            if (mounted) context.read<FavoriteCubit>().fetchFavorites();
                          },
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Column(
                              children: [
                                AspectRatio(
                                  aspectRatio: 5 / 4,
                                  child: CachedNetworkImage(
                                    imageUrl: meal[index].image,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    meal[index].name,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
          } else if (state is GenericLoadingState) {
            return const Center(
              key: Key("FavoriteLoading"),
              child: CircularProgressIndicator(),
            );
          } else if (state is GenericErrorState) {
            return Center(
              child: Text(state.message),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
