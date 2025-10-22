////////////////////////////////////////////////////////////////////////////////////////////////////
//
//
//
////////////////////////////////////////////////////////////////////////////////////////////////////

module sccb_interface (
    clk,                     // Basys 3 Osc = 100 MHz; MKR Vidor 400 = 48 - 200 MHz
    reset,
    transmit,
    receive,
    address,
    write_data,
    read_data,
    sio_c,                   // Max f_sioc = 400 kHz
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

    parameter idle    = 3'b000;
    parameter start   = 3'b001;
    parameter addr_tx = 3'b010;
    parameter data_tx = 3'b011;
    parameter stop    = 3'b111;

    
    // Synchronous Code Block
    // Implement FSM for SCCB communication
    // Assume that slave device will never send data, i.e don't worry about processing received data
    always @ ( posedge clk or posedge reset ) begin
        if (conditions) begin
            state_reg <= stop;
        end
        else begin 
            case (state_reg)
                idle:
                    sio_c <= 1'b0;
                start:
                    sio_c <= 1'b1;
                addr_tx:
                data_tx:
                stop:

                default: 
                    state_reg <= idle;
            endcase
        end
    end

    // Asynchronous Code Block
    // Consider controlling SIO_C from here
    if (conditions) begin
        
    end
    
endmodule