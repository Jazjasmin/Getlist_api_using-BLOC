
import 'package:active_list_bloc/activeblocstatus/activeblocstatus_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ActiveblocstatusBloc>(context).add(const Inizialize());
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[300],
        title: const Text("Get Json user Data"),
      ),
      body: SafeArea(
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
              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  final active = state.activestatuslist[index];
                  if(active.status =='active') {
                    return ListTile(
                      leading: Text(active.id.toString()),
                      title: Text(active.name ?? ""),
                      subtitle: Text(active.email ?? ""),
                      trailing: Text(active.status ?? ""),
                      /*trailing: active.status == 'active' ?
                  CircleAvatar(backgroundColor: Colors.green,radius: 7,):
                  CircleAvatar(backgroundColor: Colors.red,radius: 7,)*/
                    );
                  }else{
                    return SizedBox(width: 0,);
                  }
          
                  

                },
                //separatorBuilder: (context, inedex) => const Divider(),
                itemCount: state.activestatuslist.length,
              );
            }
          },
        ),
      ),
    );
  }
}
