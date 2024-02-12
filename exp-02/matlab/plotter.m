% exp-02 plotter;
% author: Nedal Abdullah;

clear; clc;

% Reading from Experiment;
% Tables %
output_voltage = [0.5, 0.7, 0.8, 1.0, 1.5, 2.0, 2.5, 3.0, 3.5, 4.0, 4.5, 5.0, 5.5, 6.0];
input_speed = [16, 28, 34, 48, 79, 113, 145, 176, 208, 240, 273, 304, 308, 308];

%%%%%%%%%%
saturation_voltage_value = 4.88; % V
saturation_speed_value = 294; % RPM
%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%

% Saturation / Dead-zone Area coords;
% saturation_area_x = [saturation_value, 6];
% saturation_area_y = [350, 350];
% 
% dead_zone_area_x = [0, average_dead_zone_value];
% dead_zone_area_y = [350, 350];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Disturbance values Table %
% response_to_disturbance_1 = (output_load_0_speed - output_load_1_speed);
% response_to_disturbance_2 = (output_load_0_speed - output_load_2_speed);
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
plot(input_speed, output_voltage, "-o");
legend("Input/Output Relationship");
legend("Location", "northwest");
xlabel("Input [Speed / RPM]");
ylabel("Output [Voltage / V]");


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
