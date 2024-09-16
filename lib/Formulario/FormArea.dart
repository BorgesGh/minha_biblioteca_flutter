library minha_biblioteca_flutter;

import 'package:flutter/cupertino.dart';
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
    this.label, {
    this.dica,
    this.password = false,
    this.controlador,
    this.validator,
    this.tipo = TextInputType.text,
    this.editavel = true,
  }) {
    if (this.validator == null) {
      this.validator = validarEntrada;
    }
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
        labelText: this.label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        hintText: dica,
      ),
    );
  }
}
