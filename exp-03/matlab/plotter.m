% exp-03 plotter;
% author: Nedal Abdullah;

clear; clc;

% Reading from Experiment;
% Tables %
output_voltage = [-4.98, -4.35, -3.77, -2.93, -2.05, -1.17, -0.28, 0.58, 1.50, 2.42, 3.31, 4.25, 5.15];
input_angles = [0, 30, 60, 90, 120, 150, 180, 210, 240, 270, 300, 330, 360];
input_angles_radian = deg2rad(input_angles);






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
plot(input_angles, output_voltage, "-o");
legend("Input/Output Relationship");
legend("Location", "northwest");
xlabel("Input [Angle / degree]");
ylabel("Output [Voltage / V]");

hold on;

line([min(input_angles), max(input_angles)], [0, 0], 'Color', 'r', 'LineStyle', '--');

% polar plot;
% output_voltage = output_voltage;
% polarplot(input_angles_radian, output_voltage, "o-");


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
