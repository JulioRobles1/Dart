void main() {
  escolherUmJogador(Nome.Cris);
}

void escolherUmJogador(Nome qualJogador){
  if (qualJogador == Nome.Neymar){
    print("Eu escolho o Neymar");
  } else if (qualJogador == Nome.Rony){
  print("Eu escolho o Rony");
  } else if (qualJogador == Nome.Dudu){
    print("Eu escolho o Dudu");
  } else if ( qualJogador == Nome.Cris){
    print("Eu escolho o Cris");
  } else if (qualJogador == Nome.Messi){
    print("Eu escolho o Messi");
  } else if (qualJogador == Nome.Endrick){
    print("Eu escolho o Endrick");
  } else if (qualJogador == Nome.Estevao){
    print("Eu escolho o Estevao");
  }
}

enum Nome{
  Neymar,
  Rony,
  Dudu,
  Cris,
  Messi,
  Endrick,
  Estevao,
}