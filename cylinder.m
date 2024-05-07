clc 
clear
close 

% defining parameters
r = input('Please input the radius of the cylinder =  ');
h=input('Please input the height of the cylinder =  '); 
ncs=input('Please input the number of cross sections you want for the cylinder =  ');
nod= input('Please input the number of nodes per cross section of the cylinder =  ');

R = r*ones(1,nod); % making the radius same for each node
th= linspace(0,2*pi,nod); % defining theta with division equal to number of nodes

[x,y] = pol2cart(th,R); %converting polar to cartesian
z= linspace(0,h,ncs)'; % defining the z co-ordinates of the cylinder

% making matrix and values of each cross section equal to the base
x = repmat(x,ncs,1); 
y= repmat(y,ncs,1);
z = repmat(z,1,nod);

% to enclose the cylinder 
x_lid = zeros(2,nod);
y_lid = zeros(2,nod);
z_lid = repmat([0;h],1,nod);

%combining all the matrix and making them one (lid plus curved surface)
X= [x_lid(1,:);x;x_lid(2,:)];
Y= [y_lid(1,:);y;y_lid(2,:)];
Z= [z_lid(1,:);z;z_lid(2,:)];

surf(X,Y,Z)

