//
// Verilog description for cell lab3, 
// Sat Jun 14 19:03:51 2014
//
// Precision RTL Synthesis, 2008a.47//


module lab3 ( clk, reset, i_valid, i_data, o_data ) ;

    input clk ;
    input reset ;
    input i_valid ;
    input [7:0]i_data ;
    output [7:0]o_data ;

    wire [8:0]counter;
    wire clk_int, reset_int, i_valid_int, nx7124z1, nx7124z2, nx7124z3, nx7124z4, 
         nx62259z1, nx62259z2, nx61262z1, nx60265z1, nx59268z1, nx58271z1, 
         nx57274z1, nx56277z1, nx55280z1, nx22349z1, nx23346z1, nx24343z1, 
         nx25340z1, nx26337z1, nx27334z1, nx28331z1, nx29328z1;
    wire [243:0] xmplr_dummy ;




    modgen_counter_8_0 modgen_counter_o_data (.clock (clk_int), .sclear (
                       nx7124z1), .cnt_en (i_valid_int), .px51 (nx62259z1), .px20 (
                       nx62259z2), .px46 (nx61262z1), .px42 (nx60265z1), .px17 (
                       nx59268z1), .px13 (nx58271z1), .px9 (nx57274z1), .px5 (
                       nx56277z1), .px1 (nx55280z1)) ;
    modgen_counter_9_0 modgen_counter_counter (.clock (clk_int), .q ({counter[8]
                       ,counter[7],counter[6],counter[5],counter[4],counter[3],
                       counter[2],counter[1],counter[0]}), .sclear (reset_int), 
                       .cnt_en (i_valid_int)) ;
    cycloneii_io reset_ibuf (.combout (reset_int), .padio (reset), .datain (1'b0
                 ), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam reset_ibuf.operation_mode = "input";
                 
                 defparam reset_ibuf.output_register_mode = "none";
                 
                 defparam reset_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam reset_ibuf.oe_register_mode = "none";
                 
                 defparam reset_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam reset_ibuf.input_register_mode = "none";
    cycloneii_lcell_ff reg_out_o_data_obuf_7_ (.regout (nx29328z1), .datain (
                       nx62259z1), .sdata (1'b0), .clk (clk_int), .ena (
                       nx62259z2), .aclr (1'b0), .sclr (nx7124z1), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_out_o_data_obuf_6_ (.regout (nx28331z1), .datain (
                       nx61262z1), .sdata (1'b0), .clk (clk_int), .ena (
                       nx62259z2), .aclr (1'b0), .sclr (nx7124z1), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_out_o_data_obuf_5_ (.regout (nx27334z1), .datain (
                       nx60265z1), .sdata (1'b0), .clk (clk_int), .ena (
                       nx62259z2), .aclr (1'b0), .sclr (nx7124z1), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_out_o_data_obuf_4_ (.regout (nx26337z1), .datain (
                       nx59268z1), .sdata (1'b0), .clk (clk_int), .ena (
                       nx62259z2), .aclr (1'b0), .sclr (nx7124z1), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_out_o_data_obuf_3_ (.regout (nx25340z1), .datain (
                       nx58271z1), .sdata (1'b0), .clk (clk_int), .ena (
                       nx62259z2), .aclr (1'b0), .sclr (nx7124z1), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_out_o_data_obuf_2_ (.regout (nx24343z1), .datain (
                       nx57274z1), .sdata (1'b0), .clk (clk_int), .ena (
                       nx62259z2), .aclr (1'b0), .sclr (nx7124z1), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_out_o_data_obuf_1_ (.regout (nx23346z1), .datain (
                       nx56277z1), .sdata (1'b0), .clk (clk_int), .ena (
                       nx62259z2), .aclr (1'b0), .sclr (nx7124z1), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_out_o_data_obuf_0_ (.regout (nx22349z1), .datain (
                       nx55280z1), .sdata (1'b0), .clk (clk_int), .ena (
                       nx62259z2), .aclr (1'b0), .sclr (nx7124z1), .sload (1'b0)
                       ) ;
    cycloneii_io ix29328z43919 (.padio (o_data[7]), .datain (nx29328z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix29328z43919.operation_mode = "output";
                 
                 defparam ix29328z43919.output_register_mode = "none";
                 
                 defparam ix29328z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix29328z43919.oe_register_mode = "none";
                 
                 defparam ix29328z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix29328z43919.input_register_mode = "none";
    cycloneii_io ix28331z43919 (.padio (o_data[6]), .datain (nx28331z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix28331z43919.operation_mode = "output";
                 
                 defparam ix28331z43919.output_register_mode = "none";
                 
                 defparam ix28331z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix28331z43919.oe_register_mode = "none";
                 
                 defparam ix28331z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix28331z43919.input_register_mode = "none";
    cycloneii_io ix27334z43919 (.padio (o_data[5]), .datain (nx27334z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix27334z43919.operation_mode = "output";
                 
                 defparam ix27334z43919.output_register_mode = "none";
                 
                 defparam ix27334z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix27334z43919.oe_register_mode = "none";
                 
                 defparam ix27334z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix27334z43919.input_register_mode = "none";
    cycloneii_io ix26337z43919 (.padio (o_data[4]), .datain (nx26337z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix26337z43919.operation_mode = "output";
                 
                 defparam ix26337z43919.output_register_mode = "none";
                 
                 defparam ix26337z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix26337z43919.oe_register_mode = "none";
                 
                 defparam ix26337z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix26337z43919.input_register_mode = "none";
    cycloneii_io ix25340z43919 (.padio (o_data[3]), .datain (nx25340z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix25340z43919.operation_mode = "output";
                 
                 defparam ix25340z43919.output_register_mode = "none";
                 
                 defparam ix25340z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix25340z43919.oe_register_mode = "none";
                 
                 defparam ix25340z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix25340z43919.input_register_mode = "none";
    cycloneii_io ix24343z43919 (.padio (o_data[2]), .datain (nx24343z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix24343z43919.operation_mode = "output";
                 
                 defparam ix24343z43919.output_register_mode = "none";
                 
                 defparam ix24343z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix24343z43919.oe_register_mode = "none";
                 
                 defparam ix24343z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix24343z43919.input_register_mode = "none";
    cycloneii_io ix23346z43919 (.padio (o_data[1]), .datain (nx23346z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix23346z43919.operation_mode = "output";
                 
                 defparam ix23346z43919.output_register_mode = "none";
                 
                 defparam ix23346z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix23346z43919.oe_register_mode = "none";
                 
                 defparam ix23346z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix23346z43919.input_register_mode = "none";
    cycloneii_io ix22349z43919 (.padio (o_data[0]), .datain (nx22349z1), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix22349z43919.operation_mode = "output";
                 
                 defparam ix22349z43919.output_register_mode = "none";
                 
                 defparam ix22349z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix22349z43919.oe_register_mode = "none";
                 
                 defparam ix22349z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix22349z43919.input_register_mode = "none";
    cycloneii_io i_valid_ibuf (.combout (i_valid_int), .padio (i_valid), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_valid_ibuf.operation_mode = "input";
                 
                 defparam i_valid_ibuf.output_register_mode = "none";
                 
                 defparam i_valid_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam i_valid_ibuf.oe_register_mode = "none";
                 
                 defparam i_valid_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam i_valid_ibuf.input_register_mode = "none";
    cycloneii_io clk_ibuf (.combout (clk_int), .padio (clk), .datain (1'b0), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam clk_ibuf.operation_mode = "input";
                 
                 defparam clk_ibuf.output_register_mode = "none";
                 
                 defparam clk_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam clk_ibuf.oe_register_mode = "none";
                 
                 defparam clk_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam clk_ibuf.input_register_mode = "none";
    cycloneii_lcell_comb ix7124z52926 (.combout (nx7124z4), .dataa (counter[3])
                         , .datab (counter[2]), .datac (counter[1]), .datad (
                         counter[0]), .cin (1'b0)) ;
                         
                         defparam ix7124z52926.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix7124z52925 (.combout (nx7124z3), .dataa (counter[7])
                         , .datab (counter[6]), .datac (counter[5]), .datad (
                         counter[4]), .cin (1'b0)) ;
                         
                         defparam ix7124z52925.lut_mask = 16'h8000;
    cycloneii_lcell_comb ix7124z52924 (.combout (nx7124z2), .dataa (counter[8])
                         , .datab (reset_int), .datac (i_valid_int), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix7124z52924.lut_mask = 16'hecec;
    cycloneii_lcell_comb ix7124z52923 (.combout (nx7124z1), .dataa (i_valid_int)
                         , .datab (nx7124z2), .datac (nx7124z3), .datad (
                         nx7124z4), .cin (1'b0)) ;
                         
                         defparam ix7124z52923.lut_mask = 16'heccc;
endmodule


module modgen_counter_9_0 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                            updn, cnt_en ) ;

    input clock ;
    output [8:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [8:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;

    wire nx58250z3, nx51271z1, nx59247z16, nx52268z1, nx59247z14, nx53265z1, 
         nx59247z12, nx54262z1, nx59247z10, nx55259z1, nx59247z8, nx56256z1, 
         nx59247z6, nx57253z1, nx59247z4, nx58250z1, nx59247z2, nx59247z1, 
         nx_modgen_counter_9_0_vcc_net;
    wire [50:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_8_ (.regout (q[8]), .datain (nx59247z1), .sdata (
                       1'b0), .clk (clock), .ena (nx58250z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_7_ (.regout (q[7]), .datain (nx58250z1), .sdata (
                       1'b0), .clk (clock), .ena (nx58250z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (q[6]), .datain (nx57253z1), .sdata (
                       1'b0), .clk (clock), .ena (nx58250z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (q[5]), .datain (nx56256z1), .sdata (
                       1'b0), .clk (clock), .ena (nx58250z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (q[4]), .datain (nx55259z1), .sdata (
                       1'b0), .clk (clock), .ena (nx58250z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (q[3]), .datain (nx54262z1), .sdata (
                       1'b0), .clk (clock), .ena (nx58250z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (q[2]), .datain (nx53265z1), .sdata (
                       1'b0), .clk (clock), .ena (nx58250z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (q[1]), .datain (nx52268z1), .sdata (
                       1'b0), .clk (clock), .ena (nx58250z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (q[0]), .datain (nx51271z1), .sdata (
                       1'b0), .clk (clock), .ena (nx58250z3), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_comb ix59247z52930 (.combout (nx53265z1), .cout (nx59247z12)
                         , .dataa (q[2]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_9_0_vcc_net), .cin (nx59247z14)) ;
                         
                         defparam ix59247z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix59247z52930.sum_lutc_input = "cin";
    assign nx_modgen_counter_9_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix59247z52923 (.combout (nx59247z1), .dataa (q[8]), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_9_0_vcc_net), .cin (nx59247z2)) ;
                         
                         defparam ix59247z52923.lut_mask = 16'h5a00;
                         
                         defparam ix59247z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix59247z52925 (.combout (nx58250z1), .cout (nx59247z2)
                         , .dataa (q[7]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_9_0_vcc_net), .cin (nx59247z4)) ;
                         
                         defparam ix59247z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix59247z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix59247z52926 (.combout (nx57253z1), .cout (nx59247z4)
                         , .dataa (q[6]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_9_0_vcc_net), .cin (nx59247z6)) ;
                         
                         defparam ix59247z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix59247z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix59247z52931 (.combout (nx52268z1), .cout (nx59247z14)
                         , .dataa (q[1]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_9_0_vcc_net), .cin (nx59247z16)) ;
                         
                         defparam ix59247z52931.lut_mask = 16'h5aa0;
                         
                         defparam ix59247z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix59247z52927 (.combout (nx56256z1), .cout (nx59247z6)
                         , .dataa (q[5]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_9_0_vcc_net), .cin (nx59247z8)) ;
                         
                         defparam ix59247z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix59247z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix59247z52928 (.combout (nx55259z1), .cout (nx59247z8)
                         , .dataa (q[4]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_9_0_vcc_net), .cin (nx59247z10)) ;
                         
                         defparam ix59247z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix59247z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix59247z52929 (.combout (nx54262z1), .cout (nx59247z10)
                         , .dataa (q[3]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_9_0_vcc_net), .cin (nx59247z12)) ;
                         
                         defparam ix59247z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix59247z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix59247z52932 (.combout (nx51271z1), .cout (nx59247z16)
                         , .dataa (q[0]), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_9_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix59247z52932.lut_mask = 16'h55aa;
    cycloneii_lcell_comb ix58250z52923 (.combout (nx58250z3), .dataa (cnt_en), .datab (
                         sclear), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix58250z52923.lut_mask = 16'heeee;
endmodule


module modgen_counter_8_0 ( clock, q, clk_en, aclear, sload, data, aset, sclear, 
                            updn, cnt_en, px51, px20, px46, px42, px17, px13, 
                            px9, px5, px1 ) ;

    input clock ;
    output [7:0]q ;
    input clk_en ;
    input aclear ;
    input sload ;
    input [7:0]data ;
    input aset ;
    input sclear ;
    input updn ;
    input cnt_en ;
    output px51 ;
    output px20 ;
    output px46 ;
    output px42 ;
    output px17 ;
    output px13 ;
    output px9 ;
    output px5 ;
    output px1 ;

    wire nx32510z2, nx32510z4, nx32510z6, nx32510z8, nx32510z10, nx32510z12, 
         nx32510z14, nx32510z16, nx32510z15, nx32510z13, nx32510z11, nx32510z9, 
         nx32510z7, nx32510z5, nx32510z3, nx_modgen_counter_8_0_vcc_net;
    wire [45:0] xmplr_dummy ;




    cycloneii_lcell_ff reg_q_7_ (.regout (nx32510z2), .datain (px51), .sdata (
                       1'b0), .clk (clock), .ena (px20), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_6_ (.regout (nx32510z4), .datain (px46), .sdata (
                       1'b0), .clk (clock), .ena (px20), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_5_ (.regout (nx32510z6), .datain (px42), .sdata (
                       1'b0), .clk (clock), .ena (px20), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_4_ (.regout (nx32510z8), .datain (px17), .sdata (
                       1'b0), .clk (clock), .ena (px20), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_3_ (.regout (nx32510z10), .datain (px13), .sdata (
                       1'b0), .clk (clock), .ena (px20), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_2_ (.regout (nx32510z12), .datain (px9), .sdata (
                       1'b0), .clk (clock), .ena (px20), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_1_ (.regout (nx32510z14), .datain (px5), .sdata (
                       1'b0), .clk (clock), .ena (px20), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_q_0_ (.regout (nx32510z16), .datain (px1), .sdata (
                       1'b0), .clk (clock), .ena (px20), .aclr (1'b0), .sclr (
                       sclear), .sload (1'b0)) ;
    cycloneii_lcell_comb ix32510z52929 (.combout (px9), .cout (nx32510z11), .dataa (
                         nx32510z12), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx32510z13)) ;
                         
                         defparam ix32510z52929.lut_mask = 16'h5aa0;
                         
                         defparam ix32510z52929.sum_lutc_input = "cin";
    assign nx_modgen_counter_8_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix32510z52923 (.combout (px51), .dataa (nx32510z2), .datab (
                         1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx32510z3)) ;
                         
                         defparam ix32510z52923.lut_mask = 16'h5a00;
                         
                         defparam ix32510z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix32510z52925 (.combout (px46), .cout (nx32510z3), .dataa (
                         nx32510z4), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx32510z5)) ;
                         
                         defparam ix32510z52925.lut_mask = 16'h5aa0;
                         
                         defparam ix32510z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix32510z52930 (.combout (px5), .cout (nx32510z13), .dataa (
                         nx32510z14), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx32510z15)) ;
                         
                         defparam ix32510z52930.lut_mask = 16'h5aa0;
                         
                         defparam ix32510z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix32510z52926 (.combout (px42), .cout (nx32510z5), .dataa (
                         nx32510z6), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx32510z7)) ;
                         
                         defparam ix32510z52926.lut_mask = 16'h5aa0;
                         
                         defparam ix32510z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix32510z52927 (.combout (px17), .cout (nx32510z7), .dataa (
                         nx32510z8), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx32510z9)) ;
                         
                         defparam ix32510z52927.lut_mask = 16'h5aa0;
                         
                         defparam ix32510z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix32510z52928 (.combout (px13), .cout (nx32510z9), .dataa (
                         nx32510z10), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (nx32510z11)) ;
                         
                         defparam ix32510z52928.lut_mask = 16'h5aa0;
                         
                         defparam ix32510z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix32510z52931 (.combout (px1), .cout (nx32510z15), .dataa (
                         nx32510z16), .datab (1'b1), .datac (1'b1), .datad (
                         nx_modgen_counter_8_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix32510z52931.lut_mask = 16'h55aa;
    cycloneii_lcell_comb ix58250z52923 (.combout (px20), .dataa (cnt_en), .datab (
                         sclear), .datac (1'b1), .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix58250z52923.lut_mask = 16'heeee;
endmodule

