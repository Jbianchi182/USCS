public class TestaAluno {
    public static void main(String[] args) {
        Aluno aluno1 = new Aluno("Ana Souza", 31, 1234);
        System.out.println(aluno1.imprimePessoa());

        Aluno aluno2 = new Aluno("Bia Nunes", 25, 5678);
        System.out.println(aluno2.imprimePessoa());

        Aluno aluno3 = new Aluno("Paulo Santos", 45, 9876);
        System.out.println(aluno3.imprimePessoa()); 
    }
}
