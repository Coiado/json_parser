
%{
#include <stdlib.h>
void yyerror(char *);

#include "y.tab.h"

%}


%%

[+-]?([0-9]*[.])?[0-9]+ {
		  return NUMBER;
		}

[{]     {
          return CHAVEABRE;
        }

[}]     {
          return CHAVEFECHA;
        }
[\[]     {
          return COLCHABRE;
        }

[\]]     {
          return COLCHFECHA;
        }

[,]     {
          return VIRGULA;
        }

[:]     {
          return DOISPONTOS;
        }
[A-Za-z]+ {
          return PALAVRA;
}

\"[A-Za-z0-9 ]+\"  {
		  return STRING;
		}

[ \t\n;]+ ;

%%

int yywrap() {
  return 1;
}
