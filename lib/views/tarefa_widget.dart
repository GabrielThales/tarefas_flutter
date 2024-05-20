import 'package:flutter/material.dart';
import 'package:tarefas_flutter/routes.dart';
import 'package:tarefas_flutter/tarefa_status.dart';
import '../models/tarefa.dart';

class TarefaWidget extends StatefulWidget {
  final Tarefa tarefa;

  const TarefaWidget(this.tarefa, {super.key}) : super();

  @override
  State<TarefaWidget> createState() => _TarefaWidget();

}

class _TarefaWidget extends State<TarefaWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: (widget.tarefa.status == TarefasStatus.EM_ANDAMENTO) ? const Icon(Icons.task) : const Icon(Icons.task_alt),
      title: Text(
        widget.tarefa.nome,
        style: TextStyle(fontSize: 22, overflow: TextOverflow.clip),
      ),
      subtitle: Text(
        widget.tarefa.local,
        style: TextStyle(fontSize: 16, overflow: TextOverflow.clip),
      ),
      trailing: Text(
        widget.tarefa.dateTime,
        style: TextStyle(fontSize: 14, overflow: TextOverflow.clip),
      ),
      onTap: () {
        Navigator.pushNamed(context, Routes.TAREFA_VIEW, arguments: widget.tarefa);
      },
    );
/*    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 70,
              child: Column(
                children: [
                  Text(widget.tarefa.dateTime, style: TextStyle(fontSize: 20, overflow: TextOverflow.clip),),
                ],
              ),
            ),
            Container(
              width: 150,
              child: Column(
                children: [
                  Text(widget.tarefa.nome, style: TextStyle(fontSize: 18, overflow: TextOverflow.ellipsis),),
                  Text(widget.tarefa.local)
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(onPressed: () => (), icon: const Icon(Icons.edit)),
                      IconButton(onPressed: () => (), icon: const Icon(Icons.delete_forever)),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );*/
  }
}
