module top(
    input wire CLK,             // Clock da placa.
    input wire CLK_EN,          // Clock para habilitar a instrução customizada
    input wire [31:0] dataa,    // Entrada para envio de coordenadas de x e y
    input wire RST_BTN,         // Botão de reset
    output wire VGA_HS_O,       // Output do sinal horizontal
    output wire VGA_VS_O,       // Output do sinal vertical
    output wire VGA_R,    // Output red da VGA de 1-bit
    output wire VGA_G,    // Output green da VGA de 1-bit
    output wire VGA_B     // Output blue da VGA de 1-bit
    );

    wire rst = ~RST_BTN;        // Assumindo que o reset esteja ativo em sinal baixo
    wire [9:0] x;               // Posição x atual do pixel: 10-bit value: 0-1023
    wire [8:0] y;               // Posição x atual do pixel:  9-bit value: 0-511
    wire activeArea;            // Armazena se um pixel está sendo desenhado (área ativa)
    wire selectColor1;          // Fio para informar se a cor do desenho será preta ou branca
    wire selectColor2;          // Fio para informar se a cor do desenho será preta ou branca
    wire aux;                   // Utilizado para realizar uma or entre selectColor1 e selectColor2
    reg [9:0] yBar1;            // Registrador para armazenar o valor da posição y da barra 1
    reg [9:0] yBar2;            // Registrador para armazenar o valor da posição y da barra 2

    vga800x600 display (
        .i_clk(CLK),            // Clock da FPGA
        .i_rst(rst),            // Botão de reset
        .o_hs(VGA_HS_O),        // Sinal de sincronização horizontal
        .o_vs(VGA_VS_O),        // Sinal de sincronização vertical
        .o_x(x),                // Posição x atual do pixel
        .o_y(y),                // Posição y atual do pixel
        .o_active(activeArea)   // Indicação de área ativa
    );

    printBar printBar_1 (
      .clk_in(CLK),             // Clock da FPGA
      .clk_en(CLK_EN),          // Clock Enable
      .i_rst(rst),              // Botão de reset
      .o_active(activeArea),    // Indicador de área ativa
      .o_x(x),                  // Posição x atual do pixel
      .o_y(y),                  // Posição y atual do pixel
      .coordY(yBar1),           // Nova posição y da barra 1
      .color(selectColor1)      // Saída para indicar a cor do que deve ser escrito
    );

    printBar #(.x_barra(285)) printBar_2 (
      .clk_in(CLK),             // Clock da FPGA
      .clk_en(CLK_EN),          // Clock Enable
      .i_rst(rst),              // Botão de reset
      .o_active(activeArea),    // Indicador de área ativa
      .o_x(x),                  // Posição x atual do pixel
      .o_y(y),                  // Posição y atual do pixel
      .coordY(yBar2),           // Nova posição do y da barra 2
      .color(selectColor2)      // Saída para indicar a cor do que deve ser escrito
    );


    always @(posedge CLK_EN) begin
      if(dataa[10] == 0) yBar1 <= dataa[9:0];
      else yBar2 <= dataa[9:0];
    end

    assign aux = selectColor1 | selectColor2;

    // Caso color seja 1, RGB = branco. Caso seja 0 = preto
    assign VGA_R = (aux == 1'b1)? 1'b1 : 1'b0;
    assign VGA_G = (aux == 1'b1)? 1'b1 : 1'b0;
    assign VGA_B = (aux == 1'b1)? 1'b1 : 1'b0;

endmodule
