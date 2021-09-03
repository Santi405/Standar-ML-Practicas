//Esto pregunta si está definida la librería, en caso de no
//estarlo la define
#ifndef __ABB_H__
#define __ABB_H__

#include <stddef.h>

typedef struct _TNodo {
  int dato;
  struct _TNodo *izq, *der;
} TNodo;

typedef TNodo* Arbol;

/**
 * create: crea un árbol vacío y lo retorna.
 */
Arbol create();

/**
 * agrega: agrega el elemento dato en el árbol a.
 */
Arbol agrega(Arbol a, int dato);

/**
 * muestra: muestra usando el recorrido PreOrder.
 */
void muestraPreOrder(Arbol a); 

/**
 * buscar: devuelve un puntero haciendo referencia al Nodo que contiene el dato, si existe, en caso constrario retorna NULL.
 */
Arbol busca(Arbol a, int dato);

/**
 * elimina: retorna el árbol sin el elemento que se desea eliminar.
 */
Arbol elimina(Arbol a, int dato);

/**
 * isEmpty: retorna True (1) si el árbol esta vacio y False (0) en caso contrario.
 */
int isEmpty(Arbol a);


/**
 * altura: retorna la altura del árbol o 0 si es NULL.
 */
int altura(Arbol a);

/**
 * sumEle: recorre el arbol utilizando el recorrido primero en profundidad
*/

int sumEle(Arbol a);


#endif /* __ABB_H__ */
