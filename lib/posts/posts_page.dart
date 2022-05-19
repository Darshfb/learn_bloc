import 'package:bloc_intro/posts/bloc/post_event.dart';
import 'package:bloc_intro/posts/posts_list.dart';
import 'package:http/http.dart' as http;
import 'package:bloc_intro/posts/bloc/bloc_post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
        create: (_) => PostBloc(httpClient: http.Client())..add(PostFetched()),
      child: PostsList(),),
    );
  }
}
