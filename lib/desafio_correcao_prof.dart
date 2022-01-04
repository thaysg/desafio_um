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

//!CORREÇÃO RODRIGO RAMANHAN
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
  for (final paciente in pacientes) {
    final pacienteDados = paciente.split('|');
    final idade =
        int.tryParse(pacienteDados[1]) ?? 0; //Converter String para Int
    if (idade > 20) {
      print('${pacienteDados[0]} ${pacienteDados[1]}');
    }
  }

  print('==========================================================');

  /*
  - Apresente quantos pacientes existem para cada profissão (desenvolvedor,
 estudante, dentista, jornalista)
  */
  final desevolvedores = [];
  final estudantes = [];
  final dentistas = [];
  final jornalistas = [];

  for (var paciente in pacientes) {
    final pacienteDados = paciente.split('|');
    final nome = pacienteDados[0];
    final profissao = pacienteDados[2].toLowerCase();
    if (profissao == 'desenvolvedor') {
      desevolvedores.add(pacienteDados[0]);
    } else if (profissao == 'estudante') {
      estudantes.add(pacienteDados[0]);
    } else if (profissao == 'dentista') {
      dentistas.add(pacienteDados[0]);
    } else if (profissao == 'jornalista') {
      jornalistas.add(pacienteDados[0]);
    }
  }

  print('Desenvolvedores: ${desevolvedores.length}');
  for (var nome in desevolvedores) {
    print(nome);
  }

  print('Estudantes: ${estudantes.length}');
  for (var nome in estudantes) {
    print(nome);
  }

  print('Dentistas: ${dentistas.length}');
  for (var nome in dentistas) {
    print(nome);
  }

  print('Jornalistas: ${jornalistas.length}');
  for (var nome in jornalistas) {
    print(nome);
  }

  print('==========================================================');

  //- Apresente a quantidade de pacientes que moram em SP
  print('Apresente a quantidade de pacientes que moram em SP');
  for (var paciente in pacientes) {
    final pacienteDados = paciente.split('|');
    final estado = pacienteDados[3].toLowerCase();
    if (estado == 'sp') {
      print(pacienteDados[0]);
    }
  }
}
