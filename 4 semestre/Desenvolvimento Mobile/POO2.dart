class Endereco{
  String? logradouro;
  String? numero;
  String? bairro;
  String? cidade;
  String? estado;
  String? pais;
  
  Endereco(this.logradouro, this.numero, this.bairro, this.cidade, this.estado, this.pais);
  
  void exibirEndereco(){
    print('$logradouro, $numero, $bairro, $cidade/$estado, $pais');
  }
  
}

class Pessoa{
  String? nome;
  int? idade;
  Endereco endereco;
  
  Pessoa(this.nome, this.idade, this.endereco);
  
  double calculoSalario (double salarioBruto, double bonus, double desconto){
    double salarioLiquido= salarioBruto+(salarioBruto*(bonus/100))-(salarioBruto*(desconto/100));
    return salarioLiquido;
   }
  }

class Funcionario extends Pessoa{
  double salarioBruto;
  double bonus;
  double desconto;
  
  Funcionario(String? nome, int? idade, Endereco endereco, this.salarioBruto, this.bonus, this.desconto):super(nome, idade, endereco);
  
  @override
  double calculoSalario (double salarioBruto, double bonus, double desconto){
    double salarioLiquido=super.calculoSalario(salarioBruto, bonus, desconto);
    print('Nome: $nome');
    print('Idade: $idade');
    endereco.exibirEndereco();
    print('Salario Bruto: $salarioBruto');
    print('Bonus: $bonus');
    print('Desconto: $desconto');
    print('Total a receber: $salarioLiquido');
    return salarioLiquido;
  }
}

class Usuario{
  String? dataCadastro;
  String? ultimoLogin;
  String? senha;
  
  Usuario(this.dataCadastro, this.ultimoLogin, this.senha);
  
  void login(){}
  void attUser(){}
  
}

void main (){
  Endereco endereco = Endereco('Rua ABC', '123', 'Novo Bairro', 'Cidade DEF', 'SP', 'Brasil');
  double salarioBruto=1450.00;
  double bonus=15;
  double desconto=3;
  
  Funcionario funcionario= Funcionario('José da Silva', 52, endereco, salarioBruto, bonus, desconto);
  
  Usuario usuario= Usuario('02/03/24', '20/03/24', 'Exemplo senha');
  
  funcionario.calculoSalario(salarioBruto, bonus, desconto);
  
  
}

