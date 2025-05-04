public class TestaEmpregado {
    public static void main(String[] args) {
        Empregado e1 = new Empregado("Paulo Silva", "Gerente Financeiro", 15400);
        Empregado e2 = new Empregado();

        e2.setNome("Ana Paula");
        e2.setCargo("Analista de Sistemas Senior");
        e2.setSalario(10700);

        System.out.println(e1.imprimeEmpregado());
        System.out.println(e2.imprimeEmpregado());
        System.out.println(Empregado.totalEmpregados());
}
}