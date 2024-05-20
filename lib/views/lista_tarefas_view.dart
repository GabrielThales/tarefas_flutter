import 'dart:core';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tarefas_flutter/views/lista_tarefa_widget.dart';

import '../models/tarefa.dart';
import '../providers/tarefa_provider.dart';
import '../routes.dart';
import '../tarefa_status.dart';

class ListaTarefasView extends StatefulWidget {
  @override
  State<ListaTarefasView> createState() => _ListaTarefasView();
}

class _ListaTarefasView extends State<ListaTarefasView> {
  @override
  Widget build(BuildContext context) {
    final tarefaProvider = context.watch<TarefaProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lista de Tarefas',
        ),
        leading: IconButton(onPressed: () {
          Navigator.pushNamed(context, Routes.FORM_TAREFA_VIEW);
          //tarefaProvider.addTarefa(Tarefa(4,'Estudar Autenticação', '20/05/2024', 'Infnet', "teste da descrição do item", TarefasStatus.EM_ANDAMENTO));
        }, icon: Icon(Icons.add),),

      ),
      body: ListaTarefaWidget(),
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
