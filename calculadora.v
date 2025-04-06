module calculadora(
  input   [7:0] entrada_A,
  input   [7:0] entrada_B,
  input   [2:0] codigo,
  output  [7:0] saida
);

  // insira seu código aqui

  // INICIO FORMA 1 (USANDO REG :/ )

  // reg [7:0] _saida;

  // always @(codigo or entrada_A or entrada_B) begin
  //   case (codigo)
  //     3'b000:  _saida = 8'b0;                  // Zerar
  //     3'b001:  _saida = entrada_A;             // mostrar_a
  //     3'b010:  _saida = entrada_B;             // mostrar_b
  //     3'b011:  _saida = entrada_A + entrada_B; // somar
  //     3'b100:  _saida = entrada_A - entrada_B; // subtrair
  //     default: _saida = 8'b0;                  // inválida
  //   endcase
  // end

  // assign saida = _saida;

  // FIM FORMA 1

  // INICIO FORMA 2

  assign saida = (codigo == 3'b000) ? 8'b0                  : // Zerar
                 (codigo == 3'b001) ? entrada_A             : // mostrar_a
                 (codigo == 3'b010) ? entrada_B             : // mostrar_b
                 (codigo == 3'b011) ? entrada_A + entrada_B : // somar
                 (codigo == 3'b100) ? entrada_A - entrada_B : // subtrair
                 8'b0;                                        // inválida

  // FIM FORMA 2 

endmodule
