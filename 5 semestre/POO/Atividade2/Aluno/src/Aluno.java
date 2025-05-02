public class Aluno {
    private String nome; // Nome do aluno
    private int matricula; // Matrícula do aluno
    private int idade; // Idade do aluno
    private float nota_n1; // Nota da primeira prova
    private float nota_n2; // Nota da segunda prova
    
    // Construtor da classe Aluno
    public Aluno() {}
    public Aluno(String nome, int matricula, int idade, float nota_n1, float nota_n2) {
        this.nome = nome;
        this.matricula = matricula;
        this.idade = idade;
        this.nota_n1 = nota_n1;
        this.nota_n2 = nota_n2;
    }
    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    public int getMatricula() {
        return matricula;
    }
    public void setMatricula(int matricula) {
        this.matricula = matricula;
    }
    public int getIdade() {
        return idade;
    }
    public void setIdade(int idade) {
        this.idade = idade;
    }
    public float getNota_n1() {
        return nota_n1;
    }
    public void setNota_n1(float nota_n1) {
        this.nota_n1 = nota_n1;
    }
    public float getNota_n2() {
        return nota_n2;
    }
    public void setNota_n2(float nota_n2) {
        this.nota_n2 = nota_n2;
    }
    public String imprimeAluno(){

        return "Nome: " + nome + ", Matrícula: " + matricula + ", Idade: " + idade + ", Nota N1: " + nota_n1 + ", Nota N2: " + nota_n2;
    }
    public boolean calculaMedia(float resultado){
        resultado = (nota_n1 + nota_n2) / 2;
        if (resultado >= 6) {
            return true;
        } 
        else {
            return false;
        }
    }
    public String resultadoAluno(float resultado){
        if (calculaMedia(resultado) == true) {
            return "O aluno " + nome + " esta aprovado";
        } else {
            return "O aluno " + nome + " esta reprovado";
        }
    }

}