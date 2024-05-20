import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tarefas_flutter/tarefa_status.dart';
import '../models/tarefa.dart';

class TarefaProvider extends ChangeNotifier {

  List<Tarefa>? listaDeTarefas = [
    Tarefa(1,'Estudar Flutter', '20/05/2024', 'Infnet', "teste da descrição do item", TarefasStatus.EM_ANDAMENTO),
    Tarefa(2,'Estudar Dart', '31/05/2024', 'Infnet', "teste da descrição do item", TarefasStatus.EM_ANDAMENTO),
    Tarefa(3,'Estudar Firebase', '20/05/2024', 'Infnet', "teste da descrição do item", TarefasStatus.EM_ANDAMENTO),
  ];

  Tarefa? ultimaTarefaExcluida;

  List<Tarefa> listarTarefas(){
    notifyListeners();
      return listaDeTarefas!;
  }

  void addTarefa(Tarefa tarefa){
    listaDeTarefas?.add(tarefa);
    notifyListeners();
  }

  void removerTarefa(Tarefa tarefa){
    ultimaTarefaExcluida = tarefa;
    listaDeTarefas?.remove(tarefa);
    notifyListeners();
  }

  void restaurarUltimaTarefa(){
    if(ultimaTarefaExcluida != null){
      listaDeTarefas?.add(ultimaTarefaExcluida!);
      notifyListeners();
    }
  }

  void editarTarefa(Tarefa tarefaAtualizada){
    listaDeTarefas?.forEach((element) {
      if(element.id == tarefaAtualizada.id){
        element.nome = tarefaAtualizada.nome;
        element.dateTime = tarefaAtualizada.dateTime;
        element.local = tarefaAtualizada.local;
        element.descricao = tarefaAtualizada.descricao;
        element.status = tarefaAtualizada.status;
      }
    });
    notifyListeners();
  }

}