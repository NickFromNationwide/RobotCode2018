clear all, close all, clc

fig = figure(1);
set(fig, 'Position', [0 0 400 250])
b = uicontrol('Style','slider', 'Position', [0 180 400 20], 'value', 0, 'min', 0, 'max', 8270);
b.Callback = @callback;
uicontrol('Style', 'text', 'Position', [0 200 400 50], 'String', 'Motor Angle', 'FontSize', 25);

%callback(b)
while true  
    for ind = 0:100:8300
        figure(2)
        DrawElevator(1.0, ind, true); 
    end

    for ind = 8300:-100:0
        figure(2)
        DrawElevator(1.0, ind, true); 
    end
end

function callback(slider, ~)
    figure(2)
    DrawElevator(1.0, slider.Value, true); 
end
