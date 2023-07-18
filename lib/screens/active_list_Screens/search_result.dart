import 'package:active_list_bloc/bloc/activeblocstatus/activeblocstatus_bloc.dart';
import 'package:active_list_bloc/screens/active_list_Screens/list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Search Result'),
        SizedBox(
          height: 10,
        ),
        Expanded(child:
            BlocBuilder<ActiveblocstatusBloc, ActiveblocstatusState>(
                builder: (context, state) {
          return ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              final active = state.searchReslut[index];
              return ListTile(
                  leading: Text(active.id.toString()),
                  title: Text(active.name ?? "No Name"),
                  subtitle: Text(active.email ?? "No Email"),
                  //trailing: Text(active.status ?? ""),
                  trailing: active.status == 'active'
                      ? const CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 7,
                        )
                      : const CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 7,
                        ));
            },
            separatorBuilder: (context, inedex) => const Divider(),
            itemCount: state.searchReslut.length,
          );
        }))
      ],
    );
  }
}
