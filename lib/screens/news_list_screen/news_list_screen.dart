import 'package:active_list_bloc/bloc/news_list/news_list_bloc.dart';
import 'package:active_list_bloc/model/news_respo/news_respo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsListScreen extends StatelessWidget {
  const NewsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsListBloc, NewsListState>(builder: (context, state) {
      if (state.isLoading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else if (state.isError) {
        return const Center(
          child: Text('Error while getting data'),
        );
      } else if (state.newsList.isEmpty) {
        return const Center(
          child: Text('List is empty'),
        );
      } else {
        return ListView.separated(
            separatorBuilder: (context, index) => Divider(),
            itemCount: state.newsList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final news = state.newsList[index];
              return NewsTile(
                title: news.title ?? "",
                description: news.description ?? "",
                urlToImage: news.urlToImage ?? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSojwMMYZgtiupM4Vzdb5iBeE4b0Mamf3AgrxQJR19Xa4oIWV5xun9a02Ggyh4bZAurP_c&usqp=CAU",
              );
            });
      }
    });
  }
}

class NewsTile extends StatelessWidget {
  String title;
  String urlToImage;
  String description;
     NewsTile({
    Key? key,
    required this.title,
    required this.description,
    required this.urlToImage
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      child: ListTile(
        //onTap: () async {
        // await canLaunch(article.url!)
        //     ? await launch(
        //         article.url!,
        //         forceSafariVC: false,
        //         forceWebView: false,
        //       )
        //     : throw 'Could not launch ${article.url}';
        //},
        title:Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
        subtitle: Text(
          description,
          style: const TextStyle(
              color: Colors.black, fontSize: 10, fontWeight: FontWeight.normal),
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
        ),
        leading:
             Container(
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(urlToImage),
                  ),
                ),
              )
            
      ),
    );
  }
}

