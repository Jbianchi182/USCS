public class TestaAluno {
    public static void main(String[] args) {
        Aluno aluno1 = new Aluno("Paulo", 55123, "800912345-12", 'M', 7.0, 6.0, 8.0);
        Aluno aluno2 = new Aluno("Ana", 991239, "500876123-15", 'F', 2.0, 6.0, 9.0);

        aluno1.imprimeAluno();
        aluno1.imprimeSexo();
        aluno1.mediaAluno();
        aluno1.resultado();
        
        aluno2.imprimeAluno();
        aluno2.imprimeSexo();
        aluno2.mediaAluno();
        aluno2.resultado();

    }
} 