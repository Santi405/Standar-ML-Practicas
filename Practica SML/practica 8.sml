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
type dino = {name:string, weight:real, height:real};

fun higher(dino :: (dinolst : dino list)) = 
  let
    fun ad(maxHeight : dino, nil) = maxHeight
    |   ad(maxHeight : dino, ((dino as {height=h, ...}) : dino) :: lst) =
      if (h > #height(maxHeight)) then ad(dino, lst) else ad(maxHeight,lst)
in
  ad(dino, dinolst)
end;


(* --- 2.b --- *)
fun weighestDino(dino ::(dinoLst : dino list)) =
	let
    fun ad(max : dino, nil) = nil
    |   ad(max : dino, ((dino as {weight = w, ... }) : dino) :: lst) =
    if(w > #weight(max)) then ad(dino, lst) else ad(max,lst)
in
  ad(dino,dinoLst)
end;


(* --- 3.a --- *)
fun encontrarNombre(n : string, studs : student list) =
let 
  fun ad(name: string, nil, stud : student list) = stud
    | ad(name: string, ((s as {Name = n, ...}):student)::lst, stud: student list) =
  if (name = n) then ad(name, lst, [s]@stud) else ad(name, lst, stud)
in
   ad(n, studs, [])
end;


(* --- 3.b --- *)
fun encontrarID(id : int, nil) = nil
  | encontrarID(id : int, ((s as {ID = i, Courses=d ...}) : student) :: lst) =
    if (i = id) then d else encontrarID(id, lst);
    
    
(* --- 3.c --- *)+
fun strcmp(c : string, nil : string list) = false
  | strcmp(c : string, x::xs) =
  if (c = x) then true else strcmp(c,xs);

fun estCursos(curso : string, nil : student list) = nil : string list
  | estCursos(curso : string, x::xs) = if(strcmp(curso,#Courses(x))) then [#Name x]@estCursos(curso, xs) else estCursos(curso, xs);
