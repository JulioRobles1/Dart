import 'dart:convert';

void main() {
  // Exemplo de uso das classes criadas
  Livro livro = Livro("O Alquimista", "Paulo Coelho", 250, 5, "Ficção", "Português", 1988);
  Revista revista = Revista("Revista Ciência Hoje", 50, 10, "Ciência", "Português", 2023, 5);
  DVD dvd = DVD("Inception", "Christopher Nolan", 148, 3, "Ficção Científica", "Inglês", 2010);

  // Exibindo informações
  livro.mostrarInfo();
  revista.mostrarInfo();
  dvd.mostrarInfo();

  // Verificando disponibilidade
  print("Livro disponível? ${livro.estaDisponivel()}");
  print("Revista disponível? ${revista.estaDisponivel()}");
  print("DVD disponível? ${dvd.estaDisponivel()}");

  // Calculando dias até a devolução
  print("Dias até a devolução do livro: ${livro.diasAteDevolucao(15)}");
  print("Dias até a devolução da revista: ${revista.diasAteDevolucao(20)}");
  print("Dias até a devolução do DVD: ${dvd.diasAteDevolucao(10)}");
}

// Classe base ItemBiblioteca
class ItemBiblioteca {
  String titulo;
  int numeroDePaginas;
  int diasEmprestimo;

  ItemBiblioteca(this.titulo, this.numeroDePaginas, this.diasEmprestimo);

  bool estaDisponivel() {
    return diasEmprestimo > 0;
  }

  int diasAteDevolucao(int diasEmprestado) {
    return diasEmprestimo - diasEmprestado;
  }

  void mostrarInfo() {
    print("Título: $titulo");
    print("Número de Páginas: $numeroDePaginas");
    print("Dias de Empréstimo: $diasEmprestimo");
  }
}

// Classe Livro que herda de ItemBiblioteca
class Livro extends ItemBiblioteca {
  String autor;
  String genero;
  String idioma;
  int anoPublicacao;

  Livro(String titulo, this.autor, int numeroDePaginas, int diasEmprestimo, this.genero, this.idioma, this.anoPublicacao)
      : super(titulo, numeroDePaginas, diasEmprestimo);

  @override
  void mostrarInfo() {
    super.mostrarInfo();
    print("Autor: $autor");
    print("Gênero: $genero");
    print("Idioma: $idioma");
    print("Ano de Publicação: $anoPublicacao");
  }
}

// Classe Revista que herda de ItemBiblioteca
class Revista extends ItemBiblioteca {
  String categoria;
  String idioma;
  int anoPublicacao;
  int edicao;

  Revista(String titulo, int numeroDePaginas, int diasEmprestimo, this.categoria, this.idioma, this.anoPublicacao, this.edicao)
      : super(titulo, numeroDePaginas, diasEmprestimo);

  @override
  void mostrarInfo() {
    super.mostrarInfo();
    print("Categoria: $categoria");
    print("Idioma: $idioma");
    print("Ano de Publicação: $anoPublicacao");
    print("Edição: $edicao");
  }
}

// Classe DVD que herda de ItemBiblioteca
class DVD extends ItemBiblioteca {
  String diretor;
  String genero;
  String idioma;
  int anoLancamento;

  DVD(String titulo, this.diretor, int numeroDePaginas, int diasEmprestimo, this.genero, this.idioma, this.anoLancamento)
      : super(titulo, numeroDePaginas, diasEmprestimo);

  @override
  void mostrarInfo() {
    super.mostrarInfo();
    print("Diretor: $diretor");
    print("Gênero: $genero");
    print("Idioma: $idioma");
    print("Ano de Lançamento: $anoLancamento");
  }
}
