--- 1.1 ---
fun cubo(x) = x*x*x;

fun cubos(nil) = nil
  | cubos(x::xs) = [cubo(x)] @ cubos(xs);

cubos([1,2,3,4]);


--- 1.2 ---
fun orLista(nil) = false
  | orLista(x::xs) = if x then 
                        x
                     else
                        orLista(xs);

val L = [false,true,false];
orLista(L);


--- 1.3 ---
fun primero(nil) = ~1                   (*Funcion que saca la cabeza de una lista*)
  | primero(x::xs) = x;

fun primerosLista(nil) = nil
  | primerosLista(x::xs) = [primero(x)] @ primerosLista(xs);


val L = [[1,2,3],[4,5,6],[],[7,8,9]];
primerosLista(L);
