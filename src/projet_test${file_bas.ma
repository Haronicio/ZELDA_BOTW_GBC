AREA .  .ABS.
	RADIX HEX
	BASE 0000
	SIZE 0000
	ATTRIB ABS OVR
	GLOBALS
		l__DATA	0000
		l__HEAP	0000
		l__BSEG	0000
		l_.  .ABS.	0000
		l__GSFINAL	0000
		l__ISEG	0000
		s_.  .ABS.	0000
		l__HOME	0000
		s__HEADER	0000
		l__XSEG	0000
		.init	0000
		l__OVERLAY	0000
		l__GSINIT	0000
		l__GSINITTAIL	0001
		l__BSS	008D
		l__HEADER	01EF
		s__CODE	0200
		l__LIT	0B5A
		l__CODE	19F4
		s__HOME	1BF4
		s__LIT	1BF4
		s__GSINITTAIL	274E
		s__GSINIT	274E
		s__GSFINAL	274F
		.OAM	C000
		s__DATA	C0A0
		s__BSS	C0A0
		s__HEAP	C12D
		s__BSEG	C12D
		s__ISEG	C12D
		s__XSEG	C12D
		s__OVERLAY	C12D
		.STACK	E000
		.refresh_OAM	FF80
AREA _CODE
	RADIX HEX
	BASE 0200
	SIZE 19F4
	ATTRIB REL CON
	GLOBALS
		.set_mode	0200
		.remove_VBL	0210
		.remove_LCD	0216
		.remove_TIM	021C
		.remove_SIO	0222
		.remove_JOY	0228
		.add_VBL	022E
		.add_LCD	0234
		.add_TIM	023A
		.add_SIO	0240
		.add_JOY	0246
		.remove_int	024C
		.add_int	026C
		.wait_vbl_done	0288
		_wait_vbl_done	0288
		_display_off	0299
		.display_off	0299
		.serial_IO	02BA
		_mode	02E9
		_get_mode	02F2
		_enable_interrupts	02F7
		_disable_interrupts	02F9
		_reset	02FB
		.reset	02FB
		_set_interrupts	0301
		_remove_VBL	030C
		_remove_LCD	0317
		_remove_TIM	0322
		_remove_SIO	032D
		_remove_JOY	0338
		_add_VBL	0343
		_add_LCD	034E
		_add_TIM	0359
		_add_SIO	0364
		_add_JOY	036F
		_clock	037A
		__printTStates	0383
		_main	0384
		_set_bkg_palette	03EF
		_set_sprite_palette	041A
		_set_bkg_palette_entry	0445
		_set_sprite_palette_entry	046D
		_cpu_slow	0495
		_cpu_fast	04B0
		_cgb_compatibility	04B7
		.set_sprite_prop	0500
		_set_sprite_prop	050D
		_scroll_bkg	0518
		_move_win	052E
		.padup	0537
		_waitpadup	0537
		.jpad	0547
		.wait_pad	0574
		_joypad	057B
		_waitpad	0580
		.mv_sprite	058A
		_move_sprite	0599
		_get_win_tiles	05A6
		_get_win_data	05BA
		_get_bkg_data	05BA
		_get_sprite_data	0607
		_set_win_data	0637
		_set_bkg_data	0637
		_set_sprite_data	0684
		.tmode_inout	06B3
		_getchar	0969
		_gets	097A
		_send_byte	0991
		_receive_byte	09A4
		font_copy_uncompressed	09B5
		font_copy_compressed	09EB
		font_load	0A40
		font_copy_current	0A88
		font_set	0AD0
		.put_char	0ADD
		.out_char	0AF6
		.del_char	0AFD
		_putchar	0B57
		_setchar	0B5E
		_font_load	0B67
		_font_set	0B75
		_font_init	0B84
		_print_repeat	0BA6
		_gotoxy	0BBD
		_cls	0BC8
		.cls	0BC8
		_posx	0BE3
		_posy	0BF4
		.cr_curs	0C1C
		.adv_curs	0C31
		.tmode	0C8D
		.tmode_out	0CB6
		.copy_vram	0CC6
		_get_data	0CD5
		_set_data	0CD5
		_set_win_tiles	0CE8
		_scroll_win	0CFC
		.get_xy_wtt	0D12
		.get_xy_btt	0D24
		.get_xy_tt	0D33
		_get_tiles	0D64
		.gmode	0D7D
		.vbl	0DDF
		.lcd	0DEA
		.draw_image	0DF7
		.switch_data	0E01
		.adv_gcurs	0E38
		.circle	0E55
		.horlin	0EF8
		.verlin	0F30
		.circplot	0F8C
		.box	100A
		.line	10E0
		.xonly	1201
		.yonly	1350
		.plot	1371
		.wrbyte	138E
		.getpix	1410
		.wrtchr	1445
		_gotogxy	14A9
		_wrtchr	14B4
		_getpix	14C9
		_color	14D5
		_circle	14E4
		_box	14FE
		_line	1522
		_plot_point	153A
		_plot	154E
		_switch_data	156A
		_draw_image	1585
		.get_sprite_tile	1598
		_get_sprite_tile	15A5
		.scroll_sprite	15AE
		_scroll_sprite	15BF
		_printf	180A
		_sprintf	1877
		_move_bkg	18CF
		_puts	18D8
		.set_xy_wtt	190E
		.set_xy_btt	191F
		.set_xy_tt	192E
		_set_tiles	195F
		.set_sprite_tile	1978
		_set_sprite_tile	1985
		.delay	1990
		_delay	19CA
		_get_bkg_tiles	19D3
		.get_sprite_prop	19E7
		_get_sprite_prop	19F4
		.init_vram	19FD
		.init_wtt	1A0B
		.init_btt	1A1B
		.init_tt	1A29
		.sgb_check	1A2F
		_sgb_check	1A2F
		.sgb_transfer	1A7C
		.hiramcpy	1ADD
		_hiramcpy	1AE4
		__divschar	1AF4
		__modschar	1B00
		__divsint	1B0B
		__modsint	1B1C
		__divuchar	1B2B
		__moduchar	1B37
		__divuint	1B42
		__moduint	1B53
		.mod8	1B62
		.div8	1B62
		.mod16	1B6A
		.div16	1B6A
		.modu8	1BA0
		.divu8	1BA0
		.modu16	1BA3
		.divu16	1BA3
		_set_bkg_tiles	1BE0
AREA _HEADER
	RADIX HEX
	BASE 0000
	SIZE 01EF
	ATTRIB ABS OVR
	GLOBALS
		_exit	01D1
AREA _HOME
	RADIX HEX
	BASE 1BF4
	SIZE 0000
	ATTRIB REL CON
AREA _LIT
	RADIX HEX
	BASE 1BF4
	SIZE 0B5A
	ATTRIB REL CON
	GLOBALS
		_font_ibm_fixed	1D2C
		_font_ibm_fixed_tiles	1E2E
		.y_table	262E
AREA _GSINIT
	RADIX HEX
	BASE 274E
	SIZE 0000
	ATTRIB REL CON
	GLOBALS
		gsinit	274E
AREA _GSINITTAIL
	RADIX HEX
	BASE 274E
	SIZE 0001
	ATTRIB REL CON
AREA _GSFINAL
	RADIX HEX
	BASE 274F
	SIZE 0000
	ATTRIB REL CON
AREA _DATA
	RADIX HEX
	BASE C0A0
	SIZE 0000
	ATTRIB REL CON
AREA _BSS
	RADIX HEX
	BASE C0A0
	SIZE 008D
	ATTRIB REL CON
	GLOBALS
		__cpu	C0A0
		.mode	C0A1
		__io_out	C0A2
		__io_in	C0A3
		__io_status	C0A4
		.vbl_done	C0A5
		_sys_time	C0A6
		.sys_time	C0A6
		.int_0x40	C0A8
		.int_0x48	C0B8
		.int_0x50	C0C8
		.int_0x58	C0D8
		.int_0x60	C0E8
		font_current	C0FF
		font_first_free_tile	C102
		font_table	C103
		.curx	C115
		.cury	C116
		.fg_colour	C117
		.bg_colour	C118
AREA _HEAP
	RADIX HEX
	BASE C12D
	SIZE 0000
	ATTRIB REL CON
	GLOBALS
		_malloc_heap_start	C12D
AREA _OVERLAY
	RADIX HEX
	BASE C12D
	SIZE 0000
	ATTRIB REL CON
AREA _ISEG
	RADIX HEX
	BASE C12D
	SIZE 0000
	ATTRIB REL CON
AREA _BSEG
	RADIX HEX
	BASE C12D
	SIZE 0000
	ATTRIB REL CON
AREA _XSEG
	RADIX HEX
	BASE C12D
	SIZE 0000
	ATTRIB REL CON
MODULES
	FILE C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gb/crt0.o
		NAME Runtime
	FILE C:\Users\Haron\AppData\Local\Temp/lcc118722.o
		NAME lcc118720
LIBRARIES
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gb/gb.lib
		MODULE cgb.o
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gb/gb.lib
		MODULE set_prop.o
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gb/gb.lib
		MODULE scroll_b.o
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gb/gb.lib
		MODULE mv_win.o
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gb/gb.lib
		MODULE pad.o
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gb/gb.lib
		MODULE mv_spr.o
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gb/gb.lib
		MODULE get_wi_t.o
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gb/gb.lib
		MODULE get_data.o
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gb/gb.lib
		MODULE set_data.o
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gb/gb.lib
		MODULE input.o
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gb/gb.lib
		MODULE serial.o
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gb/gb.lib
		MODULE font.o
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gb/gb.lib
		MODULE cpy_data.o
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gb/gb.lib
		MODULE set_wi_t.o
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gb/gb.lib
		MODULE scroll_w.o
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gb/gb.lib
		MODULE ibmfixed.o
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gb/gb.lib
		MODULE get_xy_t.o
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gb/gb.lib
		MODULE drawing.o
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gb/gb.lib
		MODULE get_spr.o
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gb/gb.lib
		MODULE scroll_s.o
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gbz80/gbz80.lib
		MODULE printf.o
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gb/gb.lib
		MODULE mv_bkg.o
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gbz80/gbz80.lib
		MODULE puts.o
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gb/gb.lib
		MODULE set_xy_t.o
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gb/gb.lib
		MODULE set_spr.o
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gb/gb.lib
		MODULE delay.o
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gb/gb.lib
		MODULE get_bk_t.o
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gb/gb.lib
		MODULE get_prop.o
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gb/gb.lib
		MODULE init_tt.o
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gb/gb.lib
		MODULE sgb.o
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gb/gb.lib
		MODULE hiramcpy.o
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gbz80/gbz80.lib
		MODULE div.o
	LIBRARY C:\Users\Haron\Desktop\Documents\Programmation\GBC\COMPILER\lib/gb/gb.lib
		MODULE set_bk_t.o
USERBASEDEF
	_CODE=0x0200
	_DATA=0xC0A0
	_CODE_1=0x4000
USERGLOBALDEF
	.OAM=0xC000
	.STACK=0xE000
	.refresh_OAM=0xFF80
	.init=0x0000