public class Produto {
    String nome;
    double preco;
    static int totalProdutos = 0;

    public Produto(String nome, double preco) {
        this.nome = nome;
        this.preco = preco;
        totalProdutos++;
    }

    public String exibirDetalhes(){
        return "Nome: " + nome + ", Preço: " + preco;
    }
    
    public static int getTotalProdutos() {
        return totalProdutos;
    }

}
