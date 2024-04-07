abstract class Hospede {
  int _idHospede;
  String _nome;
  String _telefone;

  Hospede(this._idHospede, this._nome, this._telefone);

  String get nome => _nome;
  String get telefone => _telefone;
  int get idHospede => _idHospede;
  
  void exibirDados();
}

class HospedeIndividual extends Hospede {
  String _cpf;

  HospedeIndividual(this._cpf, idHospede, nome, telefone)
      : super(idHospede, nome, telefone);

  String get cpf => _cpf;

  @override
  void exibirDados() {
    print(
        'Hospede número $_idHospede, \nNome: ${_nome}, \nCPF: $_cpf, \nTelefone: $_telefone, \n');
  }
}

class HospedeFamiliar extends Hospede {
  int _nPessoas;

  HospedeFamiliar(this._nPessoas, idHospede, nome, telefone)
      : super(idHospede, nome, telefone);

  int get nPessoas => _nPessoas;

  @override
  void exibirDados() {
    print(
        'Família número $_idHospede, \nNome da família: ${_nome}, \nQuantidade de Pessoas no cadastro familiar: $_nPessoas, \nTelefone: $_telefone \n');
  }
}

class Empresa extends Hospede {
  String _cnpj;

  Empresa(this._cnpj, idHospede, nome, telefone)
      : super(idHospede, nome, telefone);

  String get cnp => _cnpj;

  @override
  void exibirDados() {
    print(
        'Hospede empresárial número $_idHospede, \nNome da Empresa: ${_nome}, \nCNPJ: $_cnpj, \nTelefone: $_telefone,');
  }
}

void main() {
  HospedeIndividual individual = HospedeIndividual(
      '123456789-0', 0014, 'Jose da Silva', '+55119xxxx-xxxx');
  individual.exibirDados();
  
  HospedeFamiliar familiar =
      HospedeFamiliar(3, 0125, 'Familia Silva', '+55119yyyy-yyyy');
  familiar.exibirDados();
  
  Empresa empresa =
      Empresa('012345678790-0001', 1032, 'Empresa ABC', '+55119zzzz-zzzz');
  empresa.exibirDados();
}
