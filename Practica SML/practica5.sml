(*--- 1.2 ---*)
val A = Nodo("Jorge", 
                      Nodo("Ana", 
                                  Nodo("Clara", Vacio, Vacio),
                                  Nodo("Micaela", Vacio, Vacio)
                      ), 
                      Nodo("Juan",Vacio, Vacio)
         );
         

(*--- 1.3 ---*)
fun pertenece(Nodo(y, Vacio, Vacio), x) = (x = y)
  | pertenece(Nodo(y, L, R), x) =   if (x = y) then
                                        true
                                    else
                                        pertenece(L, x) orelse pertenece(R, x);

pertenece(A, "Juan");


(*--- 1.4 ---*)
fun cantidad(Nodo(y, Vacio, Vacio), x) = if x = y then 1 else 0
  | cantidad(Nodo(y,L,R), x) = if x = y then 1 + cantidad(L, x) + cantidad(R,x)
                               else cantidad(L,x) + cantidad(R,x);

cantidad(A, "Jorge");


(*--- 1.5 ---*)
fun suma(Nodo(y, Vacio, Vacio)) = y
  | suma(Nodo(y,L,R)) = y + suma(L) + suma(R);

val S = Nodo(5, Nodo(4,Vacio,Vacio), Nodo(1,Vacio,Vacio));
suma(S);


(*--- 1.6 ---*)
fun mult(Nodo(y, Vacio, Vacio)) = y
  | mult(Nodo(y,L,R)) = y * mult(L) * mult(R);

mult(S);


(*--- 1.7 ---*)

fun mult(Nodo(y, Vacio, Vacio)) = Nodo(y*2,Vacio,Vacio)
  | mult(Nodo(y,L,R)) = Nodo((y*2),mult(L),mult(R));                (* Tampoco se como pero funciona*)

mult(S);
