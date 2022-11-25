#include<stdio.h>
#include<stdlib.h>
struct lista {
    int matricula;
    struct lista* proximo;
};

typedef struct lista Lista;

/* Fun��o de inicializa��o: retorna uma lista vazia */
    Lista* inicializa(void) {
    return NULL;
}

/* Inser��o no in�cio: retorna a lista atualizada */
Lista* insere(Lista* l, int i){
    Lista* novo = (Lista*) malloc(sizeof(Lista));
    novo->matricula = i;
    novo->proximo = l;

return novo;
}

/* Fun��o imprime: imprimir os valores dos elementos*/
void imprime(Lista* l){
    Lista* p; // vari�vel para percorrer a lista

    for(p = l; p != NULL; p = p->proximo){
        printf("\n Matricula: %d \n", p->matricula);
        printf("----------");
}
}

/* Fun��o vazia: retorna 1 se vazia ou retorna 0 se n�o vazia*/
int vazia(Lista* l){

    if( l == NULL)
        return 1;
    else
        return 0;

//return (l == NULL);
}

/* Fun��o retira: retira elemento da lista */
Lista* retira(Lista* l, int v){

    Lista* anterior = NULL; // ponteiro para elemento anterior
    Lista* p = l; // ponteiro para percorrer a lista


    /*procura elemento na listaq, guardando o anterior*/
    while ( p!= NULL && p->matricula != v){
        anterior = p;
        p = p->proximo;
    }

    /*verifica se achou elemento*/
    if (p==NULL)
    return l; //N�o achou: retornar a lista original

    /*retira elemento*/
    if (anterior == NULL){
        l = p->proximo;
    }
    else {
    //retira elemento do meio da lista
    anterior->proximo = p->proximo;
    }

    free(p);
    return l;
}

void libera(Lista* lista){
    Lista* p = lista;
    while(p != NULL){
        //Lista* temp = p->proximo; // guarda refer�ncia para o pr�ximo elemento
        free(p);
        //p = temp;
    }
}

int main(void){
    Lista* listaEncadeada; // declara uma lista n�o inicializada
    listaEncadeada = inicializa(); // inicializa lista como vazia
    listaEncadeada = insere(listaEncadeada, 4); // insere na lista o elemento 4
    listaEncadeada = insere(listaEncadeada, 8); // insere na lista o elemento 8

    imprime(listaEncadeada);
    listaEncadeada = insere(listaEncadeada, 9); // insere na lista o elemento 4
    listaEncadeada = insere(listaEncadeada, 10); // insere na lista o elemento 8
    listaEncadeada = retira(listaEncadeada, 4); // insere na lista o elemento 8
    imprime(listaEncadeada);

    return 0;
}
