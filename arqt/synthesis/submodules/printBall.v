module printBall(
    input wire clk_in,                                 // Clock base (vindo da placa)
    input wire i_rst,                                  // Reset: recomeça a imprimir o quadro
    input wire o_active,                               // Alto quando um pixel está sendo desenhado
    input wire [9:0] o_x,                              // Posição x atual do pixel
    input wire [8:0] o_y,                              // Posição y atual do pixel
    input wire [8:0] pos_yBarra1,
    input wire [8:0] pos_yBarra2,
    output reg color                                   // Indica se está imprimindo ou não (1 imprimindo, 0 não)
);

// Barra: 10x60
// Bolinha: 40x40
reg [8:0] y_bola = 236;                                // Posição inicial da bola em y
reg [9:0] x_bola = 316;                                // Posição inicial da bola em x
reg [19:0] delay = 0;                                  // Tempo que deve ser esperado até atualizar as coordenadas
reg startDelay = 1;                                    // Sinal que indica se o delay deve ser iniciado
reg direcao = 0;                                       // Indica a direção do movimento da bola: 0 (direita) e 1 (esquerda)
localparam tamBolaX = 8,                               // Tamanho da bola no eixo x
           tamBolaY = 8,                               // Tamanho da bola no eixo y
           pos_xBarra1 = 10,
           pos_xBarra2 = 620;
reg cor;                                               // Fio auxiliar para manipular o valor do registrador color

always @(posedge clk_in) begin                         // A cada pulso de clock
  if(startDelay) begin
    if(delay == 20'hFFFFF) begin                       // Verifica se o delay já chegou ao final
        startDelay <= 0;                               // Seta variável para finalizar delay
        delay <= 0;
    end
    else delay <= delay + 1'b1;
  end
  if(o_x == (638) && o_y == (479) && startDelay == 0) begin
    if(x_bola >= pos_xBarra1 && x_bola <= (pos_xBarra1+10) && y_bola >= pos_yBarra1 && y_bola <= (pos_yBarra1 + 90) )
      direcao = 0;
    if(x_bola >= pos_xBarra2 && x_bola <= (pos_xBarra2+10) && y_bola >= pos_yBarra2 && y_bola <= (pos_yBarra2 + 90) )
      direcao = 1;
    if(direcao == 1) x_bola <= x_bola - 5;
    else x_bola <= x_bola + 5;
    startDelay <=1;
  end
end


always @(posedge clk_in) begin                         // A cada pulso de clock
    color <= cor;                                      // O valor do fio 'cor' é armazenado no registrador 'color'
end

always @(*) begin
    if(o_active) begin                                 // Caso esteja na área ativa
        if(o_x >= x_bola && o_x <= (x_bola+tamBolaX)) begin        // Verifica se está na posição x da bola para desenhá-la
            if(o_y >= y_bola && o_y <= (y_bola+tamBolaY)) begin         // Verifica se está na posição y da bola para desenhá-la
                cor = 1;
            end
            else cor = 0;
        end
        else cor = 0;
    end
end
endmodule
