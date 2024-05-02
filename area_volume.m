clc 
clear

fprintf('This is a code for getiing the area and volume of a cuboide \n\n')
fprintf('Please provide with the model values \n\n')

l = input('Enter the length of the cuboid in cm =  ');
b = input('Enter the width of the cuboid in cm =  ');
h = input('Enter the height of the cuboid in cm =  ');

a = 2*(l*h + h*b + b*l);
v = l*b*h;

fprintf('\n\n Area of the cuboid is %10.2f cm2',a)
fprintf('\n Volume of the cuboid is %10.2f cm3',v)

