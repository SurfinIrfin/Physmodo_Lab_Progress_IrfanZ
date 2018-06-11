%{
filenames = {'PilotTesting01.trc','PilotTesting02.trc','PilotTesting03.trc','PilotTesting04.trc','PilotTesting05.trc','PilotTesting06.trc','PilotTesting07.trc','PilotTesting08.trc','PilotTesting09.trc','PilotTesting10.trc','PilotTesting11.trc','PilotTesting12.trc','PilotTesting13.trc','PilotTesting14.trc','PilotTesting15.trc','PilotTesting16.trc','PilotTesting17.trc','PilotTesting18.trc','PilotTesting19.trc','PilotTesting20.trc'};

for i_f = 1:length(filenames)
    file = filenames{i_f};
end
%}
 A = importdata('PilotTesting01.trc','\t',5);

%You should automate this. Put the cell numbers for each trial/squat in a
%text (or Excel) file and then just read them in. 

begin = 'What is the cell number for start of squat? \n';
a1 = input(begin);
a = a1 - 5;

low = 'What is the cell number for lowest point of squat? \n';
b1 = input(low);
b = b1 - 5;

finish = 'What is the cell number for end of squat? \n';
c1 = input(finish);
c = c1 - 5;

% 1) SACRUM = sacrum = sac
for sX = 21
    sacXB = A.data(a,sX);
    sacXL = A.data(b,sX);
    sacXF = A.data(c,sX);
end
for sY = 22
    sacYB = A.data(a,sY);
    sacYL = A.data(b,sY);
    sacYF = A.data(c,sY);
end
for sZ = 23
    sacZB = A.data(a,sZ);
    sacZL = A.data(b,sZ);
    sacZF = A.data(c,sZ);
end

% 2) CLAV = Midpoint of sternoclavicular joints = clv
for vX = 87
    clvXB = A.data(a,vX);
    clvXL = A.data(b,vX);
    clvXF = A.data(c,vX);
end
for vY = 88
    clvYB = A.data(a,vY);
    clvYL = A.data(b,vY);
    clvYF = A.data(c,vY);
end
for vZ = 89
    clvZB = A.data(a,vZ);
    clvZL = A.data(b,vZ);
    clvZF = A.data(c,vZ);
end

% 3) LGT = Left greater trochanter = Lsh
for lsX = 24
    LshXB = A.data(a,lsX);
    LshXL = A.data(b,lsX);
    LshXF = A.data(c,lsX);
end
for lsY = 25
    LshYB = A.data(a,lsY);
    LshYL = A.data(b,lsY);
    LshYF = A.data(c,lsY);
end
for lsZ = 26
    LshZB = A.data(a,lsZ);
    LshZL = A.data(b,lsZ);
    LshZF = A.data(c,lsZ);
end

% 4) RGT = Right greater trochanter = Rsh
for rsX = 27
    RshXB = A.data(a,rsX);
    RshXL = A.data(b,rsX);
    RshXF = A.data(c,rsX);
end
for rsY = 28
    RshYB = A.data(a,rsY);
    RshYL = A.data(b,rsY);
    RshYF = A.data(c,rsY);
end
for rsZ = 29
    RshZB = A.data(a,rsZ);
    RshZL = A.data(b,rsZ);
    RshZF = A.data(c,rsZ);
end

% 5) LLKNEE = Left lateral knee (femoral condyle) = Lknee (Outside)
for lkX = 30
    LkneeXB = A.data(a,lkX);
    LkneeXL = A.data(b,lkX);
    LkneeXF = A.data(c,lkX);
end
for lkY = 31
    LkneeYB = A.data(a,lkY);
    LkneeYL = A.data(b,lkY);
    LkneeYF = A.data(c,lkY);
end
for lkZ = 32
    LkneeZB = A.data(a,lkZ);
    LkneeZL = A.data(b,lkZ);
    LkneeZF = A.data(c,lkZ);
end

% 6) RLKNEE = Right lateral knee (femoral condyle) = Rknee (Outside)
for rkX = 57
    RkneeXB = A.data(a,rkX);
    RkneeXL = A.data(b,rkX);
    RkneeXF = A.data(c,rkX);
end
for rkY = 58
    RkneeYB = A.data(a,rkX);
    RkneeYL = A.data(b,rkY);
    RkneeYF = A.data(c,rkY);
end
for rkZ = 59
    RkneeZB = A.data(a,rkZ);
    RkneeZL = A.data(b,rkZ);
    RkneeZF = A.data(c,rkZ);
end

% 7) LLANK = Left lateral ankle (malleolus) = Lank (Outside)
for laX = 36
    LankXB = A.data(a,laX);
    LankXL = A.data(b,laX);
    LankXF = A.data(c,laX);
end
for laY = 37
    LankYB = A.data(a,laY);
    LankYL = A.data(b,laY);
    LankYF = A.data(c,laY);
end
for laZ = 38
    LankZB = A.data(a,laZ);
    LankZL = A.data(b,laZ);
    LankZF = A.data(c,laZ);
end

% 8) RLANK = Right lateral ankle (malleolus) = Rank (Outside)
for raX = 63
    RankXB = A.data(a,raX);
    RankXL = A.data(b,raX);
    RankXF = A.data(c,raX);
end
for raY = 64
    RankYB = A.data(a,raY);
    RankYL = A.data(b,raY);
    RankYF = A.data(c,raY);
end
for raZ = 65
    RankZB = A.data(a,raZ);
    RankZL = A.data(b,raZ);
    RankZF = A.data(c,raZ);
end

% 9) LMET5 = Left fifth metatarsal head (base of little toe) = Rtoe5
for ltX = 51
    Ltoe5XB = A.data(a,ltX);
    Ltoe5XL = A.data(b,ltX);
    Ltoe5XF = A.data(c,ltX);
end
for ltY = 52
    Ltoe5YB = A.data(a,ltY);
    Ltoe5YL = A.data(b,ltY);
    Ltoe5YF = A.data(c,ltY);
end
for ltZ = 53
    Ltoe5ZB = A.data(a,ltZ);
    Ltoe5ZL = A.data(b,ltZ);
    Ltoe5ZF = A.data(c,ltZ);
end

% 10) RMET5 = Right fifth metatarsal head (base of little toe) = Ltoe5
for rtX = 78
    Rtoe5XB = A.data(a,rtX);
    Rtoe5XL = A.data(b,rtX);
    Rtoe5XF = A.data(c,rtX);
end
for rtY = 79
    Rtoe5YB = A.data(a,rtY);
    Rtoe5YL = A.data(b,rtY);
    Rtoe5YF = A.data(c,rtY);
end
for rtZ = 80
    Rtoe5ZB = A.data(a,rtZ);
    Rtoe5ZL = A.data(b,rtZ);
    Rtoe5ZF = A.data(c,rtZ);
end

% 11) LMKNEE = Left medial knee (malleolus) = LMknee (Inside)
for lmkX = 33
    LMkneeXB = A.data(a,lmkX);
    LMkneeXL = A.data(b,lmkX);
    LMkneeXF = A.data(c,lmkX);
end
for lmkY = 34
    LMkneeYB = A.data(a,lmkY);
    LMkneeYL = A.data(b,lmkY);
    LMkneeYF = A.data(c,lmkY);
end
for lmkZ = 35
    LMkneeZB = A.data(a,lmkZ);
    LMkneeZL = A.data(b,lmkZ);
    LMkneeZF = A.data(c,lmkZ);
end

% 12) RMKNEE = Right medial knee (malleolus) = RMknee (Inside)
for rmkX = 60
    RMkneeXB = A.data(a,rmkX);
    RMkneeXL = A.data(b,rmkX);
    RMkneeXF = A.data(c,rmkX);
end
for rmkY = 61
    RMkneeYB = A.data(a,rmkX);
    RMkneeYL = A.data(b,rmkY);
    RMkneeYF = A.data(c,rmkY);
end
for rmkZ = 62
    RMkneeZB = A.data(a,rmkZ);
    RMkneeZL = A.data(b,rmkZ);
    RMkneeZF = A.data(c,rmkZ);
end

% 13) LMANK = Left medial ankle (malleolus) = LMank
for lMaX = 39
    LMankXB = A.data(a,lMaX);
    LMankXL = A.data(b,lMaX);
    LMankXF = A.data(c,lMaX);
end
for lMaY = 40
    LMankYB = A.data(a,lMaY);
    LMankYL = A.data(b,lMaY);
    LMankYF = A.data(c,lMaY);
end
for lMaZ = 41
    LMankZB = A.data(a,lMaZ);
    LMankZL = A.data(b,lMaZ);
    LMankZF = A.data(c,lMaZ);
end

% 8) RMANK = Right medial ankle (malleolus) = RMank
for rMaX = 66
    RMankXB = A.data(a,rMaX);
    RMankXL = A.data(b,rMaX);
    RMankXF = A.data(c,rMaX);
end
for rMaY = 67
    RMankYB = A.data(a,rMaY);
    RMankYL = A.data(b,rMaY);
    RMankYF = A.data(c,rMaY);
end
for rMaZ = 68
    RMankZB = A.data(a,rMaZ);
    RMankZL = A.data(b,rMaZ);
    RMankZF = A.data(c,rMaZ);
end



%-----------------------------------------------
% CALCULATION 1 - TORSO ANGLE RELATIVE TO TIBIA
%-----------------------------------------------


% 1) Calculate trunk vector: sacrum to c7

% trunk vector at beginning of squat
trunk_begin_x = clvXB - sacXB;
trunk_begin_y = clvYB - sacYB;
trunk_begin_z = clvZB - sacZB;

trunk_vec_begin = [trunk_begin_x, trunk_begin_y, trunk_begin_z];

% trunk vector at low of squat
trunk_low_x = clvXL - sacXL;
trunk_low_y = clvYL - sacYL;
trunk_low_z = clvZL - sacZL;

trunk_vec_low = [trunk_low_x, trunk_low_y, trunk_low_z];

% trunk vector at finish of squat
trunk_finish_x = clvXF - sacXF;
trunk_finish_y = clvYF - sacYF;
trunk_finish_z = clvZF - sacZF;

trunk_vec_finish = [trunk_finish_x, trunk_finish_y, trunk_finish_z];


% 2) Calculate tibia vector: lateral ankle to lateral knee

% ---LEFT---
% tibia vector at beginning of squat
L_tibia_begin_x = ((LkneeXB - LMkneeXB)/2) - ((LankXB - LMankXB)/2);
L_tibia_begin_y = ((LkneeYB - LMkneeYB)/2) - ((LankYB - LMankYB)/2);
L_tibia_begin_z = ((LkneeZB - LMkneeZB)/2) - ((LankZB - LMankZB)/2);

tibiaL_vec_begin = [L_tibia_begin_x, L_tibia_begin_y, L_tibia_begin_z];

% tibia vector at low of squat
L_tibia_low_x = ((LkneeXL - LMkneeXL)/2) - ((LankXL - LMankXL)/2);
L_tibia_low_y = ((LkneeYL - LMkneeYL)/2) - ((LankYL - LMankYL)/2);
L_tibia_low_z = ((LkneeZL - LMkneeZL)/2) - ((LankZL - LMankZL)/2);

tibiaL_vec_low = [L_tibia_low_x, L_tibia_low_y, L_tibia_low_z];

% tibia vector at finish of squat
L_tibia_finish_x = ((LkneeXF - LMkneeXF)/2) - ((LankXB - LMankXF)/2);
L_tibia_finish_y = ((LkneeYF - LMkneeYF)/2) - ((LankYB - LMankYF)/2);
L_tibia_finish_z = ((LkneeZF - LMkneeZF)/2) - ((LankZB - LMankZF)/2);

tibiaL_vec_finish = [L_tibia_finish_x, L_tibia_finish_y, L_tibia_finish_z];

% ---RIGHT---
% tibia vector at beginning of squat
R_tibia_begin_x = ((RkneeXB - RMkneeXB)/2) - ((RankXB - RMankXB)/2);
R_tibia_begin_y = ((RkneeYB - RMkneeYB)/2) - ((RankYB - RMankYB)/2);
R_tibia_begin_z = ((RkneeZB - RMkneeZB)/2) - ((RankZB - RMankZB)/2);

tibiaR_vec_begin = [R_tibia_begin_x, R_tibia_begin_y, R_tibia_begin_z];

% tibia vector at low of squat
R_tibia_low_x = ((RkneeXL - RMkneeXL)/2) - ((RankXL - RMankXL)/2);
R_tibia_low_y = ((RkneeYL - RMkneeYL)/2) - ((RankYL - RMankYL)/2);
R_tibia_low_z = ((RkneeZL - RMkneeZL)/2) - ((RankZL - RMankZL)/2);

tibiaR_vec_low = [R_tibia_low_x, R_tibia_low_y, R_tibia_low_z];

% tibia vector at finish of squat
R_tibia_finish_x = ((RkneeXF - RMkneeXF)/2) - ((RankXB - RMankXF)/2);
R_tibia_finish_y = ((RkneeYF - RMkneeYF)/2) - ((RankYB - RMankYF)/2);
R_tibia_finish_z = ((RkneeZF - RMkneeZF)/2) - ((RankZB - RMankZF)/2);

tibiaR_vec_finish = [R_tibia_finish_x, R_tibia_finish_y, R_tibia_finish_z];


% 3) Use dot product to get angle between vectors (sagittal plane)

% ---LEFT side ANGLE---
dot_L = dot(trunk_vec_low, tibiaL_vec_low);
mag_L = norm(trunk_vec_low) * norm(tibiaL_vec_low);
angle_L = acosd(dot_L/mag_L);
fprintf('\nThe angle of the Left Tibia and Torso is %f degrees.\n', angle_L);

% ---RIGHT side ANGLE---
dot_R = dot(trunk_vec_low, tibiaR_vec_low);
mag_R = norm(trunk_vec_low) * norm(tibiaR_vec_low);
angle_R = acosd(dot_R/mag_R);
fprintf('The angle of the Right Tibia and Torso is %f degrees.\n \n', angle_R);


%-----------------------------------------------
% CALCULATION 2 - FEMUR RELATIVE TO HORIZONTAL
%-----------------------------------------------

% Calculate femur vector: lateral knee to greater trochanter

% Use dot product to get angle relative to horizontal (sagittal plane)

%-----------------------------------------------
% CALCULATION 3 - KNEES ALIGNED OVER FEET
%-----------------------------------------------

% Calculate knee joint center location (midpoint of lateral and medial
% knee)

% Calculate foot location (midpoint of met1 and met5)

% Find XYZ offset

%-----------------------------------------------
% CALCULATION 4 - ARMS ALIGNED OVER FEET
%-----------------------------------------------

% Calculate wrist joint center location (midpoint of ulnar and radial
% wrist markers)

% Find XYZ offset relative to feet
