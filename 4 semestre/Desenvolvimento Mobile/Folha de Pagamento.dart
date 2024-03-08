void main() {
  
}

class Endereco{
    double? _complemento;
    double? _numero;
    String? _logradouro;
    String? _cidade;
    String? _estado;
    String? _pais;
    String? _cep;
    
  Endereco(this._complemento, this._numero, this._logradouro, this._cidade, this._estado, this._pais, this._cep);
  
  void exibirEndereco() 
  {
    print('Endereco: $_logradouro, $_numero, $_complemento, $_cep, $_cidade, $_estado, $_pais');
  }
}
  class Funcionario{
    String? _nome;
    String? _cpf;
    double? _salariobruto;
    double? _bonus;
    double? _desconto;
    Endereco endereco;
  
    Funcionario(this._nome, this._cpf, this.endereco, this._salariobruto, this._bonus, this._desconto);
    
    void ExibirFuncionario ()
    {
      print('Funcionario: $_nome');
    }
    
    void CalculoSalario ()
    {
      double? _salarioLiquido=_salariobruto + (_salariobruto*(_bonus/100))-(_salariobruto*(_desconto/100));
    }
    
    void ExibirSalario ()
    {
      print('O salario do funcionario é de: $CalculoSalario');
    }
    
    
    
  }
