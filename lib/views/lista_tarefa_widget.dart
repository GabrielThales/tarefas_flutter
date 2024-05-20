import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tarefas_flutter/views/tarefa_widget.dart';

import '../models/tarefa.dart';
import '../providers/tarefa_provider.dart';

class ListaTarefaWidget extends StatefulWidget {
  @override
  State<ListaTarefaWidget> createState() => _ListaTarefaWidget();
}

class _ListaTarefaWidget  extends State<ListaTarefaWidget>{
  @override
  Widget build(BuildContext context) {
    final tarefaProvider = context.watch<TarefaProvider>();
    final List<Tarefa>? listaTarefas = tarefaProvider.listaDeTarefas;
    return ListView.builder(
      itemCount: listaTarefas?.length,
      itemBuilder: (context, index){
        Tarefa tarefa = listaTarefas![index];
        return TarefaWidget(tarefa);
      },
    );
    /*return Padding(
      padding: EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              title: const Text(
                'Lista de Tarefas',
              ),
              leading: IconButton(onPressed: () {  }, icon: Icon(Icons.add),),

            ),
            body: Container(
              color: Colors.black12,
              child: ListView(
                children: [
                  TarefaWidget(Tarefa('Estudar Flutter', '20/12', 'Infnet')),
                  TarefaWidget(Tarefa('Estudar Flutter2', '20/12', 'Infnet')),
                  TarefaWidget(Tarefa('Estudar Flutter3', '20/12', 'Infnet')),
                  TarefaWidget(Tarefa('Estudar Flutter4', '20/12', 'Infnet')),
                  TarefaWidget(Tarefa('Estudar Flutter', '20/12', 'Infnet')),
                  TarefaWidget(Tarefa('Estudar Flutter', '20/12', 'Infnet')),
                  TarefaWidget(Tarefa('Estudar Flutter', '20/12', 'Infnet')),
                  TarefaWidget(Tarefa('Estudar Flutter', '20/12', 'Infnet')),
                  TarefaWidget(Tarefa('Estudar Flutter', '20/12', 'Infnet')),
                  TarefaWidget(Tarefa('Estudar Flutter', '20/12', 'Infnet'))
                ],
              ),
            ),
          )
        ],
      ),
    );*/
  }
}
