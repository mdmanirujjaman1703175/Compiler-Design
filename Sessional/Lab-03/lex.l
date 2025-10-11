%{
    #include<stdio.h>
    #include<stdlib.h>
    #include<string.h>
%}

KEYWORD  int|float|double|char|return|if|else|for|while|include
OP_INC     \+\+
OP_DEC     \-\-
OP_ARITH   \+|\-|\*|\/|\%|\+=|\-=|\*=|\/=
OP_LOGIC   &&|\|\||!|==|!=|<=|>=|<|>   
OP_BIT     &|\||\^|~|<<|>>  
OP_ASSIGN  =
DELIM     [;,\.\[\]\(\)\{\}] 
LETTER   [a-zA-Z]
DIGIT    [0-9]
ID       ({LETTER}|_)({LETTER}|{DIGIT}|_)*
INT_CONST {DIGIT}+
FLOAT_CONST {DIGIT}+\.{DIGIT}+
CHAR_CONST  \'[a-zA-Z0-9]\'
STRING_CONST  ["]([^"\n]|\\.)*["]
WS [ \t\n]+
SINGLE_CMT  \/{2}.*
MULTI_CMT "/*"([^*]|\*+[^*/])*\*+"/"



%%

{KEYWORD}    {printf(" %s -> keyword \n",yytext);}
{OP_INC}     {printf(" %s -> Inc operator \n",yytext);}
{OP_DEC}     {printf(" %s -> Dec operator \n",yytext);}
{OP_ARITH}   {printf(" %s -> Arithmatic operator \n",yytext);}
{OP_LOGIC}   {printf(" %s -> Logical operator \n",yytext);}
{OP_BIT}     {printf(" %s -> Bitwise operator \n",yytext);}
{OP_ASSIGN}  {printf(" %s -> Assignment operator \n",yytext);}
{ID}         {printf(" %s -> Identifier \n",yytext);}
{INT_CONST}  {printf(" %s -> int_Number \n",yytext);}
{FLOAT_CONST} {printf(" %s -> float_number \n",yytext);}
{CHAR_CONST}  {printf(" %s -> Character \n",yytext);}
{STRING_CONST}  {printf(" %s -> String \n",yytext);}
{SINGLE_CMT}  {printf(" %s -> Single_LIne_COmment\n",yytext);}
{MULTI_CMT}  {printf(" %s -> Multiline_LIne_COmment\n",yytext);}
{DELIM}      {printf(" %s -> delimiter\n",yytext);}
{WS}  ;/* white space and newline ignored */
.         {printf("Unknwon\n");}


%%

int main()
{
    printf("Enter an code :");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}


