public class TestaProduto {
    public static void main(String[] args){
        Produto p1 = new Produto("Produto 1", 10.0);
        Produto p2 = new Produto("Produto 2", 20.0);
        Produto p3 = new Produto("Produto 3", 30.0);

        System.out.println(p1.exibirDetalhes());
        System.out.println(p2.exibirDetalhes());
        System.out.println(p3.exibirDetalhes());

        System.out.println("Total de produtos: " + Produto.getTotalProdutos());
    }
}
