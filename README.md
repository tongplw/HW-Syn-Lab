# Hardware Synthesis Laboratory

[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/tongplw/HW-Syn-Lab-for-saving-my-works/master/LICENSE)


### ROM

``` Verilog
module rom(
    output reg [7:0] data,
    input wire [7:0] addr,
    input wire clk
    );
    
parameter width = 8;
parameter bits = 5;

reg [width-1:0] rom [2**bits-1:0];
initial $readmemb("rom.data", rom);

always@(posedge clk)
begin
    data <= rom[addr];
end
endmodule
```
