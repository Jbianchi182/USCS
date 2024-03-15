void main() {
  //Dados do funcionario  
    Endereco enderecoFunc = Endereco('Rua ABC', '30', '43', 'Sao Paulo', 'SP', '44182-182', 'Brasil');
    Funcionario funcionario = Funcionario('Fulano de Tal', enderecoFunc, 1450, 15, 3);
  Pessoa all = Pessoa('João Bianchi', '42049309805');
  // Exibir Endereço
   funcionario.endereco.exibirEndereco();
  
  // Calcular e exibir Salario
  funcionario.calculoSalario();
}

class Usuario{
  DateTime dataCadastro=DateTime (2024,03,14);
  String? ultimasenha;
  String? senha;
  
  void login(){}
  void attUser(){}
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

class Pessoa{
  String? _nome;
  String? _cpf;
  Endereco endereco;
  
  
  Pessoa.all(DateTime dataCadastro, String? ultimasenha, String? senha, this._nome, this._cpf, Endereco endereco);
}
  class Funcionario extends Pessoa{
    double? _salariobruto;
    double? _bonuspercent;
    double? _descontopercent;
    double? _salarioLiquido;
  
    Funcionario(String? _nome, String? _cpf, Endereco endereco, this._salariobruto, this._bonuspercent, this._descontopercent):super.all(_nome, _cpf);
    
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
