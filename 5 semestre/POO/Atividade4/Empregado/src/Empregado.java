public class Empregado {
    private int id;
    private String nome;
    private String cargo;
    private double salario;
    public static int totalEmpregados = 0;
    public static int proximoId = 1;

    public Empregado() {
        this.id = proximoId++;
        totalEmpregados++;
    }
    public Empregado(String nome, String cargo, double salario) {
        this.id = proximoId++;
        this.nome = nome;
        this.cargo = cargo;
        this.salario = salario;
        totalEmpregados++;

    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public double getSalario() {
        return salario;
    }

    public void setSalario(double salario) {
        this.salario = salario;
    }

    public String imprimeEmpregado(){
        return "ID: " + getId() + "\nNome: " + getNome() + "\nCargo: " + getCargo() + "\nSalario: " + getSalario();
    }

    public static String totalEmpregados() {
        return "A quantidade total de funcionários é: " + Empregado.totalEmpregados;
    }


}