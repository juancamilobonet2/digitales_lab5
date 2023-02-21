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
module CC_ADDER (
//////////// OUTPUTS //////////
	CC_ADDER_sum_Out,
//////////// INPUTS //////////
	CC_ADDER_a0_InBUS,
	CC_ADDER_a1_InBUS
);
//=======================================================
//  PARAMETER declarations
//=======================================================
parameter NUMBER_DATAWIDTH = 8;
//=======================================================
//  PORT declarations
//=======================================================
output  [NUMBER_DATAWIDTH-1:0] CC_ADDER_sum_Out;
input 	[NUMBER_DATAWIDTH-1:0] CC_ADDER_a0_InBUS;
input 	[NUMBER_DATAWIDTH-1:0] CC_ADDER_a1_InBUS;
//=======================================================
//  REG/WIRE declarations
//=======================================================

//=======================================================
//  Structural coding
//=======================================================


endmodule

