% exp-01 plotter;
% author: Nedal Abdullah;

clear; clc;

% Reading from Experiment;
% Tables %
input_voltage = [0.5, 0.7, 0.8, 1.0, 1.5, 2.0, 2.5, 3.0, 3.5, 4.0, 4.5, 5.0, 5.5, 6.0];
output_load_0_speed = [16, 28, 34, 48, 79, 113, 145, 176, 208, 240, 273, 304, 308, 308];
output_load_1_speed = [14, 25, 30, 40, 62, 94, 123, 150, 177, 203, 230, 255, 257, 254];
output_load_2_speed = [10, 19, 24, 32, 53, 75, 96, 116, 137, 160, 180, 202, 202, 200];
%%%%%%%%%%
saturation_value = 5.2;
dead_zone_value_1 = 0.29;
dead_zone_value_2 = 0.31;
%%%%%%%%%%%%%%%%%%%%%%%%%%

% Reading Average;
average_load_speed = (output_load_0_speed + output_load_1_speed + output_load_2_speed) ./ 3;
average_dead_zone_value = (dead_zone_value_1 + dead_zone_value_2) / 2;
%%%%%%%%%%%%%%%%%

% Saturation / Dead-zone Area coords;
saturation_area_x = [saturation_value, 6];
saturation_area_y = [350, 350];

dead_zone_area_x = [0, average_dead_zone_value];
dead_zone_area_y = [350, 350];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Disturbance values Table %
response_to_disturbance_1 = (output_load_0_speed - output_load_1_speed);
response_to_disturbance_2 = (output_load_0_speed - output_load_2_speed);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%



% plot all the readings;
% plot(input_voltage, output_load_0_speed, "-o", input_voltage, output_load_1_speed, "-o", input_voltage, output_load_2_speed, "-o", input_voltage, average_load_speed, "-o");
% legend("Disturbance = 0", "Disturbance = 1", "Disturbance = 2", "Average");
% legend("Location", "north");
% xlabel("Input [Voltage / V]");
% ylabel("Output [Speed / RPM]");

% plot the average reading;
% plot(input_voltage, average_load_speed, "-o");
% legend("Average Speed");

% plot the response to disturbance;
plot(input_voltage, response_to_disturbance_1, "-o", input_voltage, response_to_disturbance_2, "-o");
legend("Lost due to Disturbance 1" , "Lost due to Disturbance 2");
legend("Location", "northwest");
xlabel("Input [Voltage / V]");
ylabel("Lost Speed Value [Speed / RPM]");


% draw the saturation and dead zone areas;
% hold on;
% area(saturation_area_x, saturation_area_y, "FaceAlpha", 0.1, "FaceColor", "g", "DisplayName", "Saturation Area");
% area(dead_zone_area_x, dead_zone_area_y, "FaceAlpha", 0.1, "FaceColor", "r", "DisplayName", "Dead-Zone Area");
% hold off;
% 
% 
% 
% 

grid on;
