abstract class Hospede{
  int _idhosp;
  String _nome;
  String _contato;
  
  Hospede(this._idhosp, this._nome, this._contato);
  
  int get idhosp => _idhosp;
  String get nome => _nome;
  String get contato => _contato;
  
}

class HospedeIndv extends Hospede{
  String cpf;
  
  HospedeIndv(this.cpf, idhosp, nome, contato):super(idhosp, nome, contato);
  
  @override
  String toString(){
    return 'Nome do hospede: $_nome, Identificação do Hóspede: $_idhosp, CPF: $cpf, contato: $_contato, ';
  }
  
}

class Familia extends Hospede{
  int npessoas;
  
  Familia(this.npessoas, idhosp, nome, contato):super(idhosp, nome, contato);
  
  @override
  String toString(){
    return 'Nome do Hospede: $_nome, Identificação do Hóspede: $_idhosp, Número de Pessoas na Família: $npessoas, Contato: $_contato';
  }
}

class Empresa extends Hospede{
  String cnpj;
  
  Empresa(this.cnpj, idhosp, nome, contato):super(idhosp, nome, contato);
  
   @override
  String toString(){
    return 'Nome da Empresa: $_nome, Numero de identificação da Empresa: $_idhosp, CNPJ: $cnpj, contato: $_contato, ';}
}
