void main() {
   //escolherMeioTransporte(0);
  escolherMeioTransporteEnum(Transporte.carro);
}

void escolherMeioTransporte(int locomocao){
  if (locomocao == 0){
    print("Vou de CARRO para aventura!");
  } else if (locomocao == 1){
    print("Vou de BIKE para aventura!");
  }else{
    print("Vou para aventura!");
  }
}

void escolherMeioTransporteEnum(Transporte locomocao){
//  if (locomocao == Transporte.carro){
//      print("Vou de carro para aventura");
//   } else if (locomocao == Transporte.bike){
//      print("Vou de bike para aventura");
//   } else{
//       print("Vou para aventura");
//   }


  switch (locomocao){
    case Transporte.carro:
      print("Vou de carro para aventura");
      break;
     case Transporte.bike:
      print("Vou de bike para aventura");
      break;
    case Transporte.onibus:
      print("Vou de busão para aventura");
      break;
    default:
      print("Vou para aventura");
      break;
      
  }
 }
 

enum Transporte{
  carro,
  bike,
  andando,
  skate,
  onibus,
  aviao,
  patins,
  trem,
}