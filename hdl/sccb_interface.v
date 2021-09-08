////////////////////////////////////////////////////////////////////////////////////////////////////
//
//
//
////////////////////////////////////////////////////////////////////////////////////////////////////

module sccb_interface (
    clk,
    transmit,
    receive,
    address,
    write_data,
    read_data,
    sio_c,
    sio_d
);

    input   clk;
    input   transmit;
    input   receive;
    input   [7:0] address;    // the length of the address and data fields
    input   [7:0] write_data;
    output  [7:0] read_data;
    output  sio_c;
    inout   sio_d;

    reg [1:0] state_reg;

    parameter idle  = 2'b00;
    parameter start = 2'b01;
    // parameter 

    always @ ( posedge clk ) begin
        case (state_reg)
            idle:
                sio_c <= 1'b0;
            start:
                sio_c <= 1'b1
            default: 
                state_reg <= idle;
        endcase
    end
    
endmodule