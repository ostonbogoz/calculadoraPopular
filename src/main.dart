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

import 'dart:io';

import 'package:calculadora_v2/limpaTelaTerminal.dart';
import 'package:calculadora_v2/calcular.dart';

void main(List<String> argumentos) 
{

  if(argumentos.isEmpty)
  {
    impressaoPadrao();

    print("---------------------------------------- ||| ERROR ||| ----------------------------------------");
    print("                                     !!! CAMPOS VAZIOS !!!");
    print("-----------------------------------------------------------------------------------------------");
    print("");
  }

  else if(argumentos.length != 3 && argumentos.length != 5)
  {
    impressaoPadrao();

    print("---------------------------------------- ||| ERROR ||| ----------------------------------------");
    print("                            !!! CAMPOS IMCOMPLETOS OU EXCEDIDOS !!!");
    print("-----------------------------------------------------------------------------------------------");
    print("");
  }

  else
  {
    if(argumentos.length == 3)
    {
      Calcular calcular = Calcular
      (
        operando1 : double.parse(argumentos[0]) , 
        operador1 : argumentos[1] , 
        operando2 : double.parse(argumentos[2]) , 
      );

      if(calcular.operador1 == "+")
      {
        impressaoPadrao();

        print("-------------------------------------- ||| RESULTADO ||| --------------------------------------");
        print("${calcular.operando1} ${calcular.operador1} ${calcular.operando2} = ${calcular.soma()}");
        print("-----------------------------------------------------------------------------------------------");
      }

      else if(calcular.operador1 == "-")
      {
        impressaoPadrao();

        print("-------------------------------------- ||| RESULTADO ||| --------------------------------------");
        print("${calcular.operando1} ${calcular.operador1} ${calcular.operando2} = ${calcular.subtracao()}");
        print("-----------------------------------------------------------------------------------------------");
      }

      else if(calcular.operador1 == "*")
      {
        impressaoPadrao();

        print("-------------------------------------- ||| RESULTADO ||| --------------------------------------");
        print("${calcular.operando1} ${calcular.operador1} ${calcular.operando2} = ${calcular.multiplicacao()}");
        print("-----------------------------------------------------------------------------------------------");
      }

      else if(calcular.operador1 == "/")
      {
        impressaoPadrao();

        print("-------------------------------------- ||| RESULTADO ||| --------------------------------------");
        print("${calcular.operando1} ${calcular.operador1} ${calcular.operando2} = ${calcular.divisao()}");
        print("-----------------------------------------------------------------------------------------------");
      }

      else if(calcular.operador1 == "!")
      {
        impressaoPadrao();

        print("-------------------------------------- ||| RESULTADO ||| --------------------------------------");
        print("${calcular.operando1} ${calcular.operador1} ${calcular.operando2} = ${calcular.resto()}");
        print("-----------------------------------------------------------------------------------------------");
      }

      else if(calcular.operador1 == "%")
      {
        impressaoPadrao();

        print("-------------------------------------- ||| RESULTADO ||| --------------------------------------");
        print("${calcular.operando1} ${calcular.operador1} ${calcular.operando2} = ${calcular.porcento2()}");
        print("-----------------------------------------------------------------------------------------------");
      }

      else if(calcular.operador1 == "@")
      {
        impressaoPadrao();

        print("-------------------------------------- ||| RESULTADO ||| --------------------------------------");
        print("${calcular.operando1} ${calcular.operador1} ${calcular.operando2} = ${calcular.percentual()}%");
        print("-----------------------------------------------------------------------------------------------");
      }

      else 
      {
        impressaoPadrao();

        print("---------------------------------------- ||| ERROR ||| ----------------------------------------");
        print("                                   !!! OPERADOR INCORRETO !!!");
        print("-----------------------------------------------------------------------------------------------");
        print("");
      }
    }

    else
    {
      Calcular calcular = Calcular
      (
        operando1 : double.parse(argumentos[0]) , 
        operador1 : argumentos[1] , 
        operando2 : double.parse(argumentos[2]) , 
        operador2 : argumentos[3] ,
        operando3 : double.parse(argumentos[4])
      );

      if(calcular.operador1 == "%" && calcular.operador2 == "*")
      {
        impressaoPadrao();

        print("-------------------------------------- ||| RESULTADO ||| --------------------------------------");
        print("${calcular.operando1} ${calcular.operador1} ${calcular.operando2} ${calcular.operador2} ${calcular.operando3} = ${calcular.jurosCompostos()} = ${calcular.jurosCompostosPercentual()}%");
        print("-----------------------------------------------------------------------------------------------");
      }

      else 
      {
        impressaoPadrao();

        print("---------------------------------------- ||| ERROR ||| ----------------------------------------");
        print("                                   !!! OPERADOR INCORRETO !!!");
        print("-----------------------------------------------------------------------------------------------");
        print("");
      }
    }
  }

}

void impressaoPadrao()
{
  limpaTelaTerminal();

  print("--------------------------------- ||| CALCULADORA POPULAR ||| ---------------------------------");
  print("CONTATO: ostonprata@gmail.com");
  print("CODIGOS FONTES: github.com/ostonprata");  
  print("REDES SOCIAIS: YouTube: Oston Prata | twitter.com/ostonprata | www.instagram.com/ostonprata");
  print("");
  print("COMANDOS:");
  print("calculadoraPopular.exe operando <espaco> operador <espaco> operando");
  print("calculadoraPopular.exe 10 <espaco> + <espaco> 20");
  print("calculadoraPopular.exe 10 + 20");
  print("");
  print("OPERADORES:");
  print("'+' => SOMA");
  print("'-' => SUBTRACAO");
  print("'*' => MULTIPLICACAO");
  print("'/' => DIVISAO");
  print("'!' => RESTO DA DIVISAO");
  print("'%' => PORCENTO => 20 % 500 = (100) <= Representa 20% dos 500");
  print("'@' => PERCENTAGEM => 100 @ 500 = (20%) <= Representa os 20 dos 500");
  print("");
  print("JUROS COMPOSTOS (JUROS SOBRE JUROS):");
  print("20 % 500 * 12 = (4458) <= Resultado do total de 20% sobre 500 em 12 vezes");
  print("20 % 500 * 12 = (4458) e (891%) <= Resultado da porcentagem total de 20% sobre 500 em 12 vezes");
  print("-----------------------------------------------------------------------------------------------");
  print("");  
}