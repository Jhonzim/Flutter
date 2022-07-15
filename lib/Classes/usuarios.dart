class Usuarios{
  static Usuarios cadastro = Usuarios();
  String nome = "";
  String contato = "";
  String senha = "";
  String cpf = "";

  bool cadastrado(){
    bool cadastroFeito = false;
    if(nome != ""){
      cadastroFeito = true;
    }
    return cadastroFeito;
  }

  void setter(String nome, String contato, String cpf, String senha){
    this.nome = nome;
    this.contato = contato;
    this.cpf = cpf;
    this.senha = senha;
  }
}