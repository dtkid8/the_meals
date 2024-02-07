import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_meals/core/domain/model/meal.dart';
import 'package:the_meals/core/domain/usecase/get_detail.dart';
import 'package:the_meals/core/domain/usecase/is_favorite.dart';
import 'package:the_meals/module/detail/bloc/detail_cubit.dart';
import 'package:the_meals/module/detail/bloc/detail_favorite_cubit.dart';
import '../../../core/domain/model/detail.dart';
import '../../../core/domain/usecase/add_favorite.dart';
import '../../../core/domain/usecase/delete_favorite.dart';
import '../../../core/generic_state.dart';

class DetailScreen extends StatelessWidget {
  final String id;
  const DetailScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => DetailCubit(getDetail: context.read<GetDetail>()),
        ),
        BlocProvider(
          create: (context) => DetailFavoriteCubit(
              isFavorite: context.read<IsFavorite>(), addFavorite: context.read<AddFavorite>(), deleteFavorite: context.read<DeleteFavorite>()),
        ),
      ],
      child: DetailView(id: id),
    );
  }
}

class DetailView extends StatefulWidget {
  final String id;
  const DetailView({super.key, required this.id});

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  void initState() {
    super.initState();
    context.read<DetailCubit>().fetchDetail(widget.id);
    context.read<DetailFavoriteCubit>().checkFavorite(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Food"),
        centerTitle: true,
      ),
      body: BlocBuilder<DetailCubit, GenericState>(
        builder: (context, state) {
          if (state is GenericLoadedState) {
            final Detail meal = state.data;
            return SingleChildScrollView(
              key: const Key("DetailContainer"),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AspectRatio(
                    aspectRatio: 5 / 4,
                    child: CachedNetworkImage(
                      imageUrl: meal.image,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Center(
                    child: Text(
                      meal.name,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Category",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  meal.category,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            BlocBuilder<DetailFavoriteCubit, GenericState>(
                              builder: (context, state) {
                                final isFavorite = context.read<DetailFavoriteCubit>().isCheckFavorite;
                                return IconButton(
                                    key: const Key("DetailLikeButton"),
                                    onPressed: () {
                                      if (isFavorite) {
                                        context.read<DetailFavoriteCubit>().removeFavorite(meal.id);
                                      } else {
                                        context.read<DetailFavoriteCubit>().insertFavorite(Meal(
                                              id: meal.id,
                                              name: meal.name,
                                              image: meal.image,
                                            ));
                                      }
                                    },
                                    icon: isFavorite ? const Icon(Icons.favorite) : const Icon(Icons.favorite_border));
                              },
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "Instructions",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          meal.description,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          } else if (state is GenericLoadingState) {
            return const Center(
              key: Key("DetailLoading"),
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
