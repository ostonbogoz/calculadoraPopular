/*
  Oston Prata , Brasília 05 De Maior De 2020.

  CONTATO: 
  ostonprata@gmail.com

  CÓDIGOS FONTES:
  https://github.com/ostonprata

  REDES SOCIAIS:
  https://www.youtube.com/channel/UCHbB7TRl0WNytk9Xx1jxXOQ
  https://twitter.com/ostonprata
  https://www.instagram.com/ostonprata/

  EXECUÇÃO:
  dart calculadoraPopular/bin/main.dart
  calculadoraPopular.exe
*/

class Calcular
{
  Calcular({this.operando1 , this.operador1 , this.operando2 , this.operador2 , this.operando3});

  double operando1;
  String operador1;
  double operando2;
  String operador2;
  double operando3;
  double total;

  double soma() => operando1 + operando2;

  double subtracao() => operando1 - operando2;

  double multiplicacao() => operando1 * operando2;

  double divisao() => operando1 / operando2;

  double resto() => operando1 % operando2;

  double porcento1() => operando2 * (operando1 / 100);

  double porcento2() => (operando1 * operando2) / 100;

  double percentual() => (operando1 / operando2) * 100;

  double jurosCompostos()
  {
    double resultado;
    total = operando2;

    for(int contador = 0 ; contador < operando3 ; contador++)
    {
      resultado = total * (operando1 / 100);
      total = resultado + total;
    }

    return total;
  }

  double jurosCompostosPercentual() => (total / operando2) * 100;

  double imc() => operando1 / (operando2 * operando2);
}