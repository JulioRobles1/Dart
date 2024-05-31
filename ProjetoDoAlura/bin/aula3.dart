void main() {
  escolherMeioTransporte(Transporte.aviao);

  Set<String> registrosVisitados = <String>{};
   
  registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);
  registrosVisitados = registrarDestinos("Recife", registrosVisitados);
  registrosVisitados = registrarDestinos("Rio de Janeiro", registrosVisitados);
  registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);

  print(registrosVisitados);

  Map<String, double> registrarPrecos = {};

  registrarPrecos["São Paulo"] = 1200;
  registrarPrecos["Rio de Janeiro"] = 1500;
  print(registrarPrecos);
}




Set<String>registrarDestinos(String destino, Set<String> banco){
  banco.add(destino);
  return banco;
}
void escolherMeioTransporte(Transporte locomocao){

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