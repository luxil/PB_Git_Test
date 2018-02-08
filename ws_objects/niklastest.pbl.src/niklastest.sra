$PBExportHeader$niklastest.sra
$PBExportComments$Generated Application Object
forward
global type niklastest from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables
string str_input_1 = "0"
string str_input_2 = ""
string str_num_current = "0"
string str_operator = "0"
string str_result = "0"
string str_last_operator
string str_last_input
string str_last_result

integer i_active_memory = 1
integer i_active_unit_type
integer i_active_input_unit
integer i_active_output_unit
integer i_current_row_datawindow = 1
integer i_global_id
integer i_active_numsystem = 1

string str_result_bin
string str_result_hex
string str_result_oct

//memory (alt)
double d_mem_1
double d_mem_2
double d_mem_3
double d_mem_4
double d_memory
double d_mem_input

//memory (neu)
double d_a_memory_bank[]
string str_a_memory_names[]
integer i_current_index
integer i_memory_slots = 0
boolean focus_value_edit
boolean focus_name_edit
boolean b_no_memory = True

//primes
boolean b_a_primes_filter[]
boolean b_a_primes_final[]

double d_input_1
double d_input_2
double d_result
double d_unit_conversion_input
double d_unit_conversion_result

double d_const_pi = 3.14159265359

double d_cache
double d_unit_cache

//Unit Convert Faktoren
double a_d_length_units [11] = &
{0.0000001, 0.0001, 0.1, 1, 100, 100000, 2.54, 30.48, 91.44, 16093.4, 185200}
double a_d_area_units [10] = &
{0.01, 1, 10000, 100000000, 10000000000, 6.4516, 929.0304, 8361.274, 40468564, 25899881103}
double a_d_volume_units [12] = &
{1, 1000, 1000000, 473.1765, 946.3529, 3785.421, 568.2613, 1136.523, 4546.09, 16.38706, 28316.85, 764554.9}
double a_d_velocity_units [7] = &
{0.01, 1, 3.6, 3.28084, 2.237136, 0.5144001168717066, 340.3}
double a_d_time_units [8] = &
{0.000001, 0.001, 1, 60, 3600, 86400, 604800, 31557600}
double a_d_mass_units [9] = &
{0.001, 1, 1000, 1000000, 907184.74, 1016046.9088, 453.59237, 6350.29318, 28.349523125}

//Unit Convert Namen
string a_str_length_units [11] = &
{"Nanometer", "Mikrometer", "Millimeter", "Zentimeter", "Meter", "Kilometer", "Zoll", "Fuß", "Yard", "Meilen"}
string a_str_area_units [10] = &
{"Quadratmillimeter", "Quadratzentimeter", "Quadratmeter", "Hektar", "Quadratkilometer", "Quadratzoll", "Quadratfuß", "Quadratyard", "Morgen", "Quadratmeilen"}
string a_str_volume_units [12] = &
{"Kubikzentimeter / Milliliter", "Liter", "Kubikmeter", "Pint (USA)", "Quart (USA)", "Gallonen (USA)", "Pint (GB)", "Quart (GB)", "Gallonen (GB)", "Kubikzoll", "Kubikfuß", "Kubikyard"}
string a_str_velocity_units [7] = &
{"Zentimeter pro Sekunde", "Meter pro Sekunde", "Kilometer pro Stunde", "Fuß pro Sekunde", "Meilen pro Stunde", "Knoten", "Mach"}
string a_str_time_units [8] = &
{"Mikrosekunden", "Millisekunden", "Sekunden", "Minuten", "Stunden", "Tage", "Wochen", "Jahre"}
string a_str_mass_units [9] = &
{"Milligramm", "Gramm", "Kilogramm", "Metrische Tonne", "Amerikanische Tonne", "Britische Tonne", "Pfund", "Stone", "Unze"}

//Formeln
string a_str_formula [20] = { &
"Kreis - Fläche", "Kreis - Umfang", &
"Kreisring - Fläche", "Kreisring - Umfang", &
"Quadrat - Fläche", "Quadrat - Umfang", &
"Rechteck - Fläche", "Rechteck - Umfang", &
"Würfel - Volumen", "Würfel - Oberfläche", &
"Quader - Volumen", "Quader - Oberfläche", &
"Zylinder - Volumen", "Zylinder - Oberfläche", &
"Allgemeine Pyramide - Volumen", "Allgemeine Pyramide - Oberfläche", & 
"Kugel - Volumen", "Kugel - Oberfläche", &
"Torus - Volumen", "Torus - Oberfläche"}

integer a_i_formula_types [20] = {1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10}

integer a_i_formula_w_area_output [4] = {1, 3, 5, 7}
integer a_i_formula_w_3darea_output [6] = {10, 12, 14, 16, 18, 20}
integer a_i_formula_w_volume_output [6] ={9, 11, 13, 15, 17, 19}
integer a_i_formula_w_length_output [4] = {2, 4, 6, 8}

boolean bool_operator_given = False
boolean bool_decimal_set = False
boolean bool_operated = False
boolean bool_window_is_extended
boolean bool_number_given
boolean bool_number_is_const = False

boolean bool_source_bin = False 
boolean bool_source_hex = False
boolean bool_source_oct = False

//Unit convert bools
boolean bool_type_given = False
boolean bool_input_given = False
boolean bool_output_given = False
end variables
global type niklastest from application
string appname = "niklastest"
end type
global niklastest niklastest

on niklastest.create
appname="niklastest"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on niklastest.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;open(w_main)
end event

