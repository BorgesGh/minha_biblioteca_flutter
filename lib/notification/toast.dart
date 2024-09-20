library minha_biblioteca_flutter;

import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class Toast {

  static void mensagemSucesso({
    String titulo = "Tudo certo!",
    String description = "A Operação foi concluída com sucesso!",
    BuildContext? context
  })
  {

    toastification.show(
      context: context,
      type: ToastificationType.success,
      style: ToastificationStyle.flat,

      borderSide: const BorderSide(
          color:  Colors.green
      ),

      autoCloseDuration: const Duration(seconds: 5),
      title: Text(titulo),
      description: Text(description),

      alignment: Alignment.topRight,
      direction: TextDirection.ltr,

      borderRadius: BorderRadius.circular(15),
      boxShadow: const [
        BoxShadow(
            color: Color(0x07000000),
            blurRadius: 14,
            spreadRadius: 0
        )
      ],
    );
  }

  static void mensagemErro({
    String titulo = "Ocorreu um erro...",
    String description = "Algo deu errado",
    BuildContext? context
  })
  {

    toastification.show(
      context: context,
      type: ToastificationType.error,
      style: ToastificationStyle.flat,

      borderSide: const BorderSide(
          color:  Colors.red
      ),

      autoCloseDuration: const Duration(seconds: 5),
      title: Text(titulo),
      description: Text(description),

      alignment: Alignment.topRight,
      direction: TextDirection.ltr,

      borderRadius: BorderRadius.circular(15),
      boxShadow: const [
        BoxShadow(
            color: Color(0x07000000),
            blurRadius: 14,
            spreadRadius: 0
        )
      ],
    );
  }



}