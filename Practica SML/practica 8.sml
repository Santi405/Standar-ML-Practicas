(* --- 1.a ---  *)
type dino = {
  Nombre : string,
  Peso : real,
  Altura : real};
  
(* --- 1.b --- *)
val tyranno = {
  Nombre = "Tyrannosaurius",
  Peso = 7.0,
  Altura = 50.0} : dino;
   
(* --- 1.c --- *)
val bracchio = {
  Nombre = "bracchiosaurius",
  Peso = 50.0,
  Altura = 40.0} : dino;
  
(* --- 1.d --- *)
#Altura(tyranno);
 
 (* --- 1.e--- *)
 #Peso(bracchio);
 

(* --- 2.a --- *)

