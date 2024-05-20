import 'package:flutter/material.dart';
import 'package:tarefas_flutter/providers/tarefa_provider.dart';
import 'package:tarefas_flutter/routes.dart';
import 'package:tarefas_flutter/views/form_tarefa_view.dart';
import 'package:tarefas_flutter/views/lista_tarefas_view.dart';
import 'package:tarefas_flutter/views/tarefa_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ListenableProvider(
      /*providers: [
        Provider<TarefaProvider>(create: (context) => TarefaProvider())
      ],*/
      create: (BuildContext context) => TarefaProvider(),
      child: MaterialApp(
        title: 'Lista de Tarefas',
        theme: ThemeData.dark(),
        home: ListaTarefasView(),
        routes: {Routes.TAREFA_VIEW : (context) => TarefaView(),
        Routes.FORM_TAREFA_VIEW : (context) => FormTarefaView()}
      ),
    );
  }
}