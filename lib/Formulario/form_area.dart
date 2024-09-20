library minha_biblioteca_flutter;

import 'package:flutter/material.dart';

class FormArea extends StatelessWidget {
  String? label;
  String? dica;
  bool password = false;
  bool editavel = true;

  TextEditingController? controlador;
  FormFieldValidator<String>? validator;
  TextInputType? tipo;

  String? validarEntrada(String? texto) {
    if (texto == null || texto.isEmpty) {
      return "O Campo $label está vazio";
    }
    return null;
  }

  FormArea(
    this.label, {super.key,
    this.dica,
    this.password = false,
    this.controlador,
    this.validator,
    this.tipo = TextInputType.text,
    this.editavel = true,
  }) {
    validator ??= validarEntrada;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controlador,
      validator: validator,
      keyboardType: tipo,
      obscureText: password,
      enabled: editavel,
      style: const TextStyle(fontSize: 20),
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        hintText: dica,
      ),
    );
  }
}
