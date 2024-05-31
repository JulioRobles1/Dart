void main(){
  escolherComida(Comida.sushi);
  
}

void escolherComida(Comida tipoComida){

  if (tipoComida == Comida.pizza){
    print("Hoje vou comer pizza"); 
  } else if (tipoComida == Comida.sushi){
  print("Hoje vou comer sushi");
  } else if (tipoComida == Comida.hamburguer){
    print("Hoje vou comer hamburguer");
  } else if (tipoComida == Comida.salada){
    print("Hoje vou comer salada");
  } else if (tipoComida == Comida.lasanha){
    print("Hoje vou comer lasanha");
  } else if (tipoComida == Comida.taco){
    print("Hoje vou comer taco");
  } else if (tipoComida == Comida.sopa){
    print("Hoje vou comer sopa");
  } else{
    print("Hoje vou comer algo diferente");
  }
}


    
  

    


enum Comida{
  pizza,
  sushi,
  hamburguer,
  salada,
  lasanha,
  taco,
  sopa,
}