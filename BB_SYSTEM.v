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
module BB_SYSTEM (
//////////// OUTPUTS //////////
	BB_SYSTEM_y0_Out,
//////////// INPUTS //////////
	BB_SYSTEM_t0_InBUS,
	BB_SYSTEM_x0_InBUS,
	BB_SYSTEM_w0_InBUS,
	BB_SYSTEM_x1_InBUS,
	BB_SYSTEM_w1_InBUS,
	BB_SYSTEM_x2_InBUS,
	BB_SYSTEM_w2_InBUS,
	BB_SYSTEM_x3_InBUS,
	BB_SYSTEM_w3_InBUS
);
//=======================================================
//  PARAMETER declarations
//=======================================================
parameter NUMBER_DATAWIDTH = 8;
//=======================================================
//  PORT declarations
//=======================================================
output		BB_SYSTEM_y0_Out;
input		[NUMBER_DATAWIDTH-1:0] BB_SYSTEM_t0_InBUS;
input		[NUMBER_DATAWIDTH-1:0] BB_SYSTEM_x0_InBUS;
input		[NUMBER_DATAWIDTH-1:0] BB_SYSTEM_w0_InBUS;
input		[NUMBER_DATAWIDTH-1:0] BB_SYSTEM_x1_InBUS;
input		[NUMBER_DATAWIDTH-1:0] BB_SYSTEM_w1_InBUS;
input		[NUMBER_DATAWIDTH-1:0] BB_SYSTEM_x2_InBUS;
input		[NUMBER_DATAWIDTH-1:0] BB_SYSTEM_w2_InBUS;
input		[NUMBER_DATAWIDTH-1:0] BB_SYSTEM_x3_InBUS;
input		[NUMBER_DATAWIDTH-1:0] BB_SYSTEM_w3_InBUS;
//=======================================================
//  REG/WIRE declarations
//=======================================================

//=======================================================
//  Structural coding
//=======================================================
CC_NEURON #(.NUMBER_DATAWIDTH(NUMBER_DATAWIDTH)) CC_NEURON_u0 (
// port map - connection between master ports and signals/registers   
	.CC_NEURON_y0_Out(BB_SYSTEM_y0_Out),
	.CC_NEURON_t0_InBUS(BB_SYSTEM_t0_InBUS),
	.CC_NEURON_x0_InBUS(BB_SYSTEM_x0_InBUS),
	.CC_NEURON_w0_InBUS(BB_SYSTEM_w0_InBUS),	
	.CC_NEURON_x1_InBUS(BB_SYSTEM_x1_InBUS),
	.CC_NEURON_w1_InBUS(BB_SYSTEM_w1_InBUS),	
	.CC_NEURON_x2_InBUS(BB_SYSTEM_x2_InBUS),
	.CC_NEURON_w2_InBUS(BB_SYSTEM_w2_InBUS),	
	.CC_NEURON_x3_InBUS(BB_SYSTEM_x3_InBUS),
	.CC_NEURON_w3_InBUS(BB_SYSTEM_w3_InBUS)
);
endmodule
