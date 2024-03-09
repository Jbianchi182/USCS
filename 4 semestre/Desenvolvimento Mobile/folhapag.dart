void main() {}


class Endereco{
    String? _complemento;
    String? _numero;
    String? _logradouro;
    String? _cidade;
    String? _estado;
    String? _pais;
    String? _cep;
    
  Endereco(this._complemento, this._numero, this._logradouro, this._cidade, this._estado, this._pais, this._cep);
  
  void exibirEndereco() 
  {
    print('Endereco: $_logradouro, $_numero, AP $_complemento, $_cidade/$_estado - $_cep - $_pais');
  }
}
  class Funcionario{
    String? _nome;
    double _salariobruto;
    double _bonuspercent;
    double _descontopercent;
    Endereco enderecoFunc;
  
    Funcionario(this._nome, this.enderecoFunc, this._salariobruto, this._bonuspercent, this._descontopercent);
    
    void exibirFuncionario ()
    {
      print('Funcionario: $_nome');
    }
    
    void calculoSalario ()
    {
      double? _bonus=_salariobruto*(_bonuspercent/100);
      double? _desconto=_salariobruto*(_descontopercent/100);
      double? _salarioLiquido=_salariobruto + _bonus - _desconto;
      
       void exibirSalario ()
    {
      print('O salario do funcionario $_nome é de: $_salarioLiquido');
    }
    }
    
   }   
          //Dados do funcionario
    
    Endereco enderecoFunc = Endereco('Rua Angela', '30', '43', 'Sao Caetano do Sul', 'SP', '09571-490', 'Brasil');
    Funcionario funcionario = Funcionario('Joao Bianchi', enderecoFunc, 1450, 15, 3);

   enderecoFunc.exibirEndereco();
   funcionario.exibirSalario();
 
    
