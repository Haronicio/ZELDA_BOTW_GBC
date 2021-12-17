#include <gb/gb.h>
#include <gb/cgb.h>
#include <time.h>
// #include <stdio.h>
#include "Link.c"

#define part1 0
#define part2 2
// #define CLOCKS_PER_SEC 30

#define  showplayer {show_16x16sprite(player.sprite,player.x,player.y);\
											default_flip_16x16sprite();\}
#define default_flip_16x16sprite() set_sprite_prop(0, get_sprite_prop(0) & ~S_FLIPX);\
								set_sprite_prop(1, get_sprite_prop(1) & ~S_FLIPX);\

//plus tard une fonction permettra d'initialiser chaque espace VRAM ex: espace Link espace Arbre espace BKG
//get_sprite_prop(0) & ~: on garde tous les params du sprite (0 ou 1) et on inverse son Flip
// ~inverse(00100010->11011101), & intesection(1 1 -> 1 sinon 0)
//Annule le flip du jouer

typedef unsigned char UCHAR;
WORD dt = 0;
void input(void);
void flip_16x16sprite(UINT8 ,UINT8 ,UINT8 );//tourne un sprite 16x16 un sprite 16x16 est toujours en DEUX PARTIES
void show_16x16sprite( UCHAR *,UINT8,UINT8);//Ajoute un sprite a la VRAM
void move_player(void);


struct Player{
			UINT8 x;
			UINT8 y;
			UINT8 live ;
			UINT8 stamina ;
			// void (*showit)(unsigned * char,UINT8,UINT8);
			UCHAR * sprite ;
	};
	struct Player player;


int main(void)
{

	

	player.x = 75;
	player.y = player.x;
	// player.showit = show_16x16sprite;
	SPRITES_8x16;
	set_sprite_palette(0,2,palette);
	// player.showit(player.sprite,player.x,player.y);

	// show_16x16sprite(player.sprite,player.x,player.y);


	SHOW_SPRITES;
	while(1)
	{
		delay((UWORD)(1000/CLOCKS_PER_SEC - dt));//ou CLOCKS_PER_SEC
		dt = (WORD)(clock()*1000/CLOCKS_PER_SEC);
		input();
		// printf("%d",(int)dt);
		/*if (joypad() == J_A)
		{
			i=1;
		}
		else
		{
			i=0;
		}
		switch (i)
		{
			case 0: set_sprite_prop(0,0);
					set_sprite_prop(1,0);
					break;
			case 1: set_sprite_prop(0,1);
					set_sprite_prop(1,1);
					break;
		}*/
		/*************************************SYNCRO-V***************************************/
		//Vertical sync le seul moyen d'empêcher des bugs d'affichage, cause des freezs		|
		dt =((WORD)(clock()*1000/CLOCKS_PER_SEC))-dt;//										|
		if ((UWORD)(1000/CLOCKS_PER_SEC) - dt <= 0)//										|
		{//																					|
			if (dt > (UWORD)(1000/CLOCKS_PER_SEC))//										|
			{//																				|
				dt = 0;//																	|
			}//																				|
			else{dt = -dt;}//																|
		}//																					|	
		/*************************************SYNCRO-V***************************************/
	}
	return 0;
}

void input(void)
{
						// D U L R
		switch(joypad())


		{	case J_UP:
							player.sprite = link_back;
							showplayer;
							player.y --;
							break;
			case J_DOWN:	player.sprite = link_front;
							showplayer;
							player.y ++;
							break;
			case J_RIGHT: 	player.sprite = link_turn;//on refait la fonction sauf que les tiles sont inversé par flip_16x16sprite
							set_sprite_data(0,4,player.sprite);//j'ai trouvé de solution pour arrêter les bugs d'affichage voir sycnro verticale plus haut
							flip_16x16sprite(0,1,S_FLIPX);	
							player.x ++;
							move_sprite(0,player.x,player.y);
							move_sprite(1,player.x +8,player.y);
							break;
			case J_LEFT: 	player.sprite = link_turn;
							showplayer;
							player.x --;
							// delay(-1);
							break;

				case 0x6U:	showplayer;
							player.y --;
							player.x --;
							break;							//left + up
				case 0xAU:	showplayer;
							player.y ++;
							player.x --;
							break;							//left + down
				case 0x5U:	//player.sprite = link_back;
							showplayer;
							player.y --;
							player.x ++;
							break;							//right + up

				case 0x9U:	//player.sprite = link_front;
							showplayer;
							player.y ++;
							player.x ++;
							break;							//right + down

				/*default :	player.sprite = link_stay;//il n'y a pas ca sur la version originale
							showplayer;
							default_flip_16x16sprite();
							break;*/
		}

		

	
} 
void flip_16x16sprite(UINT8 sprite1,UINT8 sprite2,UINT8 flip)
{
	set_sprite_prop(sprite1,flip);//tourne les sprites
	set_sprite_prop(sprite2,flip);

	set_sprite_tile(sprite2,part1);//inverse les sprites des tuiles
	set_sprite_tile(sprite1,part2);
}
void show_16x16sprite(UCHAR *sprite, UINT8 x, UINT8 y)
{

	set_sprite_data(0,4,sprite);//on charge les 4 partis qui composent le sprite 16x16 

	set_sprite_tile(0,part1);//ATTENTION NORMALEMENT TANT QUE SET_SPRITE_TILE EST DECLARE , IL NE FAUT LE RE-APPELER (car tiles sont des eplacements de VRAM)
	set_sprite_tile(1,part2);

	move_sprite(0,x,y);
	move_sprite(1,x+8,y);
}

	void move_player(void)//ca ralentirais le jeu trop de fonction
{
	
}