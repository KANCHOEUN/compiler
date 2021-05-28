#include <stdio.h>
#include <stdlib.h>
#include "type.h"

extern int syntax_err;
extern A_NODE *root;

void initialize();
int yyparse();
void print_ast();

int main()
{
    initialize();
    yyparse();
    if (syntax_err)
    {
        exit(1);
    }
    print_ast(root);
    return 0;
}