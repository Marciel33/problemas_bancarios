import 'dart:io';

void main() {
  double saldo = 0.0;

  print('Bem-vindo ao Banco XYZ!');
  
  while (true) {
    stdout.write('Digite o valor do depósito (ou 0 para sair): ');

    String? entrada = stdin.readLineSync();

    if (entrada == null) {
      print('Entrada inválida. Encerrando o programa.');
      break;
    }

    var valorDeposito = double.tryParse(entrada);

    if (valorDeposito == null) {
      print('Valor inválido. Digite um valor numérico.');
    } else if (valorDeposito == 0) {
      print('Encerrando o programa.');
      break; // Encerra o programa se o usuário digitar 0
    } else if (valorDeposito <= 0) {
      print('Valor inválido. Digite um valor maior que zero.');
    } else {
      print('Depósito realizado com sucesso!');
      print('Saldo atual: R\$$valorDeposito');
      saldo += valorDeposito;
      print('Saldo atual: R\$$saldo');
    }
  }
  
  print('Obrigado por usar o Banco XYZ!');
}
