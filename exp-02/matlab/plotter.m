% exp-02 plotter;
% author: Nedal Abdullah;

clear; clc;

% Reading from Experiment;
% Tables %
output_voltage = [0, 0.40, 0.81, 1.23, 1.66, 2.08, 2.51, 2.96, 3.33, 3.73, 4.19, 4.60, 4.88, 4.88];
input_speed = [0, 25, 50, 75, 100, 125, 150, 175, 200, 225, 250, 275, 300, 325];

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
