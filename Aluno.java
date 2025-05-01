public class Aluno {
    public String nome; // Nome do aluno
    public int codmat; // Código da matrícula
    public String cpf; // CPF do aluno
    public char sexo; // Sexo do aluno
    public double nota_P1; // Nota da prova 1
    public double nota_P2; // Nota da prova 2
    public double nota_P3; // Nota da prova 3

    public Aluno(String nome, int codmat, String cpf, char sexo, double nota_P1, double nota_P2, double nota_P3) {
        this.nome = nome;
        this.codmat = codmat;
        this.cpf = cpf;
        this.sexo = sexo;
        this.nota_P1 = nota_P1;
        this.nota_P2 = nota_P2;
        this.nota_P3 = nota_P3;
    }
    public Aluno(){}

    public String imprimeAluno() {
        return "Nome: " + nome + "\n" +
               "Código da matrícula: " + codmat + "\n" +
               "CPF: " + cpf + "\n" +
               "Sexo: " + sexo + "\n";
    }

    public String imprimeSexo(){
        if (sexo == 'M' || sexo == 'm') {
            return nome + "é do sexo masculino";
        } else if (sexo == 'F' || sexo == 'f') {
            return nome + "é do sexo feminino";
        } else {
            return "Sexo inválido";            
        }
    }

    public double mediaAluno() {
        if (nota_P1 > nota_P2) {
            if (nota_P2 > nota_P3) {
                return (nota_P1 + nota_P2) / 2;
            } else {
                return (nota_P1 + nota_P3) / 2;                
            }
        }
        else {
            if (nota_P1 > nota_P3) {
                return (nota_P2 + nota_P1) / 2;
            } else {
                return (nota_P2 + nota_P3) / 2;                
            }
        }        
    }

    public String resultado() {
        double media = mediaAluno();
        if (media >= 6) {
            return "O aluno " +nome + " foi aprovado com média " + media + "";
        } else {
            return nome + " foi reprovado com média " + media + ".";
        }
    }
}