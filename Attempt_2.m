%test changes

A = importdata('PilotTesting01.trc','\t',5);

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

% 5) LLKNEE = Left lateral knee (femoral condyle) = Lknee
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

% 6) RLKNEE = Right lateral knee (femoral condyle) = Rknee
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

% 7) LLANK = Left lateral ankle (malleolus) = Lank
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

% 8) RLANK = Right lateral ankle (malleolus) = Rank
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
