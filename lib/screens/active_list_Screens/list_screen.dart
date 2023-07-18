import 'package:active_list_bloc/bloc/activeblocstatus/activeblocstatus_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ActiveblocstatusBloc>(context).add(const Inizialize());
    });
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(
        height: 10,
      ),
      Expanded(
        child: BlocBuilder<ActiveblocstatusBloc, ActiveblocstatusState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.isError) {
              return const Center(
                child: Text('Error while getting data'),
              );
            } else if (state.activestatuslist.isEmpty) {
              return const Center(
                child: Text('List is empty'),
              );
            } else {
              return ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  final active = state.activestatuslist[index];
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
                itemCount: state.activestatuslist.length,
              );
            }
          },
        ),
      ),
    ]);
  }
}

class SearchTextTitle extends StatelessWidget {
  final String title;

  const SearchTextTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 22,
        color: Colors.black,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
