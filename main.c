#include <stdio.h>
#include <stdlib.h>
#include "type.h"

extern int syntax_err;
extern int semantic_err;
extern A_NODE *root;

FILE *fout;

void initialize();
int yyparse();
void print_ast();
void print_sem_ast();
void semantic_analysis();
void code_generation();

int main()
{
    if ((fout = fopen("a.asm", "w")) == NULL)
    {
        printf("can not open output file: a.asm\n");
        exit(1);
    }

    initialize();
    yyparse();
    if (syntax_err)
        exit(1);
    // print_ast(root);

    semantic_analysis(root);
    if (semantic_err)
        exit(1);
    // print_sem_ast(root);

    code_generation(root);
    return 0;
}

