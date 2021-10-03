(* --- 1.1 --- *)
fun cuadrado(x) = x*x;
fun cuadMap(L) = simpleMap(cuadrado, L);

val L = [1,2,3,4,5,6,7,8,9];
cuadMap(L);


(* --- 1.2 --- *)
fun cubo(x) = x*x*x;
fun cuboMap(L) = simpleMap(cubo, L);

val L = [1,2,3,4,5,6,7,8,9];
cuboMap(L);


(* --- 1.3 --- *)
fun negat(x) = if x > 0 then 0 else x;
fun negatMap(L) = simpleMap(negat, L);

val L = [1,2,3,4,5,6,7,8,9];
negatMap(L);


(* --- 1.4 --- *)
fun plus(x) = x+1;
fun plusMap(L) = simpleMap(plus, L);

val L = [1,2,3,4,5,6,7,8,9];
plusMap(L);


(* --- 1.5 --- *)
fun convertirCaracter(x) = if ord(x) >= ord(#"a") andalso ord(x) <= ord(#"z") then
                              chr(ord(x)-32)
                           else
                              x;

fun aMayus(L) = simpleMap(convertirCaracter, L);
val L = [#"a",#"b",#"c",#"d",#"e"];
aMayus(L);



(* --- 2.1 --- *)
