public class TestaAluno {
    public static void main(String[] args) throws Exception {
        Aluno aluno1 = new Aluno ("Ana Souza", 1234, 31, 7.0f, 2.0f);
        Aluno aluno2 = new Aluno ("Bia Nunes", 5678, 25, 3.0f, 9.0f);
        Aluno aluno3 = new Aluno ("Paulo Santos", 9876, 45, 6.0f, 8.0f);

        aluno1.imprimeAluno();
        System.out.println("A media do aluno " + aluno1.getNome() + " e: " + aluno1.calculaMedia(0));
        System.out.println(aluno1.resultadoAluno(0));
        System.out.println("-------------------------------------------------");
        aluno2.imprimeAluno();
        System.out.println("A media do aluno " + aluno2.getNome() + " e: " + aluno2.calculaMedia(0));
        System.out.println(aluno2.resultadoAluno(0));
        System.out.println("-------------------------------------------------");
        aluno3.imprimeAluno();
        System.out.println("A media do aluno " + aluno3.getNome() + " e: " + aluno3.calculaMedia(0));
        System.out.println(aluno3.resultadoAluno(0));
        
    }

}
