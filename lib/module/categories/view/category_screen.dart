import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_meals/core/domain/model/meal.dart';
import 'package:the_meals/core/domain/usecase/get_category_result.dart';
import 'package:the_meals/module/categories/bloc/category_cubit.dart';
import 'package:the_meals/module/categories/bloc/category_result_cubit.dart';
import 'package:the_meals/module/detail/view/detail_screen.dart';
import '../../../core/domain/model/category.dart';
import '../../../core/domain/usecase/get_categories.dart';
import '../../../core/generic_state.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => CategoryCubit(
            getCategories: context.read<GetCategories>(),
          ),
        ),
        BlocProvider(
          create: (context) => CategoryResultCubit(
            getCategoryResult: context.read<GetCategoryResult>(),
          ),
        ),
      ],
      child: const CategoryView(),
    );
  }
}

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  void initState() {
    super.initState();
    context.read<CategoryCubit>().fetchCategories();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CategoryCubit, GenericState>(
      listener: (context, state) {
        if (state is GenericLoadedState) {
          final List<Category> category = state.data;
          final query = category.first.category;
          context.read<CategoryResultCubit>().fetchCategoryResult(query);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Food"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            BlocBuilder<CategoryCubit, GenericState>(
              builder: (context, state) {
                if (state is GenericLoadedState) {
                  final List<Category> category = state.data;
                  return Column(
                    children: [
                      SizedBox(
                        key: const Key("CategoryButtonContainer"),
                        height: 60,
                        child: ListView.builder(
                          itemCount: category.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ElevatedButton(
                                onPressed: () {
                                  final query = category[index].category;
                                  context.read<CategoryResultCubit>().fetchCategoryResult(query);
                                },
                                child: Text(category[index].category),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  );
                } else if (state is GenericLoadingState) {
                  return const Center(
                    key: Key("CategoryLoading"),
                    child: CircularProgressIndicator(),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: BlocBuilder<CategoryResultCubit, GenericState>(
                builder: (context, state) {
                  if (state is GenericLoadedState) {
                    final List<Meal> meal = state.data;
                    return ListView.builder(
                      key: const Key("CategoryListContainer"),
                      shrinkWrap: true,
                      itemCount: meal.length,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailScreen(
                                      id: meal[index].id,
                                    ),
                                  ),
                                );
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
                            ));
                      },
                    );
                  } else if (state is GenericLoadingState) {
                    return const Center(
                      key: Key("CategoryListLoading"),
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
            ),
          ],
        ),
      ),
    );
  }
}
