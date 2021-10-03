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
fun mayor(a:real,b:real) = if a < b then b else a;
fun mayorList(L) = foldr mayor ~999.0 L;

val R = [43.5,47.39,53.65,7.1,25.65,22.74,26.19,54.19,20.28,72.77];
mayorList(L);


(* --- 2.2 --- *)
fun min(a : real, b) = if a > b then b else a;
fun minList(L) = foldr min 999.0 L;

val R = [43.5,47.39,53.65,7.1,25.65,22.74,26.19,54.19,20.28,72.77];
minList(L);


(* --- 2.3 --- *)
fun orFun(x : bool, y) = x orelse y;
fun orFunList(L) = foldr orFun false L;

val S = [false,false,true,false];
orFunList(S);


(* --- 3.1 --- *)
fun posit(x) = x > 0;
fun positList(L) = filter posit L;

val L = [~95,55,48,84,94,56,41,32,~48,~88];
positList(L);


(* --- 3.2 --- *)
fun between(x : real) = x > 1.0 andalso x < 2.0;
fun betList(L) = filter between L;

val R = [43.5,47.39,53.65,7.1,25.65,22.74,26.19,54.19,20.28,72.77, 1.3];
betList(R);


(* --- 3.3 --- *)

fun aStart(x : string) = hd(explode(x)) = #"a";
fun aStartList(L : string list) = filter aStart L;

val S = ["hola", "como", "aca", "estas", "alfonso"];
aStartList(S);


(* --- 3.4 --- *)
fun mayTres(x : string) = size(x) <= 3 ;
fun mayTresList(L : string list) = filter mayTres L;

val S = ["hola", "como", "aca", "estas", "alfonso"];
mayTresList(S);


(* --- 4.1 --- *)

fun sumList nil = 0
  | sumList (l::ls) = l + sumList ls;

fun es_mayor_n (L:int list) (n:int) = (n>sumList L);
es_mayor_n [1,2,3] 6;


(* --- 4.2 --- *)
fun potencia x 0 = 1
  | potencia (x:int) (n:int) = x*(potencia x (n-1));

fun potenciaList (L:int list) (n:int) = map (potencia n) L;
potenciaList [1,2,3,4,5,6] 2;


(* --- 4.3 --- *)
fun mapFun nil x = nil
  | mapFun (f::fs) x = [f(x)] @ mapFun fs x

fun cubo x = x*x*x;
fun cuadrado x = x*x;
mapFun [cubo, cuadrado] 2;


(* --- 5.1 --- *)
fun isPosit(x) = x > 0.0;
fun cubos(x : real) = x*x*x;
fun sum(x : real ,y : real) = x + y;

fun suma_cubos x = foldr sum 0.0 (map cubos (filter isPosit x));


suma_cubos(R);


(* --- 5.2 --- *)
fun mayCuatro(L) = length(L) > 4;
fun andBool(x,y) = x andalso y;

fun long_lists(L) = foldr andBool true (map mayCuatro L);

val Ll = [[1,2,3,4,5],[1,2,3,4,5],[1,2,3,4,5]];
long_lists(Ll);


(* --- 5.3 --- *)
fun isPosit(x) = x > 0.0;
fun mult(x : real ,y) = x * y;
fun esProdRealPos(L : real list) = isPosit (foldr mult 1.0 L);
fun prod_positivo L = filter esProdRealPos L;

prod_positivo[[1.0,2.0,3.0,4.0],[~2.0,3.0,4.0],[~2.0,~5.0]];
