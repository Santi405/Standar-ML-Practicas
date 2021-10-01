(*--- 1.1 ---*)
 
datatype nats = Zero | Succ of nats


fun sumaNats(x:nats, Zero) = x
|   sumaNats(Zero, y:nats) = y
|   sumaNats(x:nats, Succ(y):nats) = sumaNats(Succ(x), y);


val num1 = Succ(Succ(Succ(Zero)));(*3*)
val num2 = Succ(Succ(Zero));(*2*)

sumaNats(num1, num2);
