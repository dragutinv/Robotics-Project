-- ----------------------------------------------------------------------------
-- __  ___ __ ___  _ __   ___  ___ 
-- \ \/ / '__/ _ \| '_ \ / _ \/ __|
--  >  <| | | (_) | | | | (_) \__ \
-- /_/\_\_|  \___/|_| |_|\___/|___/
-- ----------------------------------------------------------------------------
-- Xronos synthesizer
-- Top level Network: TopMeanShift 
-- Date: 2015/10/14 15:56:56
-- ----------------------------------------------------------------------------

-- ----------------------------------------------------------------------------
-- Clock Domain(s) Information on the Network "TopMeanShift"
--
-- Network input port(s) clock domain:
-- Network output port(s) clock domain:
-- Actor(s) clock domains:
--	source (source) --> CLK
--	Test_EOS (Test_EOS) --> CLK
--	Write_stream (Write_stream) --> CLK
--	Mean_Shift_Main_main_loop_cal_kArray_evaluation (Mean_Shift_Main_main_loop_cal_kArray_evaluation) --> CLK
--	Mean_Shift_Main_main_loop_cal_update_model (Mean_Shift_Main_main_loop_cal_update_model) --> CLK
--	Mean_Shift_Main_main_loop_cal_update_weight (Mean_Shift_Main_main_loop_cal_update_weight) --> CLK
--	Mean_Shift_Main_main_loop_cal_displacement (Mean_Shift_Main_main_loop_cal_displacement) --> CLK
--	Mean_Shift_Main_main_loop_cal_kArray_derv (Mean_Shift_Main_main_loop_cal_kArray_derv) --> CLK
--	Mean_Shift_Main_main_loop_cal_Centre_XY (Mean_Shift_Main_main_loop_cal_Centre_XY) --> CLK
--	Mean_Shift_Main_main_loop_cal_Final_Centre_XY (Mean_Shift_Main_main_loop_cal_Final_Centre_XY) --> CLK
--	Mean_Shift_Main_input_read_Stream_to_YUV (Mean_Shift_Main_input_read_Stream_to_YUV) --> CLK
--	Mean_Shift_Main_input_read_YUV_to_RGB (Mean_Shift_Main_input_read_YUV_to_RGB) --> CLK
--	output_process_Draw_rectangle (output_process_Draw_rectangle) --> CLK
--	output_process_RGB_to_YUV (output_process_RGB_to_YUV) --> CLK
--	output_process_YUV_to_Stream (output_process_YUV_to_Stream) --> CLK

library ieee;
library SystemBuilder;

use ieee.std_logic_1164.all;

-- ----------------------------------------------------------------------------
-- Entity Declaration
-- ----------------------------------------------------------------------------
entity TopMeanShift is
port(
	 -- XDF Network Input(s)
	 -- XDF Network Output(s)
	 -- Clock(s) and Reset
	 CLK : in std_logic;
	 RESET : in std_logic);
end entity TopMeanShift;

-- ----------------------------------------------------------------------------
-- Architecture Declaration
-- ----------------------------------------------------------------------------
architecture rtl of TopMeanShift is
	-- --------------------------------------------------------------------------
	-- Internal Signals
	-- --------------------------------------------------------------------------

	-- Clock(s) and Reset signal
	signal clocks, resets: std_logic_vector(0 downto 0);

	-- Network Input Port(s)
	
	-- Network Input Port Fanout(s)
	
	-- Network Output Port(s) 
	
	-- Actors Input/Output and Output fanout signals
	
	signal ao_source_O_data : std_logic_vector(7 downto 0);
	signal ao_source_O_send : std_logic;
	signal ao_source_O_ack : std_logic;
	signal ao_source_O_rdy : std_logic;
	signal ao_source_O_count : std_logic_vector(15 downto 0);
	
	signal aof_source_O_data : std_logic_vector(7 downto 0);
	signal aof_source_O_send : std_logic_vector(0 downto 0);
	signal aof_source_O_ack : std_logic_vector(0 downto 0);
	signal aof_source_O_rdy : std_logic_vector(0 downto 0);
	signal aof_source_O_count : std_logic_vector(15 downto 0);
	
	signal ai_Test_EOS_In_data : std_logic_vector(7 downto 0);
	signal ai_Test_EOS_In_send : std_logic;
	signal ai_Test_EOS_In_ack : std_logic;
	signal ai_Test_EOS_In_count : std_logic_vector(15 downto 0);
	
	signal ao_Test_EOS_Out_data : std_logic_vector(7 downto 0);
	signal ao_Test_EOS_Out_send : std_logic;
	signal ao_Test_EOS_Out_ack : std_logic;
	signal ao_Test_EOS_Out_rdy : std_logic;
	signal ao_Test_EOS_Out_count : std_logic_vector(15 downto 0);
	
	signal aof_Test_EOS_Out_data : std_logic_vector(7 downto 0);
	signal aof_Test_EOS_Out_send : std_logic_vector(0 downto 0);
	signal aof_Test_EOS_Out_ack : std_logic_vector(0 downto 0);
	signal aof_Test_EOS_Out_rdy : std_logic_vector(0 downto 0);
	signal aof_Test_EOS_Out_count : std_logic_vector(15 downto 0);
	
	signal ao_Test_EOS_pEOF_data : std_logic;
	signal ao_Test_EOS_pEOF_send : std_logic;
	signal ao_Test_EOS_pEOF_ack : std_logic;
	signal ao_Test_EOS_pEOF_rdy : std_logic;
	signal ao_Test_EOS_pEOF_count : std_logic_vector(15 downto 0);
	
	signal aof_Test_EOS_pEOF_data : std_logic;
	signal aof_Test_EOS_pEOF_send : std_logic_vector(0 downto 0);
	signal aof_Test_EOS_pEOF_ack : std_logic_vector(0 downto 0);
	signal aof_Test_EOS_pEOF_rdy : std_logic_vector(0 downto 0);
	signal aof_Test_EOS_pEOF_count : std_logic_vector(15 downto 0);
	
	signal ai_Write_stream_Byte_data : std_logic_vector(7 downto 0);
	signal ai_Write_stream_Byte_send : std_logic;
	signal ai_Write_stream_Byte_ack : std_logic;
	signal ai_Write_stream_Byte_count : std_logic_vector(15 downto 0);
	
	signal ai_Write_stream_pEOF_data : std_logic;
	signal ai_Write_stream_pEOF_send : std_logic;
	signal ai_Write_stream_pEOF_ack : std_logic;
	signal ai_Write_stream_pEOF_count : std_logic_vector(15 downto 0);
	
	
	
	signal ao_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO_data : std_logic_vector(31 downto 0);
	signal ao_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO_send : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO_ack : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO_rdy : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO_count : std_logic_vector(15 downto 0);
	
	signal aof_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO_data : std_logic_vector(31 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO_send : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO_ack : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO_rdy : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO_count : std_logic_vector(15 downto 0);
	
	signal ai_Mean_Shift_Main_main_loop_cal_update_model_R_data : std_logic_vector(7 downto 0);
	signal ai_Mean_Shift_Main_main_loop_cal_update_model_R_send : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_update_model_R_ack : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_update_model_R_count : std_logic_vector(15 downto 0);
	
	signal ai_Mean_Shift_Main_main_loop_cal_update_model_G_data : std_logic_vector(7 downto 0);
	signal ai_Mean_Shift_Main_main_loop_cal_update_model_G_send : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_update_model_G_ack : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_update_model_G_count : std_logic_vector(15 downto 0);
	
	signal ai_Mean_Shift_Main_main_loop_cal_update_model_B_data : std_logic_vector(7 downto 0);
	signal ai_Mean_Shift_Main_main_loop_cal_update_model_B_send : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_update_model_B_ack : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_update_model_B_count : std_logic_vector(15 downto 0);
	
	signal ai_Mean_Shift_Main_main_loop_cal_update_model_centre_x_i_data : std_logic_vector(31 downto 0);
	signal ai_Mean_Shift_Main_main_loop_cal_update_model_centre_x_i_send : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_update_model_centre_x_i_ack : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_update_model_centre_x_i_count : std_logic_vector(15 downto 0);
	
	signal ai_Mean_Shift_Main_main_loop_cal_update_model_centre_y_i_data : std_logic_vector(31 downto 0);
	signal ai_Mean_Shift_Main_main_loop_cal_update_model_centre_y_i_send : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_update_model_centre_y_i_ack : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_update_model_centre_y_i_count : std_logic_vector(15 downto 0);
	
	signal ai_Mean_Shift_Main_main_loop_cal_update_model_kArray_data : std_logic_vector(31 downto 0);
	signal ai_Mean_Shift_Main_main_loop_cal_update_model_kArray_send : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_update_model_kArray_ack : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_update_model_kArray_count : std_logic_vector(15 downto 0);
	
	signal ai_Mean_Shift_Main_main_loop_cal_update_model_loop_status_data : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_update_model_loop_status_send : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_update_model_loop_status_ack : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_update_model_loop_status_count : std_logic_vector(15 downto 0);
	
	signal ao_Mean_Shift_Main_main_loop_cal_update_model_Qu_data : std_logic_vector(31 downto 0);
	signal ao_Mean_Shift_Main_main_loop_cal_update_model_Qu_send : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_update_model_Qu_ack : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_update_model_Qu_rdy : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_update_model_Qu_count : std_logic_vector(15 downto 0);
	
	signal aof_Mean_Shift_Main_main_loop_cal_update_model_Qu_data : std_logic_vector(31 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_update_model_Qu_send : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_update_model_Qu_ack : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_update_model_Qu_rdy : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_update_model_Qu_count : std_logic_vector(15 downto 0);
	
	signal ao_Mean_Shift_Main_main_loop_cal_update_model_Pu_data : std_logic_vector(31 downto 0);
	signal ao_Mean_Shift_Main_main_loop_cal_update_model_Pu_send : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_update_model_Pu_ack : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_update_model_Pu_rdy : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_update_model_Pu_count : std_logic_vector(15 downto 0);
	
	signal aof_Mean_Shift_Main_main_loop_cal_update_model_Pu_data : std_logic_vector(31 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_update_model_Pu_send : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_update_model_Pu_ack : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_update_model_Pu_rdy : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_update_model_Pu_count : std_logic_vector(15 downto 0);
	
	signal ao_Mean_Shift_Main_main_loop_cal_update_model_bin_o_data : std_logic_vector(31 downto 0);
	signal ao_Mean_Shift_Main_main_loop_cal_update_model_bin_o_send : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_update_model_bin_o_ack : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_update_model_bin_o_rdy : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_update_model_bin_o_count : std_logic_vector(15 downto 0);
	
	signal aof_Mean_Shift_Main_main_loop_cal_update_model_bin_o_data : std_logic_vector(31 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_update_model_bin_o_send : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_update_model_bin_o_ack : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_update_model_bin_o_rdy : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_update_model_bin_o_count : std_logic_vector(15 downto 0);
	
	signal ai_Mean_Shift_Main_main_loop_cal_update_weight_QuModel_data : std_logic_vector(31 downto 0);
	signal ai_Mean_Shift_Main_main_loop_cal_update_weight_QuModel_send : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_update_weight_QuModel_ack : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_update_weight_QuModel_count : std_logic_vector(15 downto 0);
	
	signal ai_Mean_Shift_Main_main_loop_cal_update_weight_PuModel_data : std_logic_vector(31 downto 0);
	signal ai_Mean_Shift_Main_main_loop_cal_update_weight_PuModel_send : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_update_weight_PuModel_ack : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_update_weight_PuModel_count : std_logic_vector(15 downto 0);
	
	signal ai_Mean_Shift_Main_main_loop_cal_update_weight_bin_data : std_logic_vector(31 downto 0);
	signal ai_Mean_Shift_Main_main_loop_cal_update_weight_bin_send : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_update_weight_bin_ack : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_update_weight_bin_count : std_logic_vector(15 downto 0);
	
	signal ao_Mean_Shift_Main_main_loop_cal_update_weight_weights_data : std_logic_vector(31 downto 0);
	signal ao_Mean_Shift_Main_main_loop_cal_update_weight_weights_send : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_update_weight_weights_ack : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_update_weight_weights_rdy : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_update_weight_weights_count : std_logic_vector(15 downto 0);
	
	signal aof_Mean_Shift_Main_main_loop_cal_update_weight_weights_data : std_logic_vector(31 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_update_weight_weights_send : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_update_weight_weights_ack : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_update_weight_weights_rdy : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_update_weight_weights_count : std_logic_vector(15 downto 0);
	
	signal ai_Mean_Shift_Main_main_loop_cal_displacement_weights_data : std_logic_vector(31 downto 0);
	signal ai_Mean_Shift_Main_main_loop_cal_displacement_weights_send : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_displacement_weights_ack : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_displacement_weights_count : std_logic_vector(15 downto 0);
	
	signal ai_Mean_Shift_Main_main_loop_cal_displacement_kDerArray_data : std_logic_vector(31 downto 0);
	signal ai_Mean_Shift_Main_main_loop_cal_displacement_kDerArray_send : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_displacement_kDerArray_ack : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_displacement_kDerArray_count : std_logic_vector(15 downto 0);
	
	signal ao_Mean_Shift_Main_main_loop_cal_displacement_dx_data : std_logic_vector(31 downto 0);
	signal ao_Mean_Shift_Main_main_loop_cal_displacement_dx_send : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_displacement_dx_ack : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_displacement_dx_rdy : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_displacement_dx_count : std_logic_vector(15 downto 0);
	
	signal aof_Mean_Shift_Main_main_loop_cal_displacement_dx_data : std_logic_vector(31 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_displacement_dx_send : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_displacement_dx_ack : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_displacement_dx_rdy : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_displacement_dx_count : std_logic_vector(15 downto 0);
	
	signal ao_Mean_Shift_Main_main_loop_cal_displacement_dy_data : std_logic_vector(31 downto 0);
	signal ao_Mean_Shift_Main_main_loop_cal_displacement_dy_send : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_displacement_dy_ack : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_displacement_dy_rdy : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_displacement_dy_count : std_logic_vector(15 downto 0);
	
	signal aof_Mean_Shift_Main_main_loop_cal_displacement_dy_data : std_logic_vector(31 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_displacement_dy_send : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_displacement_dy_ack : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_displacement_dy_rdy : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_displacement_dy_count : std_logic_vector(15 downto 0);
	
	
	signal ao_Mean_Shift_Main_main_loop_cal_kArray_derv_kDervO_data : std_logic_vector(31 downto 0);
	signal ao_Mean_Shift_Main_main_loop_cal_kArray_derv_kDervO_send : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_kArray_derv_kDervO_ack : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_kArray_derv_kDervO_rdy : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_kArray_derv_kDervO_count : std_logic_vector(15 downto 0);
	
	signal aof_Mean_Shift_Main_main_loop_cal_kArray_derv_kDervO_data : std_logic_vector(31 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_kArray_derv_kDervO_send : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_kArray_derv_kDervO_ack : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_kArray_derv_kDervO_rdy : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_kArray_derv_kDervO_count : std_logic_vector(15 downto 0);
	
	signal ai_Mean_Shift_Main_main_loop_cal_Centre_XY_dx_i_data : std_logic_vector(31 downto 0);
	signal ai_Mean_Shift_Main_main_loop_cal_Centre_XY_dx_i_send : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_Centre_XY_dx_i_ack : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_Centre_XY_dx_i_count : std_logic_vector(15 downto 0);
	
	signal ai_Mean_Shift_Main_main_loop_cal_Centre_XY_dy_i_data : std_logic_vector(31 downto 0);
	signal ai_Mean_Shift_Main_main_loop_cal_Centre_XY_dy_i_send : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_Centre_XY_dy_i_ack : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_Centre_XY_dy_i_count : std_logic_vector(15 downto 0);
	
	signal ao_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_data : std_logic_vector(31 downto 0);
	signal ao_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_send : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_ack : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_rdy : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_count : std_logic_vector(15 downto 0);
	
	signal aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_data : std_logic_vector(31 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_send : std_logic_vector(1 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_ack : std_logic_vector(1 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_rdy : std_logic_vector(1 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_count : std_logic_vector(15 downto 0);
	
	signal ao_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_data : std_logic_vector(31 downto 0);
	signal ao_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_send : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_ack : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_rdy : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_count : std_logic_vector(15 downto 0);
	
	signal aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_data : std_logic_vector(31 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_send : std_logic_vector(1 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_ack : std_logic_vector(1 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_rdy : std_logic_vector(1 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_count : std_logic_vector(15 downto 0);
	
	signal ao_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_data : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_send : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_ack : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_rdy : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_count : std_logic_vector(15 downto 0);
	
	signal aof_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_data : std_logic;
	signal aof_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_send : std_logic_vector(1 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_ack : std_logic_vector(1 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_rdy : std_logic_vector(1 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_count : std_logic_vector(15 downto 0);
	
	signal ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_in_data : std_logic_vector(31 downto 0);
	signal ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_in_send : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_in_ack : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_in_count : std_logic_vector(15 downto 0);
	
	signal ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_in_data : std_logic_vector(31 downto 0);
	signal ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_in_send : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_in_ack : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_in_count : std_logic_vector(15 downto 0);
	
	signal ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_loop_stat_data : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_loop_stat_send : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_loop_stat_ack : std_logic;
	signal ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_loop_stat_count : std_logic_vector(15 downto 0);
	
	signal ao_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out_data : std_logic_vector(15 downto 0);
	signal ao_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out_send : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out_ack : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out_rdy : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out_count : std_logic_vector(15 downto 0);
	
	signal aof_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out_data : std_logic_vector(15 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out_send : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out_ack : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out_rdy : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out_count : std_logic_vector(15 downto 0);
	
	signal ao_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out_data : std_logic_vector(15 downto 0);
	signal ao_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out_send : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out_ack : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out_rdy : std_logic;
	signal ao_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out_count : std_logic_vector(15 downto 0);
	
	signal aof_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out_data : std_logic_vector(15 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out_send : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out_ack : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out_rdy : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out_count : std_logic_vector(15 downto 0);
	
	signal ai_Mean_Shift_Main_input_read_Stream_to_YUV_stream_data : std_logic_vector(7 downto 0);
	signal ai_Mean_Shift_Main_input_read_Stream_to_YUV_stream_send : std_logic;
	signal ai_Mean_Shift_Main_input_read_Stream_to_YUV_stream_ack : std_logic;
	signal ai_Mean_Shift_Main_input_read_Stream_to_YUV_stream_count : std_logic_vector(15 downto 0);
	
	signal ao_Mean_Shift_Main_input_read_Stream_to_YUV_Y_data : std_logic_vector(7 downto 0);
	signal ao_Mean_Shift_Main_input_read_Stream_to_YUV_Y_send : std_logic;
	signal ao_Mean_Shift_Main_input_read_Stream_to_YUV_Y_ack : std_logic;
	signal ao_Mean_Shift_Main_input_read_Stream_to_YUV_Y_rdy : std_logic;
	signal ao_Mean_Shift_Main_input_read_Stream_to_YUV_Y_count : std_logic_vector(15 downto 0);
	
	signal aof_Mean_Shift_Main_input_read_Stream_to_YUV_Y_data : std_logic_vector(7 downto 0);
	signal aof_Mean_Shift_Main_input_read_Stream_to_YUV_Y_send : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_input_read_Stream_to_YUV_Y_ack : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_input_read_Stream_to_YUV_Y_rdy : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_input_read_Stream_to_YUV_Y_count : std_logic_vector(15 downto 0);
	
	signal ao_Mean_Shift_Main_input_read_Stream_to_YUV_U_data : std_logic_vector(7 downto 0);
	signal ao_Mean_Shift_Main_input_read_Stream_to_YUV_U_send : std_logic;
	signal ao_Mean_Shift_Main_input_read_Stream_to_YUV_U_ack : std_logic;
	signal ao_Mean_Shift_Main_input_read_Stream_to_YUV_U_rdy : std_logic;
	signal ao_Mean_Shift_Main_input_read_Stream_to_YUV_U_count : std_logic_vector(15 downto 0);
	
	signal aof_Mean_Shift_Main_input_read_Stream_to_YUV_U_data : std_logic_vector(7 downto 0);
	signal aof_Mean_Shift_Main_input_read_Stream_to_YUV_U_send : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_input_read_Stream_to_YUV_U_ack : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_input_read_Stream_to_YUV_U_rdy : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_input_read_Stream_to_YUV_U_count : std_logic_vector(15 downto 0);
	
	signal ao_Mean_Shift_Main_input_read_Stream_to_YUV_V_data : std_logic_vector(7 downto 0);
	signal ao_Mean_Shift_Main_input_read_Stream_to_YUV_V_send : std_logic;
	signal ao_Mean_Shift_Main_input_read_Stream_to_YUV_V_ack : std_logic;
	signal ao_Mean_Shift_Main_input_read_Stream_to_YUV_V_rdy : std_logic;
	signal ao_Mean_Shift_Main_input_read_Stream_to_YUV_V_count : std_logic_vector(15 downto 0);
	
	signal aof_Mean_Shift_Main_input_read_Stream_to_YUV_V_data : std_logic_vector(7 downto 0);
	signal aof_Mean_Shift_Main_input_read_Stream_to_YUV_V_send : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_input_read_Stream_to_YUV_V_ack : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_input_read_Stream_to_YUV_V_rdy : std_logic_vector(0 downto 0);
	signal aof_Mean_Shift_Main_input_read_Stream_to_YUV_V_count : std_logic_vector(15 downto 0);
	
	signal ai_Mean_Shift_Main_input_read_YUV_to_RGB_Y_data : std_logic_vector(7 downto 0);
	signal ai_Mean_Shift_Main_input_read_YUV_to_RGB_Y_send : std_logic;
	signal ai_Mean_Shift_Main_input_read_YUV_to_RGB_Y_ack : std_logic;
	signal ai_Mean_Shift_Main_input_read_YUV_to_RGB_Y_count : std_logic_vector(15 downto 0);
	
	signal ai_Mean_Shift_Main_input_read_YUV_to_RGB_U_data : std_logic_vector(7 downto 0);
	signal ai_Mean_Shift_Main_input_read_YUV_to_RGB_U_send : std_logic;
	signal ai_Mean_Shift_Main_input_read_YUV_to_RGB_U_ack : std_logic;
	signal ai_Mean_Shift_Main_input_read_YUV_to_RGB_U_count : std_logic_vector(15 downto 0);
	
	signal ai_Mean_Shift_Main_input_read_YUV_to_RGB_V_data : std_logic_vector(7 downto 0);
	signal ai_Mean_Shift_Main_input_read_YUV_to_RGB_V_send : std_logic;
	signal ai_Mean_Shift_Main_input_read_YUV_to_RGB_V_ack : std_logic;
	signal ai_Mean_Shift_Main_input_read_YUV_to_RGB_V_count : std_logic_vector(15 downto 0);
	
	signal ao_Mean_Shift_Main_input_read_YUV_to_RGB_R_data : std_logic_vector(7 downto 0);
	signal ao_Mean_Shift_Main_input_read_YUV_to_RGB_R_send : std_logic;
	signal ao_Mean_Shift_Main_input_read_YUV_to_RGB_R_ack : std_logic;
	signal ao_Mean_Shift_Main_input_read_YUV_to_RGB_R_rdy : std_logic;
	signal ao_Mean_Shift_Main_input_read_YUV_to_RGB_R_count : std_logic_vector(15 downto 0);
	
	signal aof_Mean_Shift_Main_input_read_YUV_to_RGB_R_data : std_logic_vector(7 downto 0);
	signal aof_Mean_Shift_Main_input_read_YUV_to_RGB_R_send : std_logic_vector(1 downto 0);
	signal aof_Mean_Shift_Main_input_read_YUV_to_RGB_R_ack : std_logic_vector(1 downto 0);
	signal aof_Mean_Shift_Main_input_read_YUV_to_RGB_R_rdy : std_logic_vector(1 downto 0);
	signal aof_Mean_Shift_Main_input_read_YUV_to_RGB_R_count : std_logic_vector(15 downto 0);
	
	signal ao_Mean_Shift_Main_input_read_YUV_to_RGB_G_data : std_logic_vector(7 downto 0);
	signal ao_Mean_Shift_Main_input_read_YUV_to_RGB_G_send : std_logic;
	signal ao_Mean_Shift_Main_input_read_YUV_to_RGB_G_ack : std_logic;
	signal ao_Mean_Shift_Main_input_read_YUV_to_RGB_G_rdy : std_logic;
	signal ao_Mean_Shift_Main_input_read_YUV_to_RGB_G_count : std_logic_vector(15 downto 0);
	
	signal aof_Mean_Shift_Main_input_read_YUV_to_RGB_G_data : std_logic_vector(7 downto 0);
	signal aof_Mean_Shift_Main_input_read_YUV_to_RGB_G_send : std_logic_vector(1 downto 0);
	signal aof_Mean_Shift_Main_input_read_YUV_to_RGB_G_ack : std_logic_vector(1 downto 0);
	signal aof_Mean_Shift_Main_input_read_YUV_to_RGB_G_rdy : std_logic_vector(1 downto 0);
	signal aof_Mean_Shift_Main_input_read_YUV_to_RGB_G_count : std_logic_vector(15 downto 0);
	
	signal ao_Mean_Shift_Main_input_read_YUV_to_RGB_B_data : std_logic_vector(7 downto 0);
	signal ao_Mean_Shift_Main_input_read_YUV_to_RGB_B_send : std_logic;
	signal ao_Mean_Shift_Main_input_read_YUV_to_RGB_B_ack : std_logic;
	signal ao_Mean_Shift_Main_input_read_YUV_to_RGB_B_rdy : std_logic;
	signal ao_Mean_Shift_Main_input_read_YUV_to_RGB_B_count : std_logic_vector(15 downto 0);
	
	signal aof_Mean_Shift_Main_input_read_YUV_to_RGB_B_data : std_logic_vector(7 downto 0);
	signal aof_Mean_Shift_Main_input_read_YUV_to_RGB_B_send : std_logic_vector(1 downto 0);
	signal aof_Mean_Shift_Main_input_read_YUV_to_RGB_B_ack : std_logic_vector(1 downto 0);
	signal aof_Mean_Shift_Main_input_read_YUV_to_RGB_B_rdy : std_logic_vector(1 downto 0);
	signal aof_Mean_Shift_Main_input_read_YUV_to_RGB_B_count : std_logic_vector(15 downto 0);
	
	signal ai_output_process_Draw_rectangle_Rin_data : std_logic_vector(7 downto 0);
	signal ai_output_process_Draw_rectangle_Rin_send : std_logic;
	signal ai_output_process_Draw_rectangle_Rin_ack : std_logic;
	signal ai_output_process_Draw_rectangle_Rin_count : std_logic_vector(15 downto 0);
	
	signal ai_output_process_Draw_rectangle_Gin_data : std_logic_vector(7 downto 0);
	signal ai_output_process_Draw_rectangle_Gin_send : std_logic;
	signal ai_output_process_Draw_rectangle_Gin_ack : std_logic;
	signal ai_output_process_Draw_rectangle_Gin_count : std_logic_vector(15 downto 0);
	
	signal ai_output_process_Draw_rectangle_Bin_data : std_logic_vector(7 downto 0);
	signal ai_output_process_Draw_rectangle_Bin_send : std_logic;
	signal ai_output_process_Draw_rectangle_Bin_ack : std_logic;
	signal ai_output_process_Draw_rectangle_Bin_count : std_logic_vector(15 downto 0);
	
	signal ai_output_process_Draw_rectangle_center_x_data : std_logic_vector(15 downto 0);
	signal ai_output_process_Draw_rectangle_center_x_send : std_logic;
	signal ai_output_process_Draw_rectangle_center_x_ack : std_logic;
	signal ai_output_process_Draw_rectangle_center_x_count : std_logic_vector(15 downto 0);
	
	signal ai_output_process_Draw_rectangle_center_y_data : std_logic_vector(15 downto 0);
	signal ai_output_process_Draw_rectangle_center_y_send : std_logic;
	signal ai_output_process_Draw_rectangle_center_y_ack : std_logic;
	signal ai_output_process_Draw_rectangle_center_y_count : std_logic_vector(15 downto 0);
	
	signal ao_output_process_Draw_rectangle_Rout_data : std_logic_vector(7 downto 0);
	signal ao_output_process_Draw_rectangle_Rout_send : std_logic;
	signal ao_output_process_Draw_rectangle_Rout_ack : std_logic;
	signal ao_output_process_Draw_rectangle_Rout_rdy : std_logic;
	signal ao_output_process_Draw_rectangle_Rout_count : std_logic_vector(15 downto 0);
	
	signal aof_output_process_Draw_rectangle_Rout_data : std_logic_vector(7 downto 0);
	signal aof_output_process_Draw_rectangle_Rout_send : std_logic_vector(0 downto 0);
	signal aof_output_process_Draw_rectangle_Rout_ack : std_logic_vector(0 downto 0);
	signal aof_output_process_Draw_rectangle_Rout_rdy : std_logic_vector(0 downto 0);
	signal aof_output_process_Draw_rectangle_Rout_count : std_logic_vector(15 downto 0);
	
	signal ao_output_process_Draw_rectangle_Gout_data : std_logic_vector(7 downto 0);
	signal ao_output_process_Draw_rectangle_Gout_send : std_logic;
	signal ao_output_process_Draw_rectangle_Gout_ack : std_logic;
	signal ao_output_process_Draw_rectangle_Gout_rdy : std_logic;
	signal ao_output_process_Draw_rectangle_Gout_count : std_logic_vector(15 downto 0);
	
	signal aof_output_process_Draw_rectangle_Gout_data : std_logic_vector(7 downto 0);
	signal aof_output_process_Draw_rectangle_Gout_send : std_logic_vector(0 downto 0);
	signal aof_output_process_Draw_rectangle_Gout_ack : std_logic_vector(0 downto 0);
	signal aof_output_process_Draw_rectangle_Gout_rdy : std_logic_vector(0 downto 0);
	signal aof_output_process_Draw_rectangle_Gout_count : std_logic_vector(15 downto 0);
	
	signal ao_output_process_Draw_rectangle_Bout_data : std_logic_vector(7 downto 0);
	signal ao_output_process_Draw_rectangle_Bout_send : std_logic;
	signal ao_output_process_Draw_rectangle_Bout_ack : std_logic;
	signal ao_output_process_Draw_rectangle_Bout_rdy : std_logic;
	signal ao_output_process_Draw_rectangle_Bout_count : std_logic_vector(15 downto 0);
	
	signal aof_output_process_Draw_rectangle_Bout_data : std_logic_vector(7 downto 0);
	signal aof_output_process_Draw_rectangle_Bout_send : std_logic_vector(0 downto 0);
	signal aof_output_process_Draw_rectangle_Bout_ack : std_logic_vector(0 downto 0);
	signal aof_output_process_Draw_rectangle_Bout_rdy : std_logic_vector(0 downto 0);
	signal aof_output_process_Draw_rectangle_Bout_count : std_logic_vector(15 downto 0);
	
	signal ai_output_process_RGB_to_YUV_R_data : std_logic_vector(7 downto 0);
	signal ai_output_process_RGB_to_YUV_R_send : std_logic;
	signal ai_output_process_RGB_to_YUV_R_ack : std_logic;
	signal ai_output_process_RGB_to_YUV_R_count : std_logic_vector(15 downto 0);
	
	signal ai_output_process_RGB_to_YUV_G_data : std_logic_vector(7 downto 0);
	signal ai_output_process_RGB_to_YUV_G_send : std_logic;
	signal ai_output_process_RGB_to_YUV_G_ack : std_logic;
	signal ai_output_process_RGB_to_YUV_G_count : std_logic_vector(15 downto 0);
	
	signal ai_output_process_RGB_to_YUV_B_data : std_logic_vector(7 downto 0);
	signal ai_output_process_RGB_to_YUV_B_send : std_logic;
	signal ai_output_process_RGB_to_YUV_B_ack : std_logic;
	signal ai_output_process_RGB_to_YUV_B_count : std_logic_vector(15 downto 0);
	
	signal ao_output_process_RGB_to_YUV_Y_data : std_logic_vector(7 downto 0);
	signal ao_output_process_RGB_to_YUV_Y_send : std_logic;
	signal ao_output_process_RGB_to_YUV_Y_ack : std_logic;
	signal ao_output_process_RGB_to_YUV_Y_rdy : std_logic;
	signal ao_output_process_RGB_to_YUV_Y_count : std_logic_vector(15 downto 0);
	
	signal aof_output_process_RGB_to_YUV_Y_data : std_logic_vector(7 downto 0);
	signal aof_output_process_RGB_to_YUV_Y_send : std_logic_vector(0 downto 0);
	signal aof_output_process_RGB_to_YUV_Y_ack : std_logic_vector(0 downto 0);
	signal aof_output_process_RGB_to_YUV_Y_rdy : std_logic_vector(0 downto 0);
	signal aof_output_process_RGB_to_YUV_Y_count : std_logic_vector(15 downto 0);
	
	signal ao_output_process_RGB_to_YUV_U_data : std_logic_vector(7 downto 0);
	signal ao_output_process_RGB_to_YUV_U_send : std_logic;
	signal ao_output_process_RGB_to_YUV_U_ack : std_logic;
	signal ao_output_process_RGB_to_YUV_U_rdy : std_logic;
	signal ao_output_process_RGB_to_YUV_U_count : std_logic_vector(15 downto 0);
	
	signal aof_output_process_RGB_to_YUV_U_data : std_logic_vector(7 downto 0);
	signal aof_output_process_RGB_to_YUV_U_send : std_logic_vector(0 downto 0);
	signal aof_output_process_RGB_to_YUV_U_ack : std_logic_vector(0 downto 0);
	signal aof_output_process_RGB_to_YUV_U_rdy : std_logic_vector(0 downto 0);
	signal aof_output_process_RGB_to_YUV_U_count : std_logic_vector(15 downto 0);
	
	signal ao_output_process_RGB_to_YUV_V_data : std_logic_vector(7 downto 0);
	signal ao_output_process_RGB_to_YUV_V_send : std_logic;
	signal ao_output_process_RGB_to_YUV_V_ack : std_logic;
	signal ao_output_process_RGB_to_YUV_V_rdy : std_logic;
	signal ao_output_process_RGB_to_YUV_V_count : std_logic_vector(15 downto 0);
	
	signal aof_output_process_RGB_to_YUV_V_data : std_logic_vector(7 downto 0);
	signal aof_output_process_RGB_to_YUV_V_send : std_logic_vector(0 downto 0);
	signal aof_output_process_RGB_to_YUV_V_ack : std_logic_vector(0 downto 0);
	signal aof_output_process_RGB_to_YUV_V_rdy : std_logic_vector(0 downto 0);
	signal aof_output_process_RGB_to_YUV_V_count : std_logic_vector(15 downto 0);
	
	signal ai_output_process_YUV_to_Stream_Y_data : std_logic_vector(7 downto 0);
	signal ai_output_process_YUV_to_Stream_Y_send : std_logic;
	signal ai_output_process_YUV_to_Stream_Y_ack : std_logic;
	signal ai_output_process_YUV_to_Stream_Y_count : std_logic_vector(15 downto 0);
	
	signal ai_output_process_YUV_to_Stream_U_data : std_logic_vector(7 downto 0);
	signal ai_output_process_YUV_to_Stream_U_send : std_logic;
	signal ai_output_process_YUV_to_Stream_U_ack : std_logic;
	signal ai_output_process_YUV_to_Stream_U_count : std_logic_vector(15 downto 0);
	
	signal ai_output_process_YUV_to_Stream_V_data : std_logic_vector(7 downto 0);
	signal ai_output_process_YUV_to_Stream_V_send : std_logic;
	signal ai_output_process_YUV_to_Stream_V_ack : std_logic;
	signal ai_output_process_YUV_to_Stream_V_count : std_logic_vector(15 downto 0);
	
	signal ao_output_process_YUV_to_Stream_YUV_data : std_logic_vector(7 downto 0);
	signal ao_output_process_YUV_to_Stream_YUV_send : std_logic;
	signal ao_output_process_YUV_to_Stream_YUV_ack : std_logic;
	signal ao_output_process_YUV_to_Stream_YUV_rdy : std_logic;
	signal ao_output_process_YUV_to_Stream_YUV_count : std_logic_vector(15 downto 0);
	
	signal aof_output_process_YUV_to_Stream_YUV_data : std_logic_vector(7 downto 0);
	signal aof_output_process_YUV_to_Stream_YUV_send : std_logic_vector(0 downto 0);
	signal aof_output_process_YUV_to_Stream_YUV_ack : std_logic_vector(0 downto 0);
	signal aof_output_process_YUV_to_Stream_YUV_rdy : std_logic_vector(0 downto 0);
	signal aof_output_process_YUV_to_Stream_YUV_count : std_logic_vector(15 downto 0);

	-- --------------------------------------------------------------------------
	-- Network Instances
	-- --------------------------------------------------------------------------
	component source is
	port(
	     -- Instance source Input(s)
	     -- Instance source Output(s)
	     O_data : out std_logic_vector(7 downto 0);
	     O_send : out std_logic;
	     O_ack : in std_logic;
	     O_rdy : in std_logic;
	     O_count : out std_logic_vector(15 downto 0);
	     clk: in std_logic;
	     reset: in std_logic);
	end component source;
	
	component Test_EOS is
	port(
	     -- Instance Test_EOS Input(s)
	     In_data : in std_logic_vector(7 downto 0);
	     In_send : in std_logic;
	     In_ack : out std_logic;
	     In_count : in std_logic_vector(15 downto 0);
	     -- Instance Test_EOS Output(s)
	     Out_data : out std_logic_vector(7 downto 0);
	     Out_send : out std_logic;
	     Out_ack : in std_logic;
	     Out_rdy : in std_logic;
	     Out_count : out std_logic_vector(15 downto 0);
	     pEOF_data : out std_logic;
	     pEOF_send : out std_logic;
	     pEOF_ack : in std_logic;
	     pEOF_rdy : in std_logic;
	     pEOF_count : out std_logic_vector(15 downto 0);
	     clk: in std_logic;
	     reset: in std_logic);
	end component Test_EOS;
	
	component Write_stream is
	port(
	     -- Instance Write_stream Input(s)
	     Byte_data : in std_logic_vector(7 downto 0);
	     Byte_send : in std_logic;
	     Byte_ack : out std_logic;
	     Byte_count : in std_logic_vector(15 downto 0);
	     pEOF_data : in std_logic;
	     pEOF_send : in std_logic;
	     pEOF_ack : out std_logic;
	     pEOF_count : in std_logic_vector(15 downto 0);
	     -- Instance Write_stream Output(s)
	     clk: in std_logic;
	     reset: in std_logic);
	end component Write_stream;
	
	component Mean_Shift_Main_main_loop_cal_kArray_evaluation is
	port(
	     -- Instance Mean_Shift_Main_main_loop_cal_kArray_evaluation Input(s)
	     -- Instance Mean_Shift_Main_main_loop_cal_kArray_evaluation Output(s)
	     kArrayO_data : out std_logic_vector(31 downto 0);
	     kArrayO_send : out std_logic;
	     kArrayO_ack : in std_logic;
	     kArrayO_rdy : in std_logic;
	     kArrayO_count : out std_logic_vector(15 downto 0);
	     clk: in std_logic;
	     reset: in std_logic);
	end component Mean_Shift_Main_main_loop_cal_kArray_evaluation;
	
	component Mean_Shift_Main_main_loop_cal_update_model is
	port(
	     -- Instance Mean_Shift_Main_main_loop_cal_update_model Input(s)
	     R_data : in std_logic_vector(7 downto 0);
	     R_send : in std_logic;
	     R_ack : out std_logic;
	     R_count : in std_logic_vector(15 downto 0);
	     G_data : in std_logic_vector(7 downto 0);
	     G_send : in std_logic;
	     G_ack : out std_logic;
	     G_count : in std_logic_vector(15 downto 0);
	     B_data : in std_logic_vector(7 downto 0);
	     B_send : in std_logic;
	     B_ack : out std_logic;
	     B_count : in std_logic_vector(15 downto 0);
	     centre_x_i_data : in std_logic_vector(31 downto 0);
	     centre_x_i_send : in std_logic;
	     centre_x_i_ack : out std_logic;
	     centre_x_i_count : in std_logic_vector(15 downto 0);
	     centre_y_i_data : in std_logic_vector(31 downto 0);
	     centre_y_i_send : in std_logic;
	     centre_y_i_ack : out std_logic;
	     centre_y_i_count : in std_logic_vector(15 downto 0);
	     kArray_data : in std_logic_vector(31 downto 0);
	     kArray_send : in std_logic;
	     kArray_ack : out std_logic;
	     kArray_count : in std_logic_vector(15 downto 0);
	     loop_status_data : in std_logic;
	     loop_status_send : in std_logic;
	     loop_status_ack : out std_logic;
	     loop_status_count : in std_logic_vector(15 downto 0);
	     -- Instance Mean_Shift_Main_main_loop_cal_update_model Output(s)
	     Qu_data : out std_logic_vector(31 downto 0);
	     Qu_send : out std_logic;
	     Qu_ack : in std_logic;
	     Qu_rdy : in std_logic;
	     Qu_count : out std_logic_vector(15 downto 0);
	     Pu_data : out std_logic_vector(31 downto 0);
	     Pu_send : out std_logic;
	     Pu_ack : in std_logic;
	     Pu_rdy : in std_logic;
	     Pu_count : out std_logic_vector(15 downto 0);
	     bin_o_data : out std_logic_vector(31 downto 0);
	     bin_o_send : out std_logic;
	     bin_o_ack : in std_logic;
	     bin_o_rdy : in std_logic;
	     bin_o_count : out std_logic_vector(15 downto 0);
	     clk: in std_logic;
	     reset: in std_logic);
	end component Mean_Shift_Main_main_loop_cal_update_model;
	
	component Mean_Shift_Main_main_loop_cal_update_weight is
	port(
	     -- Instance Mean_Shift_Main_main_loop_cal_update_weight Input(s)
	     QuModel_data : in std_logic_vector(31 downto 0);
	     QuModel_send : in std_logic;
	     QuModel_ack : out std_logic;
	     QuModel_count : in std_logic_vector(15 downto 0);
	     PuModel_data : in std_logic_vector(31 downto 0);
	     PuModel_send : in std_logic;
	     PuModel_ack : out std_logic;
	     PuModel_count : in std_logic_vector(15 downto 0);
	     bin_data : in std_logic_vector(31 downto 0);
	     bin_send : in std_logic;
	     bin_ack : out std_logic;
	     bin_count : in std_logic_vector(15 downto 0);
	     -- Instance Mean_Shift_Main_main_loop_cal_update_weight Output(s)
	     weights_data : out std_logic_vector(31 downto 0);
	     weights_send : out std_logic;
	     weights_ack : in std_logic;
	     weights_rdy : in std_logic;
	     weights_count : out std_logic_vector(15 downto 0);
	     clk: in std_logic;
	     reset: in std_logic);
	end component Mean_Shift_Main_main_loop_cal_update_weight;
	
	component Mean_Shift_Main_main_loop_cal_displacement is
	port(
	     -- Instance Mean_Shift_Main_main_loop_cal_displacement Input(s)
	     weights_data : in std_logic_vector(31 downto 0);
	     weights_send : in std_logic;
	     weights_ack : out std_logic;
	     weights_count : in std_logic_vector(15 downto 0);
	     kDerArray_data : in std_logic_vector(31 downto 0);
	     kDerArray_send : in std_logic;
	     kDerArray_ack : out std_logic;
	     kDerArray_count : in std_logic_vector(15 downto 0);
	     -- Instance Mean_Shift_Main_main_loop_cal_displacement Output(s)
	     dx_data : out std_logic_vector(31 downto 0);
	     dx_send : out std_logic;
	     dx_ack : in std_logic;
	     dx_rdy : in std_logic;
	     dx_count : out std_logic_vector(15 downto 0);
	     dy_data : out std_logic_vector(31 downto 0);
	     dy_send : out std_logic;
	     dy_ack : in std_logic;
	     dy_rdy : in std_logic;
	     dy_count : out std_logic_vector(15 downto 0);
	     clk: in std_logic;
	     reset: in std_logic);
	end component Mean_Shift_Main_main_loop_cal_displacement;
	
	component Mean_Shift_Main_main_loop_cal_kArray_derv is
	port(
	     -- Instance Mean_Shift_Main_main_loop_cal_kArray_derv Input(s)
	     -- Instance Mean_Shift_Main_main_loop_cal_kArray_derv Output(s)
	     kDervO_data : out std_logic_vector(31 downto 0);
	     kDervO_send : out std_logic;
	     kDervO_ack : in std_logic;
	     kDervO_rdy : in std_logic;
	     kDervO_count : out std_logic_vector(15 downto 0);
	     clk: in std_logic;
	     reset: in std_logic);
	end component Mean_Shift_Main_main_loop_cal_kArray_derv;
	
	component Mean_Shift_Main_main_loop_cal_Centre_XY is
	port(
	     -- Instance Mean_Shift_Main_main_loop_cal_Centre_XY Input(s)
	     dx_i_data : in std_logic_vector(31 downto 0);
	     dx_i_send : in std_logic;
	     dx_i_ack : out std_logic;
	     dx_i_count : in std_logic_vector(15 downto 0);
	     dy_i_data : in std_logic_vector(31 downto 0);
	     dy_i_send : in std_logic;
	     dy_i_ack : out std_logic;
	     dy_i_count : in std_logic_vector(15 downto 0);
	     -- Instance Mean_Shift_Main_main_loop_cal_Centre_XY Output(s)
	     centre_x_out_data : out std_logic_vector(31 downto 0);
	     centre_x_out_send : out std_logic;
	     centre_x_out_ack : in std_logic;
	     centre_x_out_rdy : in std_logic;
	     centre_x_out_count : out std_logic_vector(15 downto 0);
	     centre_y_out_data : out std_logic_vector(31 downto 0);
	     centre_y_out_send : out std_logic;
	     centre_y_out_ack : in std_logic;
	     centre_y_out_rdy : in std_logic;
	     centre_y_out_count : out std_logic_vector(15 downto 0);
	     loop_status_data : out std_logic;
	     loop_status_send : out std_logic;
	     loop_status_ack : in std_logic;
	     loop_status_rdy : in std_logic;
	     loop_status_count : out std_logic_vector(15 downto 0);
	     clk: in std_logic;
	     reset: in std_logic);
	end component Mean_Shift_Main_main_loop_cal_Centre_XY;
	
	component Mean_Shift_Main_main_loop_cal_Final_Centre_XY is
	port(
	     -- Instance Mean_Shift_Main_main_loop_cal_Final_Centre_XY Input(s)
	     X_in_data : in std_logic_vector(31 downto 0);
	     X_in_send : in std_logic;
	     X_in_ack : out std_logic;
	     X_in_count : in std_logic_vector(15 downto 0);
	     Y_in_data : in std_logic_vector(31 downto 0);
	     Y_in_send : in std_logic;
	     Y_in_ack : out std_logic;
	     Y_in_count : in std_logic_vector(15 downto 0);
	     loop_stat_data : in std_logic;
	     loop_stat_send : in std_logic;
	     loop_stat_ack : out std_logic;
	     loop_stat_count : in std_logic_vector(15 downto 0);
	     -- Instance Mean_Shift_Main_main_loop_cal_Final_Centre_XY Output(s)
	     X_out_data : out std_logic_vector(15 downto 0);
	     X_out_send : out std_logic;
	     X_out_ack : in std_logic;
	     X_out_rdy : in std_logic;
	     X_out_count : out std_logic_vector(15 downto 0);
	     Y_out_data : out std_logic_vector(15 downto 0);
	     Y_out_send : out std_logic;
	     Y_out_ack : in std_logic;
	     Y_out_rdy : in std_logic;
	     Y_out_count : out std_logic_vector(15 downto 0);
	     clk: in std_logic;
	     reset: in std_logic);
	end component Mean_Shift_Main_main_loop_cal_Final_Centre_XY;
	
	component Mean_Shift_Main_input_read_Stream_to_YUV is
	port(
	     -- Instance Mean_Shift_Main_input_read_Stream_to_YUV Input(s)
	     stream_data : in std_logic_vector(7 downto 0);
	     stream_send : in std_logic;
	     stream_ack : out std_logic;
	     stream_count : in std_logic_vector(15 downto 0);
	     -- Instance Mean_Shift_Main_input_read_Stream_to_YUV Output(s)
	     Y_data : out std_logic_vector(7 downto 0);
	     Y_send : out std_logic;
	     Y_ack : in std_logic;
	     Y_rdy : in std_logic;
	     Y_count : out std_logic_vector(15 downto 0);
	     U_data : out std_logic_vector(7 downto 0);
	     U_send : out std_logic;
	     U_ack : in std_logic;
	     U_rdy : in std_logic;
	     U_count : out std_logic_vector(15 downto 0);
	     V_data : out std_logic_vector(7 downto 0);
	     V_send : out std_logic;
	     V_ack : in std_logic;
	     V_rdy : in std_logic;
	     V_count : out std_logic_vector(15 downto 0);
	     clk: in std_logic;
	     reset: in std_logic);
	end component Mean_Shift_Main_input_read_Stream_to_YUV;
	
	component Mean_Shift_Main_input_read_YUV_to_RGB is
	port(
	     -- Instance Mean_Shift_Main_input_read_YUV_to_RGB Input(s)
	     Y_data : in std_logic_vector(7 downto 0);
	     Y_send : in std_logic;
	     Y_ack : out std_logic;
	     Y_count : in std_logic_vector(15 downto 0);
	     U_data : in std_logic_vector(7 downto 0);
	     U_send : in std_logic;
	     U_ack : out std_logic;
	     U_count : in std_logic_vector(15 downto 0);
	     V_data : in std_logic_vector(7 downto 0);
	     V_send : in std_logic;
	     V_ack : out std_logic;
	     V_count : in std_logic_vector(15 downto 0);
	     -- Instance Mean_Shift_Main_input_read_YUV_to_RGB Output(s)
	     R_data : out std_logic_vector(7 downto 0);
	     R_send : out std_logic;
	     R_ack : in std_logic;
	     R_rdy : in std_logic;
	     R_count : out std_logic_vector(15 downto 0);
	     G_data : out std_logic_vector(7 downto 0);
	     G_send : out std_logic;
	     G_ack : in std_logic;
	     G_rdy : in std_logic;
	     G_count : out std_logic_vector(15 downto 0);
	     B_data : out std_logic_vector(7 downto 0);
	     B_send : out std_logic;
	     B_ack : in std_logic;
	     B_rdy : in std_logic;
	     B_count : out std_logic_vector(15 downto 0);
	     clk: in std_logic;
	     reset: in std_logic);
	end component Mean_Shift_Main_input_read_YUV_to_RGB;
	
	component output_process_Draw_rectangle is
	port(
	     -- Instance output_process_Draw_rectangle Input(s)
	     Rin_data : in std_logic_vector(7 downto 0);
	     Rin_send : in std_logic;
	     Rin_ack : out std_logic;
	     Rin_count : in std_logic_vector(15 downto 0);
	     Gin_data : in std_logic_vector(7 downto 0);
	     Gin_send : in std_logic;
	     Gin_ack : out std_logic;
	     Gin_count : in std_logic_vector(15 downto 0);
	     Bin_data : in std_logic_vector(7 downto 0);
	     Bin_send : in std_logic;
	     Bin_ack : out std_logic;
	     Bin_count : in std_logic_vector(15 downto 0);
	     center_x_data : in std_logic_vector(15 downto 0);
	     center_x_send : in std_logic;
	     center_x_ack : out std_logic;
	     center_x_count : in std_logic_vector(15 downto 0);
	     center_y_data : in std_logic_vector(15 downto 0);
	     center_y_send : in std_logic;
	     center_y_ack : out std_logic;
	     center_y_count : in std_logic_vector(15 downto 0);
	     -- Instance output_process_Draw_rectangle Output(s)
	     Rout_data : out std_logic_vector(7 downto 0);
	     Rout_send : out std_logic;
	     Rout_ack : in std_logic;
	     Rout_rdy : in std_logic;
	     Rout_count : out std_logic_vector(15 downto 0);
	     Gout_data : out std_logic_vector(7 downto 0);
	     Gout_send : out std_logic;
	     Gout_ack : in std_logic;
	     Gout_rdy : in std_logic;
	     Gout_count : out std_logic_vector(15 downto 0);
	     Bout_data : out std_logic_vector(7 downto 0);
	     Bout_send : out std_logic;
	     Bout_ack : in std_logic;
	     Bout_rdy : in std_logic;
	     Bout_count : out std_logic_vector(15 downto 0);
	     clk: in std_logic;
	     reset: in std_logic);
	end component output_process_Draw_rectangle;
	
	component output_process_RGB_to_YUV is
	port(
	     -- Instance output_process_RGB_to_YUV Input(s)
	     R_data : in std_logic_vector(7 downto 0);
	     R_send : in std_logic;
	     R_ack : out std_logic;
	     R_count : in std_logic_vector(15 downto 0);
	     G_data : in std_logic_vector(7 downto 0);
	     G_send : in std_logic;
	     G_ack : out std_logic;
	     G_count : in std_logic_vector(15 downto 0);
	     B_data : in std_logic_vector(7 downto 0);
	     B_send : in std_logic;
	     B_ack : out std_logic;
	     B_count : in std_logic_vector(15 downto 0);
	     -- Instance output_process_RGB_to_YUV Output(s)
	     Y_data : out std_logic_vector(7 downto 0);
	     Y_send : out std_logic;
	     Y_ack : in std_logic;
	     Y_rdy : in std_logic;
	     Y_count : out std_logic_vector(15 downto 0);
	     U_data : out std_logic_vector(7 downto 0);
	     U_send : out std_logic;
	     U_ack : in std_logic;
	     U_rdy : in std_logic;
	     U_count : out std_logic_vector(15 downto 0);
	     V_data : out std_logic_vector(7 downto 0);
	     V_send : out std_logic;
	     V_ack : in std_logic;
	     V_rdy : in std_logic;
	     V_count : out std_logic_vector(15 downto 0);
	     clk: in std_logic;
	     reset: in std_logic);
	end component output_process_RGB_to_YUV;
	
	component output_process_YUV_to_Stream is
	port(
	     -- Instance output_process_YUV_to_Stream Input(s)
	     Y_data : in std_logic_vector(7 downto 0);
	     Y_send : in std_logic;
	     Y_ack : out std_logic;
	     Y_count : in std_logic_vector(15 downto 0);
	     U_data : in std_logic_vector(7 downto 0);
	     U_send : in std_logic;
	     U_ack : out std_logic;
	     U_count : in std_logic_vector(15 downto 0);
	     V_data : in std_logic_vector(7 downto 0);
	     V_send : in std_logic;
	     V_ack : out std_logic;
	     V_count : in std_logic_vector(15 downto 0);
	     -- Instance output_process_YUV_to_Stream Output(s)
	     YUV_data : out std_logic_vector(7 downto 0);
	     YUV_send : out std_logic;
	     YUV_ack : in std_logic;
	     YUV_rdy : in std_logic;
	     YUV_count : out std_logic_vector(15 downto 0);
	     clk: in std_logic;
	     reset: in std_logic);
	end component output_process_YUV_to_Stream;
	

begin
	-- Reset Controller
	rcon: entity SystemBuilder.resetController(behavioral)
	generic map(count => 1)
	port map( 
	         clocks => clocks, 
	         reset_in => reset, 
	         resets => resets);
	
	clocks(0) <= CLK;

	-- --------------------------------------------------------------------------
	-- Actor instances
	-- --------------------------------------------------------------------------
	i_source : component source
	port map(
		-- Instance source Input(s)
		-- Instance source Output(s)
		O_data => ao_source_O_data,
		O_send => ao_source_O_send,
		O_ack => ao_source_O_ack,
		O_rdy => ao_source_O_rdy,
		O_count => ao_source_O_count,
		-- Clock and Reset
	clk => clocks(0),
	--clk => clocks(0),
	reset => resets(0));
	
	i_Test_EOS : component Test_EOS
	port map(
		-- Instance Test_EOS Input(s)
		In_data => ai_Test_EOS_In_data,
		In_send => ai_Test_EOS_In_send,
		In_ack => ai_Test_EOS_In_ack,
		In_count => ai_Test_EOS_In_count,
		-- Instance Test_EOS Output(s)
		Out_data => ao_Test_EOS_Out_data,
		Out_send => ao_Test_EOS_Out_send,
		Out_ack => ao_Test_EOS_Out_ack,
		Out_rdy => ao_Test_EOS_Out_rdy,
		Out_count => ao_Test_EOS_Out_count,
		
		pEOF_data => ao_Test_EOS_pEOF_data,
		pEOF_send => ao_Test_EOS_pEOF_send,
		pEOF_ack => ao_Test_EOS_pEOF_ack,
		pEOF_rdy => ao_Test_EOS_pEOF_rdy,
		pEOF_count => ao_Test_EOS_pEOF_count,
		-- Clock and Reset
	clk => clocks(0),
	--clk => clocks(0),
	reset => resets(0));
	
	i_Write_stream : component Write_stream
	port map(
		-- Instance Write_stream Input(s)
		Byte_data => ai_Write_stream_Byte_data,
		Byte_send => ai_Write_stream_Byte_send,
		Byte_ack => ai_Write_stream_Byte_ack,
		Byte_count => ai_Write_stream_Byte_count,
		
		pEOF_data => ai_Write_stream_pEOF_data,
		pEOF_send => ai_Write_stream_pEOF_send,
		pEOF_ack => ai_Write_stream_pEOF_ack,
		pEOF_count => ai_Write_stream_pEOF_count,
		-- Instance Write_stream Output(s)
		-- Clock and Reset
	clk => clocks(0),
	--clk => clocks(0),
	reset => resets(0));
	
	i_Mean_Shift_Main_main_loop_cal_kArray_evaluation : component Mean_Shift_Main_main_loop_cal_kArray_evaluation
	port map(
		-- Instance Mean_Shift_Main_main_loop_cal_kArray_evaluation Input(s)
		-- Instance Mean_Shift_Main_main_loop_cal_kArray_evaluation Output(s)
		kArrayO_data => ao_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO_data,
		kArrayO_send => ao_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO_send,
		kArrayO_ack => ao_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO_ack,
		kArrayO_rdy => ao_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO_rdy,
		kArrayO_count => ao_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO_count,
		-- Clock and Reset
	clk => clocks(0),
	--clk => clocks(0),
	reset => resets(0));
	
	i_Mean_Shift_Main_main_loop_cal_update_model : component Mean_Shift_Main_main_loop_cal_update_model
	port map(
		-- Instance Mean_Shift_Main_main_loop_cal_update_model Input(s)
		R_data => ai_Mean_Shift_Main_main_loop_cal_update_model_R_data,
		R_send => ai_Mean_Shift_Main_main_loop_cal_update_model_R_send,
		R_ack => ai_Mean_Shift_Main_main_loop_cal_update_model_R_ack,
		R_count => ai_Mean_Shift_Main_main_loop_cal_update_model_R_count,
		
		G_data => ai_Mean_Shift_Main_main_loop_cal_update_model_G_data,
		G_send => ai_Mean_Shift_Main_main_loop_cal_update_model_G_send,
		G_ack => ai_Mean_Shift_Main_main_loop_cal_update_model_G_ack,
		G_count => ai_Mean_Shift_Main_main_loop_cal_update_model_G_count,
		
		B_data => ai_Mean_Shift_Main_main_loop_cal_update_model_B_data,
		B_send => ai_Mean_Shift_Main_main_loop_cal_update_model_B_send,
		B_ack => ai_Mean_Shift_Main_main_loop_cal_update_model_B_ack,
		B_count => ai_Mean_Shift_Main_main_loop_cal_update_model_B_count,
		
		centre_x_i_data => ai_Mean_Shift_Main_main_loop_cal_update_model_centre_x_i_data,
		centre_x_i_send => ai_Mean_Shift_Main_main_loop_cal_update_model_centre_x_i_send,
		centre_x_i_ack => ai_Mean_Shift_Main_main_loop_cal_update_model_centre_x_i_ack,
		centre_x_i_count => ai_Mean_Shift_Main_main_loop_cal_update_model_centre_x_i_count,
		
		centre_y_i_data => ai_Mean_Shift_Main_main_loop_cal_update_model_centre_y_i_data,
		centre_y_i_send => ai_Mean_Shift_Main_main_loop_cal_update_model_centre_y_i_send,
		centre_y_i_ack => ai_Mean_Shift_Main_main_loop_cal_update_model_centre_y_i_ack,
		centre_y_i_count => ai_Mean_Shift_Main_main_loop_cal_update_model_centre_y_i_count,
		
		kArray_data => ai_Mean_Shift_Main_main_loop_cal_update_model_kArray_data,
		kArray_send => ai_Mean_Shift_Main_main_loop_cal_update_model_kArray_send,
		kArray_ack => ai_Mean_Shift_Main_main_loop_cal_update_model_kArray_ack,
		kArray_count => ai_Mean_Shift_Main_main_loop_cal_update_model_kArray_count,
		
		loop_status_data => ai_Mean_Shift_Main_main_loop_cal_update_model_loop_status_data,
		loop_status_send => ai_Mean_Shift_Main_main_loop_cal_update_model_loop_status_send,
		loop_status_ack => ai_Mean_Shift_Main_main_loop_cal_update_model_loop_status_ack,
		loop_status_count => ai_Mean_Shift_Main_main_loop_cal_update_model_loop_status_count,
		-- Instance Mean_Shift_Main_main_loop_cal_update_model Output(s)
		Qu_data => ao_Mean_Shift_Main_main_loop_cal_update_model_Qu_data,
		Qu_send => ao_Mean_Shift_Main_main_loop_cal_update_model_Qu_send,
		Qu_ack => ao_Mean_Shift_Main_main_loop_cal_update_model_Qu_ack,
		Qu_rdy => ao_Mean_Shift_Main_main_loop_cal_update_model_Qu_rdy,
		Qu_count => ao_Mean_Shift_Main_main_loop_cal_update_model_Qu_count,
		
		Pu_data => ao_Mean_Shift_Main_main_loop_cal_update_model_Pu_data,
		Pu_send => ao_Mean_Shift_Main_main_loop_cal_update_model_Pu_send,
		Pu_ack => ao_Mean_Shift_Main_main_loop_cal_update_model_Pu_ack,
		Pu_rdy => ao_Mean_Shift_Main_main_loop_cal_update_model_Pu_rdy,
		Pu_count => ao_Mean_Shift_Main_main_loop_cal_update_model_Pu_count,
		
		bin_o_data => ao_Mean_Shift_Main_main_loop_cal_update_model_bin_o_data,
		bin_o_send => ao_Mean_Shift_Main_main_loop_cal_update_model_bin_o_send,
		bin_o_ack => ao_Mean_Shift_Main_main_loop_cal_update_model_bin_o_ack,
		bin_o_rdy => ao_Mean_Shift_Main_main_loop_cal_update_model_bin_o_rdy,
		bin_o_count => ao_Mean_Shift_Main_main_loop_cal_update_model_bin_o_count,
		-- Clock and Reset
	clk => clocks(0),
	--clk => clocks(0),
	reset => resets(0));
	
	i_Mean_Shift_Main_main_loop_cal_update_weight : component Mean_Shift_Main_main_loop_cal_update_weight
	port map(
		-- Instance Mean_Shift_Main_main_loop_cal_update_weight Input(s)
		QuModel_data => ai_Mean_Shift_Main_main_loop_cal_update_weight_QuModel_data,
		QuModel_send => ai_Mean_Shift_Main_main_loop_cal_update_weight_QuModel_send,
		QuModel_ack => ai_Mean_Shift_Main_main_loop_cal_update_weight_QuModel_ack,
		QuModel_count => ai_Mean_Shift_Main_main_loop_cal_update_weight_QuModel_count,
		
		PuModel_data => ai_Mean_Shift_Main_main_loop_cal_update_weight_PuModel_data,
		PuModel_send => ai_Mean_Shift_Main_main_loop_cal_update_weight_PuModel_send,
		PuModel_ack => ai_Mean_Shift_Main_main_loop_cal_update_weight_PuModel_ack,
		PuModel_count => ai_Mean_Shift_Main_main_loop_cal_update_weight_PuModel_count,
		
		bin_data => ai_Mean_Shift_Main_main_loop_cal_update_weight_bin_data,
		bin_send => ai_Mean_Shift_Main_main_loop_cal_update_weight_bin_send,
		bin_ack => ai_Mean_Shift_Main_main_loop_cal_update_weight_bin_ack,
		bin_count => ai_Mean_Shift_Main_main_loop_cal_update_weight_bin_count,
		-- Instance Mean_Shift_Main_main_loop_cal_update_weight Output(s)
		weights_data => ao_Mean_Shift_Main_main_loop_cal_update_weight_weights_data,
		weights_send => ao_Mean_Shift_Main_main_loop_cal_update_weight_weights_send,
		weights_ack => ao_Mean_Shift_Main_main_loop_cal_update_weight_weights_ack,
		weights_rdy => ao_Mean_Shift_Main_main_loop_cal_update_weight_weights_rdy,
		weights_count => ao_Mean_Shift_Main_main_loop_cal_update_weight_weights_count,
		-- Clock and Reset
	clk => clocks(0),
	--clk => clocks(0),
	reset => resets(0));
	
	i_Mean_Shift_Main_main_loop_cal_displacement : component Mean_Shift_Main_main_loop_cal_displacement
	port map(
		-- Instance Mean_Shift_Main_main_loop_cal_displacement Input(s)
		weights_data => ai_Mean_Shift_Main_main_loop_cal_displacement_weights_data,
		weights_send => ai_Mean_Shift_Main_main_loop_cal_displacement_weights_send,
		weights_ack => ai_Mean_Shift_Main_main_loop_cal_displacement_weights_ack,
		weights_count => ai_Mean_Shift_Main_main_loop_cal_displacement_weights_count,
		
		kDerArray_data => ai_Mean_Shift_Main_main_loop_cal_displacement_kDerArray_data,
		kDerArray_send => ai_Mean_Shift_Main_main_loop_cal_displacement_kDerArray_send,
		kDerArray_ack => ai_Mean_Shift_Main_main_loop_cal_displacement_kDerArray_ack,
		kDerArray_count => ai_Mean_Shift_Main_main_loop_cal_displacement_kDerArray_count,
		-- Instance Mean_Shift_Main_main_loop_cal_displacement Output(s)
		dx_data => ao_Mean_Shift_Main_main_loop_cal_displacement_dx_data,
		dx_send => ao_Mean_Shift_Main_main_loop_cal_displacement_dx_send,
		dx_ack => ao_Mean_Shift_Main_main_loop_cal_displacement_dx_ack,
		dx_rdy => ao_Mean_Shift_Main_main_loop_cal_displacement_dx_rdy,
		dx_count => ao_Mean_Shift_Main_main_loop_cal_displacement_dx_count,
		
		dy_data => ao_Mean_Shift_Main_main_loop_cal_displacement_dy_data,
		dy_send => ao_Mean_Shift_Main_main_loop_cal_displacement_dy_send,
		dy_ack => ao_Mean_Shift_Main_main_loop_cal_displacement_dy_ack,
		dy_rdy => ao_Mean_Shift_Main_main_loop_cal_displacement_dy_rdy,
		dy_count => ao_Mean_Shift_Main_main_loop_cal_displacement_dy_count,
		-- Clock and Reset
	clk => clocks(0),
	--clk => clocks(0),
	reset => resets(0));
	
	i_Mean_Shift_Main_main_loop_cal_kArray_derv : component Mean_Shift_Main_main_loop_cal_kArray_derv
	port map(
		-- Instance Mean_Shift_Main_main_loop_cal_kArray_derv Input(s)
		-- Instance Mean_Shift_Main_main_loop_cal_kArray_derv Output(s)
		kDervO_data => ao_Mean_Shift_Main_main_loop_cal_kArray_derv_kDervO_data,
		kDervO_send => ao_Mean_Shift_Main_main_loop_cal_kArray_derv_kDervO_send,
		kDervO_ack => ao_Mean_Shift_Main_main_loop_cal_kArray_derv_kDervO_ack,
		kDervO_rdy => ao_Mean_Shift_Main_main_loop_cal_kArray_derv_kDervO_rdy,
		kDervO_count => ao_Mean_Shift_Main_main_loop_cal_kArray_derv_kDervO_count,
		-- Clock and Reset
	clk => clocks(0),
	--clk => clocks(0),
	reset => resets(0));
	
	i_Mean_Shift_Main_main_loop_cal_Centre_XY : component Mean_Shift_Main_main_loop_cal_Centre_XY
	port map(
		-- Instance Mean_Shift_Main_main_loop_cal_Centre_XY Input(s)
		dx_i_data => ai_Mean_Shift_Main_main_loop_cal_Centre_XY_dx_i_data,
		dx_i_send => ai_Mean_Shift_Main_main_loop_cal_Centre_XY_dx_i_send,
		dx_i_ack => ai_Mean_Shift_Main_main_loop_cal_Centre_XY_dx_i_ack,
		dx_i_count => ai_Mean_Shift_Main_main_loop_cal_Centre_XY_dx_i_count,
		
		dy_i_data => ai_Mean_Shift_Main_main_loop_cal_Centre_XY_dy_i_data,
		dy_i_send => ai_Mean_Shift_Main_main_loop_cal_Centre_XY_dy_i_send,
		dy_i_ack => ai_Mean_Shift_Main_main_loop_cal_Centre_XY_dy_i_ack,
		dy_i_count => ai_Mean_Shift_Main_main_loop_cal_Centre_XY_dy_i_count,
		-- Instance Mean_Shift_Main_main_loop_cal_Centre_XY Output(s)
		centre_x_out_data => ao_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_data,
		centre_x_out_send => ao_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_send,
		centre_x_out_ack => ao_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_ack,
		centre_x_out_rdy => ao_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_rdy,
		centre_x_out_count => ao_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_count,
		
		centre_y_out_data => ao_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_data,
		centre_y_out_send => ao_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_send,
		centre_y_out_ack => ao_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_ack,
		centre_y_out_rdy => ao_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_rdy,
		centre_y_out_count => ao_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_count,
		
		loop_status_data => ao_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_data,
		loop_status_send => ao_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_send,
		loop_status_ack => ao_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_ack,
		loop_status_rdy => ao_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_rdy,
		loop_status_count => ao_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_count,
		-- Clock and Reset
	clk => clocks(0),
	--clk => clocks(0),
	reset => resets(0));
	
	i_Mean_Shift_Main_main_loop_cal_Final_Centre_XY : component Mean_Shift_Main_main_loop_cal_Final_Centre_XY
	port map(
		-- Instance Mean_Shift_Main_main_loop_cal_Final_Centre_XY Input(s)
		X_in_data => ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_in_data,
		X_in_send => ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_in_send,
		X_in_ack => ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_in_ack,
		X_in_count => ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_in_count,
		
		Y_in_data => ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_in_data,
		Y_in_send => ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_in_send,
		Y_in_ack => ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_in_ack,
		Y_in_count => ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_in_count,
		
		loop_stat_data => ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_loop_stat_data,
		loop_stat_send => ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_loop_stat_send,
		loop_stat_ack => ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_loop_stat_ack,
		loop_stat_count => ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_loop_stat_count,
		-- Instance Mean_Shift_Main_main_loop_cal_Final_Centre_XY Output(s)
		X_out_data => ao_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out_data,
		X_out_send => ao_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out_send,
		X_out_ack => ao_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out_ack,
		X_out_rdy => ao_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out_rdy,
		X_out_count => ao_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out_count,
		
		Y_out_data => ao_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out_data,
		Y_out_send => ao_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out_send,
		Y_out_ack => ao_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out_ack,
		Y_out_rdy => ao_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out_rdy,
		Y_out_count => ao_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out_count,
		-- Clock and Reset
	clk => clocks(0),
	--clk => clocks(0),
	reset => resets(0));
	
	i_Mean_Shift_Main_input_read_Stream_to_YUV : component Mean_Shift_Main_input_read_Stream_to_YUV
	port map(
		-- Instance Mean_Shift_Main_input_read_Stream_to_YUV Input(s)
		stream_data => ai_Mean_Shift_Main_input_read_Stream_to_YUV_stream_data,
		stream_send => ai_Mean_Shift_Main_input_read_Stream_to_YUV_stream_send,
		stream_ack => ai_Mean_Shift_Main_input_read_Stream_to_YUV_stream_ack,
		stream_count => ai_Mean_Shift_Main_input_read_Stream_to_YUV_stream_count,
		-- Instance Mean_Shift_Main_input_read_Stream_to_YUV Output(s)
		Y_data => ao_Mean_Shift_Main_input_read_Stream_to_YUV_Y_data,
		Y_send => ao_Mean_Shift_Main_input_read_Stream_to_YUV_Y_send,
		Y_ack => ao_Mean_Shift_Main_input_read_Stream_to_YUV_Y_ack,
		Y_rdy => ao_Mean_Shift_Main_input_read_Stream_to_YUV_Y_rdy,
		Y_count => ao_Mean_Shift_Main_input_read_Stream_to_YUV_Y_count,
		
		U_data => ao_Mean_Shift_Main_input_read_Stream_to_YUV_U_data,
		U_send => ao_Mean_Shift_Main_input_read_Stream_to_YUV_U_send,
		U_ack => ao_Mean_Shift_Main_input_read_Stream_to_YUV_U_ack,
		U_rdy => ao_Mean_Shift_Main_input_read_Stream_to_YUV_U_rdy,
		U_count => ao_Mean_Shift_Main_input_read_Stream_to_YUV_U_count,
		
		V_data => ao_Mean_Shift_Main_input_read_Stream_to_YUV_V_data,
		V_send => ao_Mean_Shift_Main_input_read_Stream_to_YUV_V_send,
		V_ack => ao_Mean_Shift_Main_input_read_Stream_to_YUV_V_ack,
		V_rdy => ao_Mean_Shift_Main_input_read_Stream_to_YUV_V_rdy,
		V_count => ao_Mean_Shift_Main_input_read_Stream_to_YUV_V_count,
		-- Clock and Reset
	clk => clocks(0),
	--clk => clocks(0),
	reset => resets(0));
	
	i_Mean_Shift_Main_input_read_YUV_to_RGB : component Mean_Shift_Main_input_read_YUV_to_RGB
	port map(
		-- Instance Mean_Shift_Main_input_read_YUV_to_RGB Input(s)
		Y_data => ai_Mean_Shift_Main_input_read_YUV_to_RGB_Y_data,
		Y_send => ai_Mean_Shift_Main_input_read_YUV_to_RGB_Y_send,
		Y_ack => ai_Mean_Shift_Main_input_read_YUV_to_RGB_Y_ack,
		Y_count => ai_Mean_Shift_Main_input_read_YUV_to_RGB_Y_count,
		
		U_data => ai_Mean_Shift_Main_input_read_YUV_to_RGB_U_data,
		U_send => ai_Mean_Shift_Main_input_read_YUV_to_RGB_U_send,
		U_ack => ai_Mean_Shift_Main_input_read_YUV_to_RGB_U_ack,
		U_count => ai_Mean_Shift_Main_input_read_YUV_to_RGB_U_count,
		
		V_data => ai_Mean_Shift_Main_input_read_YUV_to_RGB_V_data,
		V_send => ai_Mean_Shift_Main_input_read_YUV_to_RGB_V_send,
		V_ack => ai_Mean_Shift_Main_input_read_YUV_to_RGB_V_ack,
		V_count => ai_Mean_Shift_Main_input_read_YUV_to_RGB_V_count,
		-- Instance Mean_Shift_Main_input_read_YUV_to_RGB Output(s)
		R_data => ao_Mean_Shift_Main_input_read_YUV_to_RGB_R_data,
		R_send => ao_Mean_Shift_Main_input_read_YUV_to_RGB_R_send,
		R_ack => ao_Mean_Shift_Main_input_read_YUV_to_RGB_R_ack,
		R_rdy => ao_Mean_Shift_Main_input_read_YUV_to_RGB_R_rdy,
		R_count => ao_Mean_Shift_Main_input_read_YUV_to_RGB_R_count,
		
		G_data => ao_Mean_Shift_Main_input_read_YUV_to_RGB_G_data,
		G_send => ao_Mean_Shift_Main_input_read_YUV_to_RGB_G_send,
		G_ack => ao_Mean_Shift_Main_input_read_YUV_to_RGB_G_ack,
		G_rdy => ao_Mean_Shift_Main_input_read_YUV_to_RGB_G_rdy,
		G_count => ao_Mean_Shift_Main_input_read_YUV_to_RGB_G_count,
		
		B_data => ao_Mean_Shift_Main_input_read_YUV_to_RGB_B_data,
		B_send => ao_Mean_Shift_Main_input_read_YUV_to_RGB_B_send,
		B_ack => ao_Mean_Shift_Main_input_read_YUV_to_RGB_B_ack,
		B_rdy => ao_Mean_Shift_Main_input_read_YUV_to_RGB_B_rdy,
		B_count => ao_Mean_Shift_Main_input_read_YUV_to_RGB_B_count,
		-- Clock and Reset
	clk => clocks(0),
	--clk => clocks(0),
	reset => resets(0));
	
	i_output_process_Draw_rectangle : component output_process_Draw_rectangle
	port map(
		-- Instance output_process_Draw_rectangle Input(s)
		Rin_data => ai_output_process_Draw_rectangle_Rin_data,
		Rin_send => ai_output_process_Draw_rectangle_Rin_send,
		Rin_ack => ai_output_process_Draw_rectangle_Rin_ack,
		Rin_count => ai_output_process_Draw_rectangle_Rin_count,
		
		Gin_data => ai_output_process_Draw_rectangle_Gin_data,
		Gin_send => ai_output_process_Draw_rectangle_Gin_send,
		Gin_ack => ai_output_process_Draw_rectangle_Gin_ack,
		Gin_count => ai_output_process_Draw_rectangle_Gin_count,
		
		Bin_data => ai_output_process_Draw_rectangle_Bin_data,
		Bin_send => ai_output_process_Draw_rectangle_Bin_send,
		Bin_ack => ai_output_process_Draw_rectangle_Bin_ack,
		Bin_count => ai_output_process_Draw_rectangle_Bin_count,
		
		center_x_data => ai_output_process_Draw_rectangle_center_x_data,
		center_x_send => ai_output_process_Draw_rectangle_center_x_send,
		center_x_ack => ai_output_process_Draw_rectangle_center_x_ack,
		center_x_count => ai_output_process_Draw_rectangle_center_x_count,
		
		center_y_data => ai_output_process_Draw_rectangle_center_y_data,
		center_y_send => ai_output_process_Draw_rectangle_center_y_send,
		center_y_ack => ai_output_process_Draw_rectangle_center_y_ack,
		center_y_count => ai_output_process_Draw_rectangle_center_y_count,
		-- Instance output_process_Draw_rectangle Output(s)
		Rout_data => ao_output_process_Draw_rectangle_Rout_data,
		Rout_send => ao_output_process_Draw_rectangle_Rout_send,
		Rout_ack => ao_output_process_Draw_rectangle_Rout_ack,
		Rout_rdy => ao_output_process_Draw_rectangle_Rout_rdy,
		Rout_count => ao_output_process_Draw_rectangle_Rout_count,
		
		Gout_data => ao_output_process_Draw_rectangle_Gout_data,
		Gout_send => ao_output_process_Draw_rectangle_Gout_send,
		Gout_ack => ao_output_process_Draw_rectangle_Gout_ack,
		Gout_rdy => ao_output_process_Draw_rectangle_Gout_rdy,
		Gout_count => ao_output_process_Draw_rectangle_Gout_count,
		
		Bout_data => ao_output_process_Draw_rectangle_Bout_data,
		Bout_send => ao_output_process_Draw_rectangle_Bout_send,
		Bout_ack => ao_output_process_Draw_rectangle_Bout_ack,
		Bout_rdy => ao_output_process_Draw_rectangle_Bout_rdy,
		Bout_count => ao_output_process_Draw_rectangle_Bout_count,
		-- Clock and Reset
	clk => clocks(0),
	--clk => clocks(0),
	reset => resets(0));
	
	i_output_process_RGB_to_YUV : component output_process_RGB_to_YUV
	port map(
		-- Instance output_process_RGB_to_YUV Input(s)
		R_data => ai_output_process_RGB_to_YUV_R_data,
		R_send => ai_output_process_RGB_to_YUV_R_send,
		R_ack => ai_output_process_RGB_to_YUV_R_ack,
		R_count => ai_output_process_RGB_to_YUV_R_count,
		
		G_data => ai_output_process_RGB_to_YUV_G_data,
		G_send => ai_output_process_RGB_to_YUV_G_send,
		G_ack => ai_output_process_RGB_to_YUV_G_ack,
		G_count => ai_output_process_RGB_to_YUV_G_count,
		
		B_data => ai_output_process_RGB_to_YUV_B_data,
		B_send => ai_output_process_RGB_to_YUV_B_send,
		B_ack => ai_output_process_RGB_to_YUV_B_ack,
		B_count => ai_output_process_RGB_to_YUV_B_count,
		-- Instance output_process_RGB_to_YUV Output(s)
		Y_data => ao_output_process_RGB_to_YUV_Y_data,
		Y_send => ao_output_process_RGB_to_YUV_Y_send,
		Y_ack => ao_output_process_RGB_to_YUV_Y_ack,
		Y_rdy => ao_output_process_RGB_to_YUV_Y_rdy,
		Y_count => ao_output_process_RGB_to_YUV_Y_count,
		
		U_data => ao_output_process_RGB_to_YUV_U_data,
		U_send => ao_output_process_RGB_to_YUV_U_send,
		U_ack => ao_output_process_RGB_to_YUV_U_ack,
		U_rdy => ao_output_process_RGB_to_YUV_U_rdy,
		U_count => ao_output_process_RGB_to_YUV_U_count,
		
		V_data => ao_output_process_RGB_to_YUV_V_data,
		V_send => ao_output_process_RGB_to_YUV_V_send,
		V_ack => ao_output_process_RGB_to_YUV_V_ack,
		V_rdy => ao_output_process_RGB_to_YUV_V_rdy,
		V_count => ao_output_process_RGB_to_YUV_V_count,
		-- Clock and Reset
	clk => clocks(0),
	--clk => clocks(0),
	reset => resets(0));
	
	i_output_process_YUV_to_Stream : component output_process_YUV_to_Stream
	port map(
		-- Instance output_process_YUV_to_Stream Input(s)
		Y_data => ai_output_process_YUV_to_Stream_Y_data,
		Y_send => ai_output_process_YUV_to_Stream_Y_send,
		Y_ack => ai_output_process_YUV_to_Stream_Y_ack,
		Y_count => ai_output_process_YUV_to_Stream_Y_count,
		
		U_data => ai_output_process_YUV_to_Stream_U_data,
		U_send => ai_output_process_YUV_to_Stream_U_send,
		U_ack => ai_output_process_YUV_to_Stream_U_ack,
		U_count => ai_output_process_YUV_to_Stream_U_count,
		
		V_data => ai_output_process_YUV_to_Stream_V_data,
		V_send => ai_output_process_YUV_to_Stream_V_send,
		V_ack => ai_output_process_YUV_to_Stream_V_ack,
		V_count => ai_output_process_YUV_to_Stream_V_count,
		-- Instance output_process_YUV_to_Stream Output(s)
		YUV_data => ao_output_process_YUV_to_Stream_YUV_data,
		YUV_send => ao_output_process_YUV_to_Stream_YUV_send,
		YUV_ack => ao_output_process_YUV_to_Stream_YUV_ack,
		YUV_rdy => ao_output_process_YUV_to_Stream_YUV_rdy,
		YUV_count => ao_output_process_YUV_to_Stream_YUV_count,
		-- Clock and Reset
	clk => clocks(0),
	--clk => clocks(0),
	reset => resets(0));
	
	-- --------------------------------------------------------------------------
	-- Nework Input Fanouts
	-- --------------------------------------------------------------------------

	-- --------------------------------------------------------------------------
	-- Actor Output Fanouts
	-- --------------------------------------------------------------------------
	f_ao_source_O : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 8)
	port map(
		-- Fanout In
		In_data => ao_source_O_data,
		In_send => ao_source_O_send,
		In_ack => ao_source_O_ack,
		In_rdy => ao_source_O_rdy,
		In_count => ao_source_O_count,
		-- Fanout Out
		Out_data => aof_source_O_data,
		Out_send => aof_source_O_send,
		Out_ack => aof_source_O_ack,
		Out_rdy => aof_source_O_rdy,
		Out_count => aof_source_O_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	
	f_ao_Test_EOS_Out : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 8)
	port map(
		-- Fanout In
		In_data => ao_Test_EOS_Out_data,
		In_send => ao_Test_EOS_Out_send,
		In_ack => ao_Test_EOS_Out_ack,
		In_rdy => ao_Test_EOS_Out_rdy,
		In_count => ao_Test_EOS_Out_count,
		-- Fanout Out
		Out_data => aof_Test_EOS_Out_data,
		Out_send => aof_Test_EOS_Out_send,
		Out_ack => aof_Test_EOS_Out_ack,
		Out_rdy => aof_Test_EOS_Out_rdy,
		Out_count => aof_Test_EOS_Out_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	f_ao_Test_EOS_pEOF : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 1)
	port map(
		-- Fanout In
		In_data(0) => ao_Test_EOS_pEOF_data,
		In_send => ao_Test_EOS_pEOF_send,
		In_ack => ao_Test_EOS_pEOF_ack,
		In_rdy => ao_Test_EOS_pEOF_rdy,
		In_count => ao_Test_EOS_pEOF_count,
		-- Fanout Out
		Out_data(0) => aof_Test_EOS_pEOF_data,
		Out_send => aof_Test_EOS_pEOF_send,
		Out_ack => aof_Test_EOS_pEOF_ack,
		Out_rdy => aof_Test_EOS_pEOF_rdy,
		Out_count => aof_Test_EOS_pEOF_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	
	
	f_ao_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 32)
	port map(
		-- Fanout In
		In_data => ao_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO_data,
		In_send => ao_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO_send,
		In_ack => ao_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO_ack,
		In_rdy => ao_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO_rdy,
		In_count => ao_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO_count,
		-- Fanout Out
		Out_data => aof_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO_data,
		Out_send => aof_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO_send,
		Out_ack => aof_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO_ack,
		Out_rdy => aof_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO_rdy,
		Out_count => aof_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	
	f_ao_Mean_Shift_Main_main_loop_cal_update_model_Qu : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 32)
	port map(
		-- Fanout In
		In_data => ao_Mean_Shift_Main_main_loop_cal_update_model_Qu_data,
		In_send => ao_Mean_Shift_Main_main_loop_cal_update_model_Qu_send,
		In_ack => ao_Mean_Shift_Main_main_loop_cal_update_model_Qu_ack,
		In_rdy => ao_Mean_Shift_Main_main_loop_cal_update_model_Qu_rdy,
		In_count => ao_Mean_Shift_Main_main_loop_cal_update_model_Qu_count,
		-- Fanout Out
		Out_data => aof_Mean_Shift_Main_main_loop_cal_update_model_Qu_data,
		Out_send => aof_Mean_Shift_Main_main_loop_cal_update_model_Qu_send,
		Out_ack => aof_Mean_Shift_Main_main_loop_cal_update_model_Qu_ack,
		Out_rdy => aof_Mean_Shift_Main_main_loop_cal_update_model_Qu_rdy,
		Out_count => aof_Mean_Shift_Main_main_loop_cal_update_model_Qu_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	f_ao_Mean_Shift_Main_main_loop_cal_update_model_Pu : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 32)
	port map(
		-- Fanout In
		In_data => ao_Mean_Shift_Main_main_loop_cal_update_model_Pu_data,
		In_send => ao_Mean_Shift_Main_main_loop_cal_update_model_Pu_send,
		In_ack => ao_Mean_Shift_Main_main_loop_cal_update_model_Pu_ack,
		In_rdy => ao_Mean_Shift_Main_main_loop_cal_update_model_Pu_rdy,
		In_count => ao_Mean_Shift_Main_main_loop_cal_update_model_Pu_count,
		-- Fanout Out
		Out_data => aof_Mean_Shift_Main_main_loop_cal_update_model_Pu_data,
		Out_send => aof_Mean_Shift_Main_main_loop_cal_update_model_Pu_send,
		Out_ack => aof_Mean_Shift_Main_main_loop_cal_update_model_Pu_ack,
		Out_rdy => aof_Mean_Shift_Main_main_loop_cal_update_model_Pu_rdy,
		Out_count => aof_Mean_Shift_Main_main_loop_cal_update_model_Pu_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	f_ao_Mean_Shift_Main_main_loop_cal_update_model_bin_o : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 32)
	port map(
		-- Fanout In
		In_data => ao_Mean_Shift_Main_main_loop_cal_update_model_bin_o_data,
		In_send => ao_Mean_Shift_Main_main_loop_cal_update_model_bin_o_send,
		In_ack => ao_Mean_Shift_Main_main_loop_cal_update_model_bin_o_ack,
		In_rdy => ao_Mean_Shift_Main_main_loop_cal_update_model_bin_o_rdy,
		In_count => ao_Mean_Shift_Main_main_loop_cal_update_model_bin_o_count,
		-- Fanout Out
		Out_data => aof_Mean_Shift_Main_main_loop_cal_update_model_bin_o_data,
		Out_send => aof_Mean_Shift_Main_main_loop_cal_update_model_bin_o_send,
		Out_ack => aof_Mean_Shift_Main_main_loop_cal_update_model_bin_o_ack,
		Out_rdy => aof_Mean_Shift_Main_main_loop_cal_update_model_bin_o_rdy,
		Out_count => aof_Mean_Shift_Main_main_loop_cal_update_model_bin_o_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	
	f_ao_Mean_Shift_Main_main_loop_cal_update_weight_weights : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 32)
	port map(
		-- Fanout In
		In_data => ao_Mean_Shift_Main_main_loop_cal_update_weight_weights_data,
		In_send => ao_Mean_Shift_Main_main_loop_cal_update_weight_weights_send,
		In_ack => ao_Mean_Shift_Main_main_loop_cal_update_weight_weights_ack,
		In_rdy => ao_Mean_Shift_Main_main_loop_cal_update_weight_weights_rdy,
		In_count => ao_Mean_Shift_Main_main_loop_cal_update_weight_weights_count,
		-- Fanout Out
		Out_data => aof_Mean_Shift_Main_main_loop_cal_update_weight_weights_data,
		Out_send => aof_Mean_Shift_Main_main_loop_cal_update_weight_weights_send,
		Out_ack => aof_Mean_Shift_Main_main_loop_cal_update_weight_weights_ack,
		Out_rdy => aof_Mean_Shift_Main_main_loop_cal_update_weight_weights_rdy,
		Out_count => aof_Mean_Shift_Main_main_loop_cal_update_weight_weights_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	
	f_ao_Mean_Shift_Main_main_loop_cal_displacement_dx : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 32)
	port map(
		-- Fanout In
		In_data => ao_Mean_Shift_Main_main_loop_cal_displacement_dx_data,
		In_send => ao_Mean_Shift_Main_main_loop_cal_displacement_dx_send,
		In_ack => ao_Mean_Shift_Main_main_loop_cal_displacement_dx_ack,
		In_rdy => ao_Mean_Shift_Main_main_loop_cal_displacement_dx_rdy,
		In_count => ao_Mean_Shift_Main_main_loop_cal_displacement_dx_count,
		-- Fanout Out
		Out_data => aof_Mean_Shift_Main_main_loop_cal_displacement_dx_data,
		Out_send => aof_Mean_Shift_Main_main_loop_cal_displacement_dx_send,
		Out_ack => aof_Mean_Shift_Main_main_loop_cal_displacement_dx_ack,
		Out_rdy => aof_Mean_Shift_Main_main_loop_cal_displacement_dx_rdy,
		Out_count => aof_Mean_Shift_Main_main_loop_cal_displacement_dx_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	f_ao_Mean_Shift_Main_main_loop_cal_displacement_dy : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 32)
	port map(
		-- Fanout In
		In_data => ao_Mean_Shift_Main_main_loop_cal_displacement_dy_data,
		In_send => ao_Mean_Shift_Main_main_loop_cal_displacement_dy_send,
		In_ack => ao_Mean_Shift_Main_main_loop_cal_displacement_dy_ack,
		In_rdy => ao_Mean_Shift_Main_main_loop_cal_displacement_dy_rdy,
		In_count => ao_Mean_Shift_Main_main_loop_cal_displacement_dy_count,
		-- Fanout Out
		Out_data => aof_Mean_Shift_Main_main_loop_cal_displacement_dy_data,
		Out_send => aof_Mean_Shift_Main_main_loop_cal_displacement_dy_send,
		Out_ack => aof_Mean_Shift_Main_main_loop_cal_displacement_dy_ack,
		Out_rdy => aof_Mean_Shift_Main_main_loop_cal_displacement_dy_rdy,
		Out_count => aof_Mean_Shift_Main_main_loop_cal_displacement_dy_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	
	f_ao_Mean_Shift_Main_main_loop_cal_kArray_derv_kDervO : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 32)
	port map(
		-- Fanout In
		In_data => ao_Mean_Shift_Main_main_loop_cal_kArray_derv_kDervO_data,
		In_send => ao_Mean_Shift_Main_main_loop_cal_kArray_derv_kDervO_send,
		In_ack => ao_Mean_Shift_Main_main_loop_cal_kArray_derv_kDervO_ack,
		In_rdy => ao_Mean_Shift_Main_main_loop_cal_kArray_derv_kDervO_rdy,
		In_count => ao_Mean_Shift_Main_main_loop_cal_kArray_derv_kDervO_count,
		-- Fanout Out
		Out_data => aof_Mean_Shift_Main_main_loop_cal_kArray_derv_kDervO_data,
		Out_send => aof_Mean_Shift_Main_main_loop_cal_kArray_derv_kDervO_send,
		Out_ack => aof_Mean_Shift_Main_main_loop_cal_kArray_derv_kDervO_ack,
		Out_rdy => aof_Mean_Shift_Main_main_loop_cal_kArray_derv_kDervO_rdy,
		Out_count => aof_Mean_Shift_Main_main_loop_cal_kArray_derv_kDervO_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	
	f_ao_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 2, width => 32)
	port map(
		-- Fanout In
		In_data => ao_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_data,
		In_send => ao_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_send,
		In_ack => ao_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_ack,
		In_rdy => ao_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_rdy,
		In_count => ao_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_count,
		-- Fanout Out
		Out_data => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_data,
		Out_send => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_send,
		Out_ack => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_ack,
		Out_rdy => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_rdy,
		Out_count => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	f_ao_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 2, width => 32)
	port map(
		-- Fanout In
		In_data => ao_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_data,
		In_send => ao_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_send,
		In_ack => ao_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_ack,
		In_rdy => ao_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_rdy,
		In_count => ao_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_count,
		-- Fanout Out
		Out_data => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_data,
		Out_send => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_send,
		Out_ack => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_ack,
		Out_rdy => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_rdy,
		Out_count => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	f_ao_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 2, width => 1)
	port map(
		-- Fanout In
		In_data(0) => ao_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_data,
		In_send => ao_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_send,
		In_ack => ao_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_ack,
		In_rdy => ao_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_rdy,
		In_count => ao_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_count,
		-- Fanout Out
		Out_data(0) => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_data,
		Out_send => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_send,
		Out_ack => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_ack,
		Out_rdy => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_rdy,
		Out_count => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	
	f_ao_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 16)
	port map(
		-- Fanout In
		In_data => ao_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out_data,
		In_send => ao_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out_send,
		In_ack => ao_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out_ack,
		In_rdy => ao_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out_rdy,
		In_count => ao_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out_count,
		-- Fanout Out
		Out_data => aof_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out_data,
		Out_send => aof_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out_send,
		Out_ack => aof_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out_ack,
		Out_rdy => aof_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out_rdy,
		Out_count => aof_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	f_ao_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 16)
	port map(
		-- Fanout In
		In_data => ao_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out_data,
		In_send => ao_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out_send,
		In_ack => ao_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out_ack,
		In_rdy => ao_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out_rdy,
		In_count => ao_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out_count,
		-- Fanout Out
		Out_data => aof_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out_data,
		Out_send => aof_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out_send,
		Out_ack => aof_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out_ack,
		Out_rdy => aof_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out_rdy,
		Out_count => aof_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	
	f_ao_Mean_Shift_Main_input_read_Stream_to_YUV_Y : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 8)
	port map(
		-- Fanout In
		In_data => ao_Mean_Shift_Main_input_read_Stream_to_YUV_Y_data,
		In_send => ao_Mean_Shift_Main_input_read_Stream_to_YUV_Y_send,
		In_ack => ao_Mean_Shift_Main_input_read_Stream_to_YUV_Y_ack,
		In_rdy => ao_Mean_Shift_Main_input_read_Stream_to_YUV_Y_rdy,
		In_count => ao_Mean_Shift_Main_input_read_Stream_to_YUV_Y_count,
		-- Fanout Out
		Out_data => aof_Mean_Shift_Main_input_read_Stream_to_YUV_Y_data,
		Out_send => aof_Mean_Shift_Main_input_read_Stream_to_YUV_Y_send,
		Out_ack => aof_Mean_Shift_Main_input_read_Stream_to_YUV_Y_ack,
		Out_rdy => aof_Mean_Shift_Main_input_read_Stream_to_YUV_Y_rdy,
		Out_count => aof_Mean_Shift_Main_input_read_Stream_to_YUV_Y_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	f_ao_Mean_Shift_Main_input_read_Stream_to_YUV_U : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 8)
	port map(
		-- Fanout In
		In_data => ao_Mean_Shift_Main_input_read_Stream_to_YUV_U_data,
		In_send => ao_Mean_Shift_Main_input_read_Stream_to_YUV_U_send,
		In_ack => ao_Mean_Shift_Main_input_read_Stream_to_YUV_U_ack,
		In_rdy => ao_Mean_Shift_Main_input_read_Stream_to_YUV_U_rdy,
		In_count => ao_Mean_Shift_Main_input_read_Stream_to_YUV_U_count,
		-- Fanout Out
		Out_data => aof_Mean_Shift_Main_input_read_Stream_to_YUV_U_data,
		Out_send => aof_Mean_Shift_Main_input_read_Stream_to_YUV_U_send,
		Out_ack => aof_Mean_Shift_Main_input_read_Stream_to_YUV_U_ack,
		Out_rdy => aof_Mean_Shift_Main_input_read_Stream_to_YUV_U_rdy,
		Out_count => aof_Mean_Shift_Main_input_read_Stream_to_YUV_U_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	f_ao_Mean_Shift_Main_input_read_Stream_to_YUV_V : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 8)
	port map(
		-- Fanout In
		In_data => ao_Mean_Shift_Main_input_read_Stream_to_YUV_V_data,
		In_send => ao_Mean_Shift_Main_input_read_Stream_to_YUV_V_send,
		In_ack => ao_Mean_Shift_Main_input_read_Stream_to_YUV_V_ack,
		In_rdy => ao_Mean_Shift_Main_input_read_Stream_to_YUV_V_rdy,
		In_count => ao_Mean_Shift_Main_input_read_Stream_to_YUV_V_count,
		-- Fanout Out
		Out_data => aof_Mean_Shift_Main_input_read_Stream_to_YUV_V_data,
		Out_send => aof_Mean_Shift_Main_input_read_Stream_to_YUV_V_send,
		Out_ack => aof_Mean_Shift_Main_input_read_Stream_to_YUV_V_ack,
		Out_rdy => aof_Mean_Shift_Main_input_read_Stream_to_YUV_V_rdy,
		Out_count => aof_Mean_Shift_Main_input_read_Stream_to_YUV_V_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	
	f_ao_Mean_Shift_Main_input_read_YUV_to_RGB_R : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 2, width => 8)
	port map(
		-- Fanout In
		In_data => ao_Mean_Shift_Main_input_read_YUV_to_RGB_R_data,
		In_send => ao_Mean_Shift_Main_input_read_YUV_to_RGB_R_send,
		In_ack => ao_Mean_Shift_Main_input_read_YUV_to_RGB_R_ack,
		In_rdy => ao_Mean_Shift_Main_input_read_YUV_to_RGB_R_rdy,
		In_count => ao_Mean_Shift_Main_input_read_YUV_to_RGB_R_count,
		-- Fanout Out
		Out_data => aof_Mean_Shift_Main_input_read_YUV_to_RGB_R_data,
		Out_send => aof_Mean_Shift_Main_input_read_YUV_to_RGB_R_send,
		Out_ack => aof_Mean_Shift_Main_input_read_YUV_to_RGB_R_ack,
		Out_rdy => aof_Mean_Shift_Main_input_read_YUV_to_RGB_R_rdy,
		Out_count => aof_Mean_Shift_Main_input_read_YUV_to_RGB_R_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	f_ao_Mean_Shift_Main_input_read_YUV_to_RGB_G : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 2, width => 8)
	port map(
		-- Fanout In
		In_data => ao_Mean_Shift_Main_input_read_YUV_to_RGB_G_data,
		In_send => ao_Mean_Shift_Main_input_read_YUV_to_RGB_G_send,
		In_ack => ao_Mean_Shift_Main_input_read_YUV_to_RGB_G_ack,
		In_rdy => ao_Mean_Shift_Main_input_read_YUV_to_RGB_G_rdy,
		In_count => ao_Mean_Shift_Main_input_read_YUV_to_RGB_G_count,
		-- Fanout Out
		Out_data => aof_Mean_Shift_Main_input_read_YUV_to_RGB_G_data,
		Out_send => aof_Mean_Shift_Main_input_read_YUV_to_RGB_G_send,
		Out_ack => aof_Mean_Shift_Main_input_read_YUV_to_RGB_G_ack,
		Out_rdy => aof_Mean_Shift_Main_input_read_YUV_to_RGB_G_rdy,
		Out_count => aof_Mean_Shift_Main_input_read_YUV_to_RGB_G_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	f_ao_Mean_Shift_Main_input_read_YUV_to_RGB_B : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 2, width => 8)
	port map(
		-- Fanout In
		In_data => ao_Mean_Shift_Main_input_read_YUV_to_RGB_B_data,
		In_send => ao_Mean_Shift_Main_input_read_YUV_to_RGB_B_send,
		In_ack => ao_Mean_Shift_Main_input_read_YUV_to_RGB_B_ack,
		In_rdy => ao_Mean_Shift_Main_input_read_YUV_to_RGB_B_rdy,
		In_count => ao_Mean_Shift_Main_input_read_YUV_to_RGB_B_count,
		-- Fanout Out
		Out_data => aof_Mean_Shift_Main_input_read_YUV_to_RGB_B_data,
		Out_send => aof_Mean_Shift_Main_input_read_YUV_to_RGB_B_send,
		Out_ack => aof_Mean_Shift_Main_input_read_YUV_to_RGB_B_ack,
		Out_rdy => aof_Mean_Shift_Main_input_read_YUV_to_RGB_B_rdy,
		Out_count => aof_Mean_Shift_Main_input_read_YUV_to_RGB_B_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	
	f_ao_output_process_Draw_rectangle_Rout : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 8)
	port map(
		-- Fanout In
		In_data => ao_output_process_Draw_rectangle_Rout_data,
		In_send => ao_output_process_Draw_rectangle_Rout_send,
		In_ack => ao_output_process_Draw_rectangle_Rout_ack,
		In_rdy => ao_output_process_Draw_rectangle_Rout_rdy,
		In_count => ao_output_process_Draw_rectangle_Rout_count,
		-- Fanout Out
		Out_data => aof_output_process_Draw_rectangle_Rout_data,
		Out_send => aof_output_process_Draw_rectangle_Rout_send,
		Out_ack => aof_output_process_Draw_rectangle_Rout_ack,
		Out_rdy => aof_output_process_Draw_rectangle_Rout_rdy,
		Out_count => aof_output_process_Draw_rectangle_Rout_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	f_ao_output_process_Draw_rectangle_Gout : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 8)
	port map(
		-- Fanout In
		In_data => ao_output_process_Draw_rectangle_Gout_data,
		In_send => ao_output_process_Draw_rectangle_Gout_send,
		In_ack => ao_output_process_Draw_rectangle_Gout_ack,
		In_rdy => ao_output_process_Draw_rectangle_Gout_rdy,
		In_count => ao_output_process_Draw_rectangle_Gout_count,
		-- Fanout Out
		Out_data => aof_output_process_Draw_rectangle_Gout_data,
		Out_send => aof_output_process_Draw_rectangle_Gout_send,
		Out_ack => aof_output_process_Draw_rectangle_Gout_ack,
		Out_rdy => aof_output_process_Draw_rectangle_Gout_rdy,
		Out_count => aof_output_process_Draw_rectangle_Gout_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	f_ao_output_process_Draw_rectangle_Bout : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 8)
	port map(
		-- Fanout In
		In_data => ao_output_process_Draw_rectangle_Bout_data,
		In_send => ao_output_process_Draw_rectangle_Bout_send,
		In_ack => ao_output_process_Draw_rectangle_Bout_ack,
		In_rdy => ao_output_process_Draw_rectangle_Bout_rdy,
		In_count => ao_output_process_Draw_rectangle_Bout_count,
		-- Fanout Out
		Out_data => aof_output_process_Draw_rectangle_Bout_data,
		Out_send => aof_output_process_Draw_rectangle_Bout_send,
		Out_ack => aof_output_process_Draw_rectangle_Bout_ack,
		Out_rdy => aof_output_process_Draw_rectangle_Bout_rdy,
		Out_count => aof_output_process_Draw_rectangle_Bout_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	
	f_ao_output_process_RGB_to_YUV_Y : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 8)
	port map(
		-- Fanout In
		In_data => ao_output_process_RGB_to_YUV_Y_data,
		In_send => ao_output_process_RGB_to_YUV_Y_send,
		In_ack => ao_output_process_RGB_to_YUV_Y_ack,
		In_rdy => ao_output_process_RGB_to_YUV_Y_rdy,
		In_count => ao_output_process_RGB_to_YUV_Y_count,
		-- Fanout Out
		Out_data => aof_output_process_RGB_to_YUV_Y_data,
		Out_send => aof_output_process_RGB_to_YUV_Y_send,
		Out_ack => aof_output_process_RGB_to_YUV_Y_ack,
		Out_rdy => aof_output_process_RGB_to_YUV_Y_rdy,
		Out_count => aof_output_process_RGB_to_YUV_Y_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	f_ao_output_process_RGB_to_YUV_U : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 8)
	port map(
		-- Fanout In
		In_data => ao_output_process_RGB_to_YUV_U_data,
		In_send => ao_output_process_RGB_to_YUV_U_send,
		In_ack => ao_output_process_RGB_to_YUV_U_ack,
		In_rdy => ao_output_process_RGB_to_YUV_U_rdy,
		In_count => ao_output_process_RGB_to_YUV_U_count,
		-- Fanout Out
		Out_data => aof_output_process_RGB_to_YUV_U_data,
		Out_send => aof_output_process_RGB_to_YUV_U_send,
		Out_ack => aof_output_process_RGB_to_YUV_U_ack,
		Out_rdy => aof_output_process_RGB_to_YUV_U_rdy,
		Out_count => aof_output_process_RGB_to_YUV_U_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	f_ao_output_process_RGB_to_YUV_V : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 8)
	port map(
		-- Fanout In
		In_data => ao_output_process_RGB_to_YUV_V_data,
		In_send => ao_output_process_RGB_to_YUV_V_send,
		In_ack => ao_output_process_RGB_to_YUV_V_ack,
		In_rdy => ao_output_process_RGB_to_YUV_V_rdy,
		In_count => ao_output_process_RGB_to_YUV_V_count,
		-- Fanout Out
		Out_data => aof_output_process_RGB_to_YUV_V_data,
		Out_send => aof_output_process_RGB_to_YUV_V_send,
		Out_ack => aof_output_process_RGB_to_YUV_V_ack,
		Out_rdy => aof_output_process_RGB_to_YUV_V_rdy,
		Out_count => aof_output_process_RGB_to_YUV_V_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));
	
	f_ao_output_process_YUV_to_Stream_YUV : entity SystemBuilder.Fanout(behavioral)
	generic map (fanout => 1, width => 8)
	port map(
		-- Fanout In
		In_data => ao_output_process_YUV_to_Stream_YUV_data,
		In_send => ao_output_process_YUV_to_Stream_YUV_send,
		In_ack => ao_output_process_YUV_to_Stream_YUV_ack,
		In_rdy => ao_output_process_YUV_to_Stream_YUV_rdy,
		In_count => ao_output_process_YUV_to_Stream_YUV_count,
		-- Fanout Out
		Out_data => aof_output_process_YUV_to_Stream_YUV_data,
		Out_send => aof_output_process_YUV_to_Stream_YUV_send,
		Out_ack => aof_output_process_YUV_to_Stream_YUV_ack,
		Out_rdy => aof_output_process_YUV_to_Stream_YUV_rdy,
		Out_count => aof_output_process_YUV_to_Stream_YUV_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0));

	-- --------------------------------------------------------------------------
	-- Queues
	-- --------------------------------------------------------------------------
	q_ai_Write_stream_Byte : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_Write_stream_Byte_data,
		Out_send => ai_Write_stream_Byte_send,
		Out_ack => ai_Write_stream_Byte_ack,
		Out_count => ai_Write_stream_Byte_count,
		-- Queue In
		In_data => aof_Test_EOS_Out_data,
		In_send => aof_Test_EOS_Out_send(0),
		In_ack => aof_Test_EOS_Out_ack(0),
		In_rdy => aof_Test_EOS_Out_rdy(0),
		In_count => aof_Test_EOS_Out_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_Write_stream_pEOF : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 1)
	port map(
		-- Queue Out
		Out_data(0) => ai_Write_stream_pEOF_data,
		Out_send => ai_Write_stream_pEOF_send,
		Out_ack => ai_Write_stream_pEOF_ack,
		Out_count => ai_Write_stream_pEOF_count,
		-- Queue In
		In_data(0) => aof_Test_EOS_pEOF_data,
		In_send => aof_Test_EOS_pEOF_send(0),
		In_ack => aof_Test_EOS_pEOF_ack(0),
		In_rdy => aof_Test_EOS_pEOF_rdy(0),
		In_count => aof_Test_EOS_pEOF_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_Mean_Shift_Main_main_loop_cal_update_weight_bin : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 32)
	port map(
		-- Queue Out
		Out_data => ai_Mean_Shift_Main_main_loop_cal_update_weight_bin_data,
		Out_send => ai_Mean_Shift_Main_main_loop_cal_update_weight_bin_send,
		Out_ack => ai_Mean_Shift_Main_main_loop_cal_update_weight_bin_ack,
		Out_count => ai_Mean_Shift_Main_main_loop_cal_update_weight_bin_count,
		-- Queue In
		In_data => aof_Mean_Shift_Main_main_loop_cal_update_model_bin_o_data,
		In_send => aof_Mean_Shift_Main_main_loop_cal_update_model_bin_o_send(0),
		In_ack => aof_Mean_Shift_Main_main_loop_cal_update_model_bin_o_ack(0),
		In_rdy => aof_Mean_Shift_Main_main_loop_cal_update_model_bin_o_rdy(0),
		In_count => aof_Mean_Shift_Main_main_loop_cal_update_model_bin_o_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_Mean_Shift_Main_main_loop_cal_displacement_weights : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 32)
	port map(
		-- Queue Out
		Out_data => ai_Mean_Shift_Main_main_loop_cal_displacement_weights_data,
		Out_send => ai_Mean_Shift_Main_main_loop_cal_displacement_weights_send,
		Out_ack => ai_Mean_Shift_Main_main_loop_cal_displacement_weights_ack,
		Out_count => ai_Mean_Shift_Main_main_loop_cal_displacement_weights_count,
		-- Queue In
		In_data => aof_Mean_Shift_Main_main_loop_cal_update_weight_weights_data,
		In_send => aof_Mean_Shift_Main_main_loop_cal_update_weight_weights_send(0),
		In_ack => aof_Mean_Shift_Main_main_loop_cal_update_weight_weights_ack(0),
		In_rdy => aof_Mean_Shift_Main_main_loop_cal_update_weight_weights_rdy(0),
		In_count => aof_Mean_Shift_Main_main_loop_cal_update_weight_weights_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_Mean_Shift_Main_main_loop_cal_displacement_kDerArray : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 32)
	port map(
		-- Queue Out
		Out_data => ai_Mean_Shift_Main_main_loop_cal_displacement_kDerArray_data,
		Out_send => ai_Mean_Shift_Main_main_loop_cal_displacement_kDerArray_send,
		Out_ack => ai_Mean_Shift_Main_main_loop_cal_displacement_kDerArray_ack,
		Out_count => ai_Mean_Shift_Main_main_loop_cal_displacement_kDerArray_count,
		-- Queue In
		In_data => aof_Mean_Shift_Main_main_loop_cal_kArray_derv_kDervO_data,
		In_send => aof_Mean_Shift_Main_main_loop_cal_kArray_derv_kDervO_send(0),
		In_ack => aof_Mean_Shift_Main_main_loop_cal_kArray_derv_kDervO_ack(0),
		In_rdy => aof_Mean_Shift_Main_main_loop_cal_kArray_derv_kDervO_rdy(0),
		In_count => aof_Mean_Shift_Main_main_loop_cal_kArray_derv_kDervO_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_Mean_Shift_Main_main_loop_cal_update_model_centre_x_i : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 32)
	port map(
		-- Queue Out
		Out_data => ai_Mean_Shift_Main_main_loop_cal_update_model_centre_x_i_data,
		Out_send => ai_Mean_Shift_Main_main_loop_cal_update_model_centre_x_i_send,
		Out_ack => ai_Mean_Shift_Main_main_loop_cal_update_model_centre_x_i_ack,
		Out_count => ai_Mean_Shift_Main_main_loop_cal_update_model_centre_x_i_count,
		-- Queue In
		In_data => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_data,
		In_send => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_send(0),
		In_ack => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_ack(0),
		In_rdy => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_rdy(0),
		In_count => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_Mean_Shift_Main_main_loop_cal_update_model_centre_y_i : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 32)
	port map(
		-- Queue Out
		Out_data => ai_Mean_Shift_Main_main_loop_cal_update_model_centre_y_i_data,
		Out_send => ai_Mean_Shift_Main_main_loop_cal_update_model_centre_y_i_send,
		Out_ack => ai_Mean_Shift_Main_main_loop_cal_update_model_centre_y_i_ack,
		Out_count => ai_Mean_Shift_Main_main_loop_cal_update_model_centre_y_i_count,
		-- Queue In
		In_data => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_data,
		In_send => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_send(0),
		In_ack => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_ack(0),
		In_rdy => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_rdy(0),
		In_count => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_Mean_Shift_Main_main_loop_cal_update_model_loop_status : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 1)
	port map(
		-- Queue Out
		Out_data(0) => ai_Mean_Shift_Main_main_loop_cal_update_model_loop_status_data,
		Out_send => ai_Mean_Shift_Main_main_loop_cal_update_model_loop_status_send,
		Out_ack => ai_Mean_Shift_Main_main_loop_cal_update_model_loop_status_ack,
		Out_count => ai_Mean_Shift_Main_main_loop_cal_update_model_loop_status_count,
		-- Queue In
		In_data(0) => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_data,
		In_send => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_send(0),
		In_ack => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_ack(0),
		In_rdy => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_rdy(0),
		In_count => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_Mean_Shift_Main_main_loop_cal_Centre_XY_dx_i : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 32)
	port map(
		-- Queue Out
		Out_data => ai_Mean_Shift_Main_main_loop_cal_Centre_XY_dx_i_data,
		Out_send => ai_Mean_Shift_Main_main_loop_cal_Centre_XY_dx_i_send,
		Out_ack => ai_Mean_Shift_Main_main_loop_cal_Centre_XY_dx_i_ack,
		Out_count => ai_Mean_Shift_Main_main_loop_cal_Centre_XY_dx_i_count,
		-- Queue In
		In_data => aof_Mean_Shift_Main_main_loop_cal_displacement_dx_data,
		In_send => aof_Mean_Shift_Main_main_loop_cal_displacement_dx_send(0),
		In_ack => aof_Mean_Shift_Main_main_loop_cal_displacement_dx_ack(0),
		In_rdy => aof_Mean_Shift_Main_main_loop_cal_displacement_dx_rdy(0),
		In_count => aof_Mean_Shift_Main_main_loop_cal_displacement_dx_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_Mean_Shift_Main_main_loop_cal_Centre_XY_dy_i : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 32)
	port map(
		-- Queue Out
		Out_data => ai_Mean_Shift_Main_main_loop_cal_Centre_XY_dy_i_data,
		Out_send => ai_Mean_Shift_Main_main_loop_cal_Centre_XY_dy_i_send,
		Out_ack => ai_Mean_Shift_Main_main_loop_cal_Centre_XY_dy_i_ack,
		Out_count => ai_Mean_Shift_Main_main_loop_cal_Centre_XY_dy_i_count,
		-- Queue In
		In_data => aof_Mean_Shift_Main_main_loop_cal_displacement_dy_data,
		In_send => aof_Mean_Shift_Main_main_loop_cal_displacement_dy_send(0),
		In_ack => aof_Mean_Shift_Main_main_loop_cal_displacement_dy_ack(0),
		In_rdy => aof_Mean_Shift_Main_main_loop_cal_displacement_dy_rdy(0),
		In_count => aof_Mean_Shift_Main_main_loop_cal_displacement_dy_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_in : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 32)
	port map(
		-- Queue Out
		Out_data => ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_in_data,
		Out_send => ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_in_send,
		Out_ack => ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_in_ack,
		Out_count => ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_in_count,
		-- Queue In
		In_data => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_data,
		In_send => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_send(1),
		In_ack => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_ack(1),
		In_rdy => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_rdy(1),
		In_count => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_x_out_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_in : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 32)
	port map(
		-- Queue Out
		Out_data => ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_in_data,
		Out_send => ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_in_send,
		Out_ack => ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_in_ack,
		Out_count => ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_in_count,
		-- Queue In
		In_data => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_data,
		In_send => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_send(1),
		In_ack => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_ack(1),
		In_rdy => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_rdy(1),
		In_count => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_centre_y_out_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_loop_stat : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 1)
	port map(
		-- Queue Out
		Out_data(0) => ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_loop_stat_data,
		Out_send => ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_loop_stat_send,
		Out_ack => ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_loop_stat_ack,
		Out_count => ai_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_loop_stat_count,
		-- Queue In
		In_data(0) => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_data,
		In_send => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_send(1),
		In_ack => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_ack(1),
		In_rdy => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_rdy(1),
		In_count => aof_Mean_Shift_Main_main_loop_cal_Centre_XY_loop_status_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_Mean_Shift_Main_main_loop_cal_update_model_kArray : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 32)
	port map(
		-- Queue Out
		Out_data => ai_Mean_Shift_Main_main_loop_cal_update_model_kArray_data,
		Out_send => ai_Mean_Shift_Main_main_loop_cal_update_model_kArray_send,
		Out_ack => ai_Mean_Shift_Main_main_loop_cal_update_model_kArray_ack,
		Out_count => ai_Mean_Shift_Main_main_loop_cal_update_model_kArray_count,
		-- Queue In
		In_data => aof_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO_data,
		In_send => aof_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO_send(0),
		In_ack => aof_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO_ack(0),
		In_rdy => aof_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO_rdy(0),
		In_count => aof_Mean_Shift_Main_main_loop_cal_kArray_evaluation_kArrayO_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_Mean_Shift_Main_main_loop_cal_update_weight_QuModel : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 32)
	port map(
		-- Queue Out
		Out_data => ai_Mean_Shift_Main_main_loop_cal_update_weight_QuModel_data,
		Out_send => ai_Mean_Shift_Main_main_loop_cal_update_weight_QuModel_send,
		Out_ack => ai_Mean_Shift_Main_main_loop_cal_update_weight_QuModel_ack,
		Out_count => ai_Mean_Shift_Main_main_loop_cal_update_weight_QuModel_count,
		-- Queue In
		In_data => aof_Mean_Shift_Main_main_loop_cal_update_model_Qu_data,
		In_send => aof_Mean_Shift_Main_main_loop_cal_update_model_Qu_send(0),
		In_ack => aof_Mean_Shift_Main_main_loop_cal_update_model_Qu_ack(0),
		In_rdy => aof_Mean_Shift_Main_main_loop_cal_update_model_Qu_rdy(0),
		In_count => aof_Mean_Shift_Main_main_loop_cal_update_model_Qu_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_Mean_Shift_Main_main_loop_cal_update_weight_PuModel : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 32)
	port map(
		-- Queue Out
		Out_data => ai_Mean_Shift_Main_main_loop_cal_update_weight_PuModel_data,
		Out_send => ai_Mean_Shift_Main_main_loop_cal_update_weight_PuModel_send,
		Out_ack => ai_Mean_Shift_Main_main_loop_cal_update_weight_PuModel_ack,
		Out_count => ai_Mean_Shift_Main_main_loop_cal_update_weight_PuModel_count,
		-- Queue In
		In_data => aof_Mean_Shift_Main_main_loop_cal_update_model_Pu_data,
		In_send => aof_Mean_Shift_Main_main_loop_cal_update_model_Pu_send(0),
		In_ack => aof_Mean_Shift_Main_main_loop_cal_update_model_Pu_ack(0),
		In_rdy => aof_Mean_Shift_Main_main_loop_cal_update_model_Pu_rdy(0),
		In_count => aof_Mean_Shift_Main_main_loop_cal_update_model_Pu_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_Mean_Shift_Main_input_read_YUV_to_RGB_Y : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_Mean_Shift_Main_input_read_YUV_to_RGB_Y_data,
		Out_send => ai_Mean_Shift_Main_input_read_YUV_to_RGB_Y_send,
		Out_ack => ai_Mean_Shift_Main_input_read_YUV_to_RGB_Y_ack,
		Out_count => ai_Mean_Shift_Main_input_read_YUV_to_RGB_Y_count,
		-- Queue In
		In_data => aof_Mean_Shift_Main_input_read_Stream_to_YUV_Y_data,
		In_send => aof_Mean_Shift_Main_input_read_Stream_to_YUV_Y_send(0),
		In_ack => aof_Mean_Shift_Main_input_read_Stream_to_YUV_Y_ack(0),
		In_rdy => aof_Mean_Shift_Main_input_read_Stream_to_YUV_Y_rdy(0),
		In_count => aof_Mean_Shift_Main_input_read_Stream_to_YUV_Y_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_Mean_Shift_Main_input_read_YUV_to_RGB_U : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_Mean_Shift_Main_input_read_YUV_to_RGB_U_data,
		Out_send => ai_Mean_Shift_Main_input_read_YUV_to_RGB_U_send,
		Out_ack => ai_Mean_Shift_Main_input_read_YUV_to_RGB_U_ack,
		Out_count => ai_Mean_Shift_Main_input_read_YUV_to_RGB_U_count,
		-- Queue In
		In_data => aof_Mean_Shift_Main_input_read_Stream_to_YUV_U_data,
		In_send => aof_Mean_Shift_Main_input_read_Stream_to_YUV_U_send(0),
		In_ack => aof_Mean_Shift_Main_input_read_Stream_to_YUV_U_ack(0),
		In_rdy => aof_Mean_Shift_Main_input_read_Stream_to_YUV_U_rdy(0),
		In_count => aof_Mean_Shift_Main_input_read_Stream_to_YUV_U_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_Mean_Shift_Main_input_read_YUV_to_RGB_V : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_Mean_Shift_Main_input_read_YUV_to_RGB_V_data,
		Out_send => ai_Mean_Shift_Main_input_read_YUV_to_RGB_V_send,
		Out_ack => ai_Mean_Shift_Main_input_read_YUV_to_RGB_V_ack,
		Out_count => ai_Mean_Shift_Main_input_read_YUV_to_RGB_V_count,
		-- Queue In
		In_data => aof_Mean_Shift_Main_input_read_Stream_to_YUV_V_data,
		In_send => aof_Mean_Shift_Main_input_read_Stream_to_YUV_V_send(0),
		In_ack => aof_Mean_Shift_Main_input_read_Stream_to_YUV_V_ack(0),
		In_rdy => aof_Mean_Shift_Main_input_read_Stream_to_YUV_V_rdy(0),
		In_count => aof_Mean_Shift_Main_input_read_Stream_to_YUV_V_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_Mean_Shift_Main_main_loop_cal_update_model_R : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_Mean_Shift_Main_main_loop_cal_update_model_R_data,
		Out_send => ai_Mean_Shift_Main_main_loop_cal_update_model_R_send,
		Out_ack => ai_Mean_Shift_Main_main_loop_cal_update_model_R_ack,
		Out_count => ai_Mean_Shift_Main_main_loop_cal_update_model_R_count,
		-- Queue In
		In_data => aof_Mean_Shift_Main_input_read_YUV_to_RGB_R_data,
		In_send => aof_Mean_Shift_Main_input_read_YUV_to_RGB_R_send(0),
		In_ack => aof_Mean_Shift_Main_input_read_YUV_to_RGB_R_ack(0),
		In_rdy => aof_Mean_Shift_Main_input_read_YUV_to_RGB_R_rdy(0),
		In_count => aof_Mean_Shift_Main_input_read_YUV_to_RGB_R_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_Mean_Shift_Main_main_loop_cal_update_model_G : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_Mean_Shift_Main_main_loop_cal_update_model_G_data,
		Out_send => ai_Mean_Shift_Main_main_loop_cal_update_model_G_send,
		Out_ack => ai_Mean_Shift_Main_main_loop_cal_update_model_G_ack,
		Out_count => ai_Mean_Shift_Main_main_loop_cal_update_model_G_count,
		-- Queue In
		In_data => aof_Mean_Shift_Main_input_read_YUV_to_RGB_G_data,
		In_send => aof_Mean_Shift_Main_input_read_YUV_to_RGB_G_send(0),
		In_ack => aof_Mean_Shift_Main_input_read_YUV_to_RGB_G_ack(0),
		In_rdy => aof_Mean_Shift_Main_input_read_YUV_to_RGB_G_rdy(0),
		In_count => aof_Mean_Shift_Main_input_read_YUV_to_RGB_G_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_Mean_Shift_Main_main_loop_cal_update_model_B : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_Mean_Shift_Main_main_loop_cal_update_model_B_data,
		Out_send => ai_Mean_Shift_Main_main_loop_cal_update_model_B_send,
		Out_ack => ai_Mean_Shift_Main_main_loop_cal_update_model_B_ack,
		Out_count => ai_Mean_Shift_Main_main_loop_cal_update_model_B_count,
		-- Queue In
		In_data => aof_Mean_Shift_Main_input_read_YUV_to_RGB_B_data,
		In_send => aof_Mean_Shift_Main_input_read_YUV_to_RGB_B_send(0),
		In_ack => aof_Mean_Shift_Main_input_read_YUV_to_RGB_B_ack(0),
		In_rdy => aof_Mean_Shift_Main_input_read_YUV_to_RGB_B_rdy(0),
		In_count => aof_Mean_Shift_Main_input_read_YUV_to_RGB_B_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_Mean_Shift_Main_input_read_Stream_to_YUV_stream : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_Mean_Shift_Main_input_read_Stream_to_YUV_stream_data,
		Out_send => ai_Mean_Shift_Main_input_read_Stream_to_YUV_stream_send,
		Out_ack => ai_Mean_Shift_Main_input_read_Stream_to_YUV_stream_ack,
		Out_count => ai_Mean_Shift_Main_input_read_Stream_to_YUV_stream_count,
		-- Queue In
		In_data => aof_source_O_data,
		In_send => aof_source_O_send(0),
		In_ack => aof_source_O_ack(0),
		In_rdy => aof_source_O_rdy(0),
		In_count => aof_source_O_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_output_process_RGB_to_YUV_R : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_output_process_RGB_to_YUV_R_data,
		Out_send => ai_output_process_RGB_to_YUV_R_send,
		Out_ack => ai_output_process_RGB_to_YUV_R_ack,
		Out_count => ai_output_process_RGB_to_YUV_R_count,
		-- Queue In
		In_data => aof_output_process_Draw_rectangle_Rout_data,
		In_send => aof_output_process_Draw_rectangle_Rout_send(0),
		In_ack => aof_output_process_Draw_rectangle_Rout_ack(0),
		In_rdy => aof_output_process_Draw_rectangle_Rout_rdy(0),
		In_count => aof_output_process_Draw_rectangle_Rout_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_output_process_RGB_to_YUV_G : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_output_process_RGB_to_YUV_G_data,
		Out_send => ai_output_process_RGB_to_YUV_G_send,
		Out_ack => ai_output_process_RGB_to_YUV_G_ack,
		Out_count => ai_output_process_RGB_to_YUV_G_count,
		-- Queue In
		In_data => aof_output_process_Draw_rectangle_Gout_data,
		In_send => aof_output_process_Draw_rectangle_Gout_send(0),
		In_ack => aof_output_process_Draw_rectangle_Gout_ack(0),
		In_rdy => aof_output_process_Draw_rectangle_Gout_rdy(0),
		In_count => aof_output_process_Draw_rectangle_Gout_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_output_process_RGB_to_YUV_B : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_output_process_RGB_to_YUV_B_data,
		Out_send => ai_output_process_RGB_to_YUV_B_send,
		Out_ack => ai_output_process_RGB_to_YUV_B_ack,
		Out_count => ai_output_process_RGB_to_YUV_B_count,
		-- Queue In
		In_data => aof_output_process_Draw_rectangle_Bout_data,
		In_send => aof_output_process_Draw_rectangle_Bout_send(0),
		In_ack => aof_output_process_Draw_rectangle_Bout_ack(0),
		In_rdy => aof_output_process_Draw_rectangle_Bout_rdy(0),
		In_count => aof_output_process_Draw_rectangle_Bout_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_output_process_YUV_to_Stream_Y : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_output_process_YUV_to_Stream_Y_data,
		Out_send => ai_output_process_YUV_to_Stream_Y_send,
		Out_ack => ai_output_process_YUV_to_Stream_Y_ack,
		Out_count => ai_output_process_YUV_to_Stream_Y_count,
		-- Queue In
		In_data => aof_output_process_RGB_to_YUV_Y_data,
		In_send => aof_output_process_RGB_to_YUV_Y_send(0),
		In_ack => aof_output_process_RGB_to_YUV_Y_ack(0),
		In_rdy => aof_output_process_RGB_to_YUV_Y_rdy(0),
		In_count => aof_output_process_RGB_to_YUV_Y_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_output_process_YUV_to_Stream_U : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_output_process_YUV_to_Stream_U_data,
		Out_send => ai_output_process_YUV_to_Stream_U_send,
		Out_ack => ai_output_process_YUV_to_Stream_U_ack,
		Out_count => ai_output_process_YUV_to_Stream_U_count,
		-- Queue In
		In_data => aof_output_process_RGB_to_YUV_U_data,
		In_send => aof_output_process_RGB_to_YUV_U_send(0),
		In_ack => aof_output_process_RGB_to_YUV_U_ack(0),
		In_rdy => aof_output_process_RGB_to_YUV_U_rdy(0),
		In_count => aof_output_process_RGB_to_YUV_U_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_output_process_YUV_to_Stream_V : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_output_process_YUV_to_Stream_V_data,
		Out_send => ai_output_process_YUV_to_Stream_V_send,
		Out_ack => ai_output_process_YUV_to_Stream_V_ack,
		Out_count => ai_output_process_YUV_to_Stream_V_count,
		-- Queue In
		In_data => aof_output_process_RGB_to_YUV_V_data,
		In_send => aof_output_process_RGB_to_YUV_V_send(0),
		In_ack => aof_output_process_RGB_to_YUV_V_ack(0),
		In_rdy => aof_output_process_RGB_to_YUV_V_rdy(0),
		In_count => aof_output_process_RGB_to_YUV_V_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_Test_EOS_In : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_Test_EOS_In_data,
		Out_send => ai_Test_EOS_In_send,
		Out_ack => ai_Test_EOS_In_ack,
		Out_count => ai_Test_EOS_In_count,
		-- Queue In
		In_data => aof_output_process_YUV_to_Stream_YUV_data,
		In_send => aof_output_process_YUV_to_Stream_YUV_send(0),
		In_ack => aof_output_process_YUV_to_Stream_YUV_ack(0),
		In_rdy => aof_output_process_YUV_to_Stream_YUV_rdy(0),
		In_count => aof_output_process_YUV_to_Stream_YUV_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_output_process_Draw_rectangle_Rin : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_output_process_Draw_rectangle_Rin_data,
		Out_send => ai_output_process_Draw_rectangle_Rin_send,
		Out_ack => ai_output_process_Draw_rectangle_Rin_ack,
		Out_count => ai_output_process_Draw_rectangle_Rin_count,
		-- Queue In
		In_data => aof_Mean_Shift_Main_input_read_YUV_to_RGB_R_data,
		In_send => aof_Mean_Shift_Main_input_read_YUV_to_RGB_R_send(1),
		In_ack => aof_Mean_Shift_Main_input_read_YUV_to_RGB_R_ack(1),
		In_rdy => aof_Mean_Shift_Main_input_read_YUV_to_RGB_R_rdy(1),
		In_count => aof_Mean_Shift_Main_input_read_YUV_to_RGB_R_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_output_process_Draw_rectangle_Gin : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_output_process_Draw_rectangle_Gin_data,
		Out_send => ai_output_process_Draw_rectangle_Gin_send,
		Out_ack => ai_output_process_Draw_rectangle_Gin_ack,
		Out_count => ai_output_process_Draw_rectangle_Gin_count,
		-- Queue In
		In_data => aof_Mean_Shift_Main_input_read_YUV_to_RGB_G_data,
		In_send => aof_Mean_Shift_Main_input_read_YUV_to_RGB_G_send(1),
		In_ack => aof_Mean_Shift_Main_input_read_YUV_to_RGB_G_ack(1),
		In_rdy => aof_Mean_Shift_Main_input_read_YUV_to_RGB_G_rdy(1),
		In_count => aof_Mean_Shift_Main_input_read_YUV_to_RGB_G_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_output_process_Draw_rectangle_Bin : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 8)
	port map(
		-- Queue Out
		Out_data => ai_output_process_Draw_rectangle_Bin_data,
		Out_send => ai_output_process_Draw_rectangle_Bin_send,
		Out_ack => ai_output_process_Draw_rectangle_Bin_ack,
		Out_count => ai_output_process_Draw_rectangle_Bin_count,
		-- Queue In
		In_data => aof_Mean_Shift_Main_input_read_YUV_to_RGB_B_data,
		In_send => aof_Mean_Shift_Main_input_read_YUV_to_RGB_B_send(1),
		In_ack => aof_Mean_Shift_Main_input_read_YUV_to_RGB_B_ack(1),
		In_rdy => aof_Mean_Shift_Main_input_read_YUV_to_RGB_B_rdy(1),
		In_count => aof_Mean_Shift_Main_input_read_YUV_to_RGB_B_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_output_process_Draw_rectangle_center_x : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 16)
	port map(
		-- Queue Out
		Out_data => ai_output_process_Draw_rectangle_center_x_data,
		Out_send => ai_output_process_Draw_rectangle_center_x_send,
		Out_ack => ai_output_process_Draw_rectangle_center_x_ack,
		Out_count => ai_output_process_Draw_rectangle_center_x_count,
		-- Queue In
		In_data => aof_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out_data,
		In_send => aof_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out_send(0),
		In_ack => aof_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out_ack(0),
		In_rdy => aof_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out_rdy(0),
		In_count => aof_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_X_out_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);
	
	q_ai_output_process_Draw_rectangle_center_y : entity SystemBuilder.Queue(behavioral)
	generic map (length => 1048576, width => 16)
	port map(
		-- Queue Out
		Out_data => ai_output_process_Draw_rectangle_center_y_data,
		Out_send => ai_output_process_Draw_rectangle_center_y_send,
		Out_ack => ai_output_process_Draw_rectangle_center_y_ack,
		Out_count => ai_output_process_Draw_rectangle_center_y_count,
		-- Queue In
		In_data => aof_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out_data,
		In_send => aof_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out_send(0),
		In_ack => aof_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out_ack(0),
		In_rdy => aof_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out_rdy(0),
		In_count => aof_Mean_Shift_Main_main_loop_cal_Final_Centre_XY_Y_out_count,
		-- Clock & Reset
		clk => clocks(0),
		reset => resets(0)
	);

	-- --------------------------------------------------------------------------
	-- Network port(s) instantiation
	-- --------------------------------------------------------------------------
	
	-- Output Port(s) Instantiation
	
	-- Input Port(s) Instantiation
end architecture rtl;
-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------
-- ----------------------------------------------------------------------------
