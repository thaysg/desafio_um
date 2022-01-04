/*
void main() {

 Detalhe sobre a String
  A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

 Baseado no array acima monte um relatório onde:
 - Apresente os pacientes com mais de 20 anos e print o nome deles
- Apresente quantos pacientes existem para cada profissão (desenvolvedor,
 estudante, dentista, jornalista)
- Apresente a quantidade de pacientes que moram em SP

}
*/

void main() {
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  // - Apresente os pacientes com mais de 20 anos e print o nome deles

  print('Apresente os pacientes com mais de 20 anos e print o nome deles');
  for (var paciente in pacientes) {
    final pacienteMais20Anos = paciente.split('|');
    final idade = int.parse(pacienteMais20Anos[1]);
    if (idade > 20) {
      print('${pacienteMais20Anos[0]} - ${pacienteMais20Anos[1]}');
    }
  }

  print('==========================================================');

  /*
  - Apresente quantos pacientes existem para cada profissão (desenvolvedor,
 estudante, dentista, jornalista)
  */

  print('Apresente quantos pacientes existem para cada profissão');

  final profissoes = [
    'desenvolvedor',
    'estudante',
    'dentista',
    'jornalista',
  ];

  for (var profissao in profissoes) {
    int contador = 0;
    for (var paciente in pacientes) {
      final profissaoPaciente = paciente.split('|');
      if (profissaoPaciente[2].toLowerCase() == profissao) {
        contador++;
      }
    }
    print('$profissao - $contador');
  }

  print('==========================================================');

  //- Apresente a quantidade de pacientes que moram em SP

  print('Apresente a quantidade de pacientes que moram em SP');

  int contador = 0;

  for (var paciente in pacientes) {
    final pacienteSP = paciente.split('|');
    if (pacienteSP[3].toLowerCase() == 'sp') {
      contador++;

      print('${pacienteSP[0]} - ${pacienteSP[3]}');
    }
  }
  print('Total: $contador');
}
