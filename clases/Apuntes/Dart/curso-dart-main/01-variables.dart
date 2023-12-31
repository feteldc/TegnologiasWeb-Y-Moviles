//GUIA RÁPIDA TIPOS DE DATOS EN DART
//Docente: Victor Saldivia Vera - Institución: Universidad de Los Lagos
void main() {
  //Este es un comentario de una linea

  /*Este es un comentario 
  multilinea*/

  //01-CONSTANTES
  /*La diferencia entre final y const es que esta última no puede ser algo
  a calcular a la hora de la ejecutar el código, es decir, se inicializa 
  con un valor constante, es 100% inmutable, en cambio final si se puede
  ejecutar dentro de la etapa run-time*/
  final double PI = 3.141592;
  const double e = 2.7182;

  //Impresion variables
  print("01-CONSTANTES");
  print(PI);
  print("El valor de pi es de: $PI");
  print("El valor de e es de: $e\n");

  // Intentamos modificar el valor de estas variables (Inmutables)
  //PI = 3.14;
  print(PI);

  //02-DECLARANDO VARIABLES DE TIPO NÚMERICAS

  //ENTEROS
  int a = 30;
  int b = 20;
  int n = 100;

  print("02-VARIABLES NÚMERICAS");
  print(a);
  print(b);
  print(n);

  //REALES
  double estatura = 1.71;
  double peso = 70;

  print("Mi estatura es de $estatura cm y mi peso es de $peso kg\n");

  //03-STRING DE UNA LINEA Y MULTILINEA (Con comillas simples, dobles y triples)
  String nombre = "Amanda";
  String apellido = 'Gutierrez';
  String cita = ''' Medir el progreso del desarrollo de software
   por líneas de código es como medir el progreso de la 
   construcción de un avión por su peso ''';

  print("03-STRING");
  print("Mi nombre es $nombre y mi apellido es $apellido\n");
  print("$cita\n");

  //04-BOOLEANS
  bool ampolleta = false;
  bool interruptor = true;

  print("04-BOOLEANS");
  print("La ampolleta esta apagada: $ampolleta");
  print("El interruptor esta encendido: $interruptor\n");

  //05-VARIABLES TIPO VAR - ( Si no sabemos el tipo de datos a tratar se puede utilizar Var (No recomendado) )
  var dato = "Esto es un dato";
  print("05-VARIABLES TIPO VAR");
  print("$dato\n");

  //06-LISTAS
  //Hay varias maneras de declarar las listas
  print("06-LISTAS");
  var lista = [0, 1, 2, 3, 4]; //utilizando los corchetes
  print(lista.runtimeType);
  List numeros = [1, 2, 3, 4, 5]; //ocupando la clase List
  print(numeros.elementAt(4));
  print("Esta es una lista conformada por los siguientes elementos:  $numeros");

  List<dynamic> datos = [0, "Pepe", true];
  print(datos.runtimeType);
  // Accediendo a un elemento en especifico de la lista
  print(numeros[0]);

  // Agregando un nuevo elemento a la lista (Númerico)
  numeros.add(6);
  print("Lista actualizada con el último elemento agregado: $numeros");

  // Agregando un nuevo elemento a la lista (String)
  numeros.add("Casa");
  print("Lista actualizada con el último elemento agregado: $numeros");

  //Eliminando un elemento en especifico de la lista
  numeros.removeAt(6);
  print("Lista actualizada $numeros");

  //Eliminando el ultimo elemento de la lista
  numeros.removeLast();
  print("Lista con el último elemento ya eliminado $numeros");

  //Restringiendo el tipo de variables a la Lista
  List<int> nuevoarray = [10, 20, 30, 40, 50];
  print(
      "Nueva lista con restricción de solo elementos númericos: $nuevoarray\n");

  //¿Puedo agregar este nuevo elemento a la lista?
  //nuevoarray.add("Hola");
  //print(nuevoarray);

  //07-VARIABLES TIPO DYNAMIC
  /*Estas variables pueden tomar cualquier tipo de dato y cambiarlo a otro tipo en todo momento*/

  print("07-DYNAMIC");

  dynamic valor = 12;
  print("Variable dinamica: $valor");

  valor = "Soy un String";
  print("Variable dinamica: $valor");

  valor = true;
  print("Variable dinamica: $valor");
  print(valor.runtimeType);

  //08-COLOCANDO EN DUDA LA MUTABILIDAD DE FINAL
  //Ejemplo de la declaración de un Array
  print("\n08-COLOCANDO EN DUDA LA MUTABILIDAD DE FINAL");

  List<int> listanumeros = [1, 2, 3, 4];

  print(listanumeros);
  listanumeros.add(5); //Hacemos uso del método para agregar valor al array
  print(listanumeros);

  //Ahora probabamos la mutabilidad de Const
  final date = new DateTime.now();
  print("La fecha actual es: $date");
}
