# inverse_solutions_eeg

%Version 1.0 Montreal Institute and Cuban Center for Neurosciece

%inputs
% Voltage   ---> path of the Voltage matrix
% Leadfield ---> path of the Leadfield matrix
% Laplacian ---> path of the Laplacian matrix

% VoltageName ----> name of the matrix to load de Voltage
% LeadFieldName --> name of the matrix to load de LeadField
% LaplacianName -> name of the matrix to load de Laplacian

% AnatConstFlags ------> Anatomical Constraints. If the caculation is over surface or
%                   volumen. If the value is 10 that mean is over surface
%                   and is 01 is over the volume.
% AnalysisDomainFlags -> Domain definition for analysis the data.  This is like
%                   the before parameter. This time are 4 bits (0000) positions, time, frequency,
%                   space-time, time-frecuency, respectively

%methodFlags: Options for calculations methods
%  methodFlags(1)-> 1 Calculate all methods
%  methodFlags(2)-> 1 Calculate ridgel method
%  methodFlags(3)-> 1 Calculate elasticNet method
%  methodFlags(4)-> 1 Calculate slasso method
%  methodFlags(5)-> 1 Calculate slassoNonNegative method

%algorithmFlags: Options for calculations algortihms
%  algorithmFlags(1)-> 1 Calculate all algorithms
%  algorithmFlags(2)-> 1 Calculate AMNR algorithms

% lambda --> regularization paramater

% saveAll --> boolean parameter, 0 by default. If it is true will be save
%             all the variables otherwise only will be save the beta solutions

% output  --> path or name of the folder that will be save the outputs
%             value(s)
