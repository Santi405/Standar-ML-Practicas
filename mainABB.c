
#include <stdio.h>
#include <stdlib.h>
#include "abb.h"

int main (){
  Arbol a;
  a = create();
  a = agrega(a, 5);
  a = agrega(a, 3);
  a = agrega(a, 1);
  a = agrega(a, 0);
  a = agrega(a, 2);
  a = agrega(a, 4);
  muestraPreOrder(a);
  printf("La altura es: %d\n", altura(a));
  a = elimina(a, 1);
  a = elimina(a, 2);
  muestraPreOrder(a);
  printf("La altura es: %d\n", altura(a));
  printf("La suma de los elementos de los nodos es %d\n", sumEle(a));
  return 0;
}
