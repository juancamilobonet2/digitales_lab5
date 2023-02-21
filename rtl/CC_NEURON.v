/*######################################################################
//#	G0B1T: HDL EXAMPLES. 2018.
//######################################################################
//# Copyright (C) 2018. F.E.Segura-Quijano (FES) fsegura@uniandes.edu.co
//# 
//# This program is free software: you can redistribute it and/or modify
//# it under the terms of the GNU General Public License as published by
//# the Free Software Foundation, version 3 of the License.
//#
//# This program is distributed in the hope that it will be useful,
//# but WITHOUT ANY WARRANTY; without even the implied warranty of
//# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//# GNU General Public License for more details.
//#
//# You should have received a copy of the GNU General Public License
//# along with this program.  If not, see <http://www.gnu.org/licenses/>
//####################################################################*/
//=======================================================
//  MODULE Definition
//=======================================================
module CC_NEURON (
//////////// OUTPUTS //////////
	CC_NEURON_y0_Out,
//////////// INPUTS //////////
	CC_NEURON_t0_InBUS,
	CC_NEURON_x0_InBUS,
	CC_NEURON_w0_InBUS,
	CC_NEURON_x1_InBUS,
	CC_NEURON_w1_InBUS,
	CC_NEURON_x2_InBUS,
	CC_NEURON_w2_InBUS,
	CC_NEURON_x3_InBUS,
	CC_NEURON_w3_InBUS
);
//=======================================================
//  PARAMETER declarations
//=======================================================
parameter NUMBER_DATAWIDTH = 8;
//=======================================================
//  PORT declarations
//=======================================================
output 	CC_NEURON_y0_Out;
input 	[NUMBER_DATAWIDTH-1:0] CC_NEURON_t0_InBUS;
input 	[NUMBER_DATAWIDTH-1:0] CC_NEURON_x0_InBUS;
input 	[NUMBER_DATAWIDTH-1:0] CC_NEURON_w0_InBUS;
input 	[NUMBER_DATAWIDTH-1:0] CC_NEURON_x1_InBUS;
input 	[NUMBER_DATAWIDTH-1:0] CC_NEURON_w1_InBUS;
input 	[NUMBER_DATAWIDTH-1:0] CC_NEURON_x2_InBUS;
input 	[NUMBER_DATAWIDTH-1:0] CC_NEURON_w2_InBUS;
input 	[NUMBER_DATAWIDTH-1:0] CC_NEURON_x3_InBUS;
input 	[NUMBER_DATAWIDTH-1:0] CC_NEURON_w3_InBUS;

//=======================================================
//  REG/WIRE declarations
//=======================================================
wire [NUMBER_DATAWIDTH-1:0] WIRE_multiplier_2_adder_cwireBUS_0;
wire [NUMBER_DATAWIDTH-1:0] WIRE_multiplier_2_adder_cwireBUS_1;
wire [NUMBER_DATAWIDTH-1:0] WIRE_multiplier_2_adder_cwireBUS_2;
wire [NUMBER_DATAWIDTH-1:0] WIRE_multiplier_2_adder_cwireBUS_3;

wire [NUMBER_DATAWIDTH-1:0] WIRE_adder_2_adder_cwireBUS_0;
wire [NUMBER_DATAWIDTH-1:0] WIRE_adder_2_adder_cwireBUS_1;

wire [NUMBER_DATAWIDTH-1:0] WIRE_adder_2_comparator_cwireBUS_0;

//=======================================================
//  Structural coding
//=======================================================
//STRUCTURAL
CC_MULTIPLIER CC_MULTIPLIER_u0 (
// port map - connection between master ports and signals/registers   
	.CC_MULTIPLIER_product_Out(WIRE_multiplier_2_adder_cwireBUS_0),
	.CC_MULTIPLIER_m0_InBUS(CC_NEURON_x0_InBUS),
	.CC_MULTIPLIER_m1_InBUS(CC_NEURON_w0_InBUS)
);

CC_MULTIPLIER CC_MULTIPLIER_u1 (
// port map - connection between master ports and signals/registers   


);

CC_MULTIPLIER CC_MULTIPLIER_u2 (
// port map - connection between master ports and signals/registers   


);

CC_MULTIPLIER CC_MULTIPLIER_u3 (
// port map - connection between master ports and signals/registers   


);

CC_ADDER CC_ADDER_u0 (
// port map - connection between master ports and signals/registers   
	.CC_ADDER_sum_Out(WIRE_adder_2_adder_cwireBUS_0),
	.CC_ADDER_a0_InBUS(WIRE_multiplier_2_adder_cwireBUS_0),
	.CC_ADDER_a1_InBUS(WIRE_multiplier_2_adder_cwireBUS_1)
);

CC_ADDER CC_ADDER_u1 (
// port map - connection between master ports and signals/registers   


);

CC_ADDER CC_ADDER_u2 (
// port map - connection between master ports and signals/registers   


);

CC_COMPARATOR CC_COMPARATOR_u2 (
// port map - connection between master ports and signals/registers   


);


endmodule

