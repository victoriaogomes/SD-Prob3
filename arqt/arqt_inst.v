	arqt u0 (
		.buttons_export                           (<connected-to-buttons_export>),                           //               buttons.export
		.clk_clk                                  (<connected-to-clk_clk>),                                  //                   clk.clk
		.enableplacar_receiver_beginbursttransfer (<connected-to-enableplacar_receiver_beginbursttransfer>), // enableplacar_receiver.beginbursttransfer
		.lcd_display_readdata                     (<connected-to-lcd_display_readdata>),                     //           lcd_display.readdata
		.lcd_enable_writeresponsevalid_n          (<connected-to-lcd_enable_writeresponsevalid_n>),          //            lcd_enable.writeresponsevalid_n
		.lcd_rs_writeresponsevalid_n              (<connected-to-lcd_rs_writeresponsevalid_n>),              //                lcd_rs.writeresponsevalid_n
		.lcd_rw_writeresponsevalid_n              (<connected-to-lcd_rw_writeresponsevalid_n>),              //                lcd_rw.writeresponsevalid_n
		.placar_receiver_writebyteenable_n        (<connected-to-placar_receiver_writebyteenable_n>),        //       placar_receiver.writebyteenable_n
		.reset_reset_n                            (<connected-to-reset_reset_n>),                            //                 reset.reset_n
		.resetfpga_beginbursttransfer             (<connected-to-resetfpga_beginbursttransfer>),             //             resetfpga.beginbursttransfer
		.rs232_RXD                                (<connected-to-rs232_RXD>),                                //                 rs232.RXD
		.rs232_TXD                                (<connected-to-rs232_TXD>),                                //                      .TXD
		.rs232_1_RXD                              (<connected-to-rs232_1_RXD>),                              //               rs232_1.RXD
		.rs232_1_TXD                              (<connected-to-rs232_1_TXD>),                              //                      .TXD
		.vga_b_writeresponsevalid_n               (<connected-to-vga_b_writeresponsevalid_n>),               //                 vga_b.writeresponsevalid_n
		.vga_g_writeresponsevalid_n               (<connected-to-vga_g_writeresponsevalid_n>),               //                 vga_g.writeresponsevalid_n
		.vga_hs_writeresponsevalid_n              (<connected-to-vga_hs_writeresponsevalid_n>),              //                vga_hs.writeresponsevalid_n
		.vga_r_writeresponsevalid_n               (<connected-to-vga_r_writeresponsevalid_n>),               //                 vga_r.writeresponsevalid_n
		.vga_vs_writeresponsevalid_n              (<connected-to-vga_vs_writeresponsevalid_n>),              //                vga_vs.writeresponsevalid_n
		.placar_sender_readdata                   (<connected-to-placar_sender_readdata>),                   //         placar_sender.readdata
		.enableplacar_sender_writeresponsevalid_n (<connected-to-enableplacar_sender_writeresponsevalid_n>)  //   enableplacar_sender.writeresponsevalid_n
	);

