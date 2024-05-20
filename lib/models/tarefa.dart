import 'dart:core';
import 'dart:ffi';
import 'dart:math';


class Tarefa {
  int id;
  String nome;
  String dateTime;
  String local;
  String descricao;
  String status;

  Tarefa(this.id, this.nome, this.dateTime, this.local,this.descricao, this.status);
  //adicionar localização
}