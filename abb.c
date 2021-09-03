#include "abb.h"
#include <stdlib.h>
#include <stdio.h>

Arbol create(){
  return NULL;
}



Arbol agrega(Arbol a, int dato){
	if (isEmpty(a)) {
	    a = malloc(sizeof(TNodo));
	    a->dato = dato;
	    a->izq = NULL;
	    a->der = NULL;
  	}
	else {
		if (a->dato > dato)
			a->izq = agrega(a->izq, dato);
		else
			a->der = agrega(a->der, dato);
	}
	return a;
}

void muestraPreOrder(Arbol a){
	if (!isEmpty(a)) {
    	printf("%d\n", a->dato);
    	muestraPreOrder(a->izq);
    	muestraPreOrder(a->der);
  	}
}

Arbol busca(Arbol a, int dato){
	if (isEmpty(a)) return NULL;
	if (a->dato == dato) {
    	return a;
  	}
  	Arbol t = a->dato > dato ? a->izq:a->der;
  	return busca(t, dato);
}

Arbol buscaMayorDeMenores(Arbol a){
	if  (a->izq == NULL) {
    	return NULL;
  	}
  	else {
	    Arbol t;
    	for(t = a->izq; t->der != NULL; t = t->der);
    	return t;
  	}
}


Arbol elimina(Arbol a, int dato) {
	if (isEmpty(a)) return NULL;
	if (a->dato!=dato) {
		if (a->dato > dato)
			a->izq = elimina(a->izq, dato);
    	else
    		a->der = elimina(a->der, dato);
  	} 
  	else {
  	//Estoy en el Nodo que se desea eliminar
  		//Caso 1: No tiene hijos
  		if (isEmpty(a->izq) && isEmpty(a->der))	{
  			free(a);
  			a = NULL;
  			return a;
  		}
  		//Caso 2: Un hijo 
  		else if (isEmpty(a->izq) || isEmpty(a->der)) {
  			Arbol t = isEmpty(a->izq)? a->der : a->izq;
  			free(a);
  			a = t;
  			return a;
  		}
  		//Caso 3: 2 hijos
  		else {
  			//Encuentro el nodo que tengo que poner en su lugar, en este caso, es el mayor de los menores
  			Arbol t = buscaMayorDeMenores(a);
  			a->dato = t->dato;
  			//Borro el nodo duplicado que quedó
  			a->izq=elimina(a->izq, t->dato);
  		}

  	}
  	return a;
}

int isEmpty(Arbol a) {
	return a==NULL;
}

int altura(Arbol a) {
	if (isEmpty(a)) return 0;
  	int i = altura(a->izq);
  	int d = altura(a->der);
  	return i>d?i+1:d+1;
}


int sumEle(Arbol a) {
	int suma = 0;

	if(isEmpty(a)){
		printf("No hay elementos\n\n");
		return 0;
	}
	else{
		suma += sumEle(a->izq);
		suma += sumEle(a->der);
	printf("La suma de elementos es %d\n", suma);

	}

}
