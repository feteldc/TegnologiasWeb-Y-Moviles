

var puntuacion = parseFloat(prompt('ingrese su puntuacion').replace(",","."));

var Nrendimiento ='';
var dinero ='';

if ( puntuacion = 0.0 , puntuacion= 0.2){
    Nrendimiento = 'Insuficiente';
    dinero ='$350000';
    
} else if(puntuacion = 0.4) {
    Nrendimiento ='aceptable';


} else if(puntuacion = 0.6) {
    Nrendimiento='meritorio';

}else if(puntuacion=0.8){
    Nrendimiento ='excelente';
}

alert ('tu rendimiento es '+ Nrendimiento)
alert ('tu dinero por tu nivel de rendimiento es'+ dinero)