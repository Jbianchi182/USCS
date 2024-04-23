class Paciente{
  int _idpac;
  String _nome;
  String _infomedicas;
  
  Paciente(this._idpac, this._nome, this._infomedicas);
  
  int get idpac => _idpac;
  String get nome => _nome;
  String get infomedicas => _infomedicas;
  
  void registrarEstadoSaude (){}
}

class PacInternado extends Paciente{
  String diagnostico;
  
  PacInternado(this.diagnostico, _idpac, _nome, _infomedicas):super(_idpac, _nome, _infomedicas);
  
  void registrarEstadoSaude (){}
}

class PacObservacao extends Paciente{
  String observacao;
  
  PacObservacao(this.observacao, _idpac, _nome, _infomedicas):super(_idpac, _nome, _infomedicas);
  
  void registrarEstadoSaude (){}
}

class PacAmbulatorial extends Paciente{
  String tratamento;
  
  PacAmbulatorial(this.tratamento, _idpac, _nome, _infomedicas):super(_idpac, _nome, _infomedicas);
  
  void registrarEstadoSaude(){}
}
