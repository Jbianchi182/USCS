void main() {}

class ContaBancaria{
  String _numeroConta;
  double _saldo;
  
  ContaBancaria(this._numeroConta, this._saldo);
  
  String get numeroConta => _numeroConta;
  double get saldo => _saldo;
  
  void depositar(double _valor){
    _saldo += _valor;
  }
  
  bool sacar (double _valor){
    if(_saldo >= _valor){
      _saldo -= _valor;
      return true;
    }
    else{
      print("Saldo Insuficiente.");
      return false;
    }
  }
}

class ContaCorrente extends ContaBancaria{
  
   double _limiteChequeEspecial;
  
  ContaCorrente(_numeroConta, _saldo, this._limiteChequeEspecial):super(_numeroConta, _saldo);
  
  double get limiteChequeEspecial => _limiteChequeEspecial;
  
@override
  bool sacar (double _valor){
    if(saldo + _limiteChequeEspecial >= _valor){
      _saldo -= _valor;
      return true;
    }
    else{
      print("Limite do cheque especial ultrapassado.");
      return false;
    }
  }  
}

class ContaPoupanca extends ContaBancaria{
  
  double _taxaJuros;
  
  ContaPoupanca(_numeroConta, _saldo, this._taxaJuros):super(_numeroConta, _saldo);
  
  double get taxaJuros => _taxaJuros;
  
  @override
  void depositar(double _valor){
    _saldo += _valor;
    _saldo += _valor * (_taxaJuros/100);
  }
}
