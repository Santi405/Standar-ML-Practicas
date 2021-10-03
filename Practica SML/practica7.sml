(* --- 1.5 --- *)
fun convertirCaracter(x) = if ord(x) >= ord(#"a") andalso ord(x) <= ord(#"z") then
                              chr(ord(x)-32)
                           else
                              x;

fun aMayus(L) = simpleMap(convertirCaracter, L);
val L = [#"a",#"b",#"c",#"d",#"e"];
aMayus(L);
