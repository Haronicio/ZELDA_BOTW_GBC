#include <gb/gb.h> //Bibliothéque principale
#include <gb/drawing.h> //Bibliothèque pour le dessin
#include <asm/types.h>//bibliothèque bit
#include <stdio.h>

int main(void)
{
	//Les variables :
	BYTE a = -5;
	UBYTE b = 10;
    UBYTE i;
    char * s;
    s = "";
	gets(s);
    printf("%s\n",s );
   // printf("BYTE et UBYTE (utilise pour char):%d\n WORD et UWORD (utilise pour int):%d  D(U)WORD et L(U)WORD (utilise pour long) : %d",(int)sizeof(UBYTE),(int)sizeof(WORD),(int)sizeof(DWORD) );
    printf ("Bienvenue dans GAMBOY  \nProgramming");
    mode(M_TEXT_INOUT);//mode de l'écran : Drawing dessin text out : gros texte text inout : ? No scroll : pas de déplacement d'écran
    printf ("\nPress Start");
    waitpad (J_START); // les autres clés sont J_A, J_UP, J_SELECT, etc.
    printf ("\nN'est-ce pas facile!");
    printf("mode %d\n",(int)get_mode() );
    // delay(1000);//16 bit donc jusquà 8 heures de delay
    printf("a\n b\n c\n d\n e\n f\n g\n h\n i\n g\n h\n i\n g\n h\n i\n");
    waitpad(J_START);
    for (b = 0; b < 20; ++b)
    {
    	plot_point(1,b);
    	color(2,NULL,NULL);
    	// del2ay(500);
    }
    delay(1000);
 	waitpad (J_START);
 	// gotogxy(19,17);
 	// gprintf("salut");
 	delay(500);
    
    for (i = 0; i < 17; ++i)//si on dépace la limite la gameboy crash
    {
        gotogxy(1,i);
        gprintf("salut");
    }
 	// reset();//redémarre la rom
    
    // return 0;
    /*Background - scrolling background scene tiles
    Window - HUD, 1 row of tiles at the top of the screen displaying score + lives
    Sprites - movable objects in the scene, player, enemies, bullets, effects, etc...*/
    waitpad (J_START);
    display_off();
    gotogxy(15,1);
    gprintf("salut");
    delay(1000);
    waitpad (J_START);
    DISPLAY_ON;
    
    gets(s);
    printf("%s\n",s );

}