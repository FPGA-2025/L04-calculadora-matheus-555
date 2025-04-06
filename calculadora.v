module calculadora(
  input   [7:0] entrada_A,
  input   [7:0] entrada_B,
  input   [2:0] codigo,
  output  [7:0] saida
);

  // insira seu código aqui
  reg [7:0] _saida; 

  always @(codigo or entrada_A or entrada_B) begin
    case (codigo)
      3'b000:  _saida = 0;                     // Zerar
      3'b001:  _saida = entrada_A;             // mostrar_a
      3'b010:  _saida = entrada_B;             // mostrar_b
      3'b011:  _saida = entrada_A + entrada_B; // somar
      3'b100:  _saida = entrada_A - entrada_B; // subtrair
      default: _saida = 0; // inválida
    endcase
  end

  assign saida = _saida;

endmodule
