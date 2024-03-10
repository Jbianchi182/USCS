void main() {
  //Dados do funcionario  
    Endereco enderecoFunc = Endereco('Rua ABC', '30', '43', 'Sao Paulo', 'SP', '44182-182', 'Brasil');
    Funcionario funcionario = Funcionario('Fulano de Tal', enderecoFunc, 1450, 15, 3);

  // Exibir Endereço
   funcionario.endereco.exibirEndereco();
  
  // Calcular e exibir Salario
  funcionario.calculoSalario();
}

class Endereco{
    String? _complemento;
    String? _numero;
    String? _logradouro;
    String? _cidade;
    String? _estado;
    String? _pais;
    String? _cep;
    
  Endereco(this._logradouro, this._numero, this._complemento, this._cidade, this._estado, this._pais, this._cep);
  
  void exibirEndereco() {
    print('Endereco: $_logradouro, $_numero, AP $_complemento, $_cidade/$_estado - $_cep - $_pais');
  }
}
  class Funcionario{
    String? _nome;
    double? _salariobruto;
    double? _bonuspercent;
    double? _descontopercent;
    Endereco endereco;
    double? _salarioLiquido;
  
    Funcionario(this._nome, this.endereco, this._salariobruto, this._bonuspercent, this._descontopercent);
    
    void exibirFuncionario() {
      print('Funcionario: $_nome');
    }
    
    void calculoSalario() {
      double? _bonus = _salariobruto! * (_bonuspercent! / 100);
      double? _desconto = _salariobruto! * (_descontopercent! / 100);
      _salarioLiquido = _salariobruto! + _bonus - _desconto;
      
      exibirSalario(); 
    }
    
    void exibirSalario (){
      print('O salário do funcionário $_nome é de: RS $_salarioLiquido');
    }
  }
