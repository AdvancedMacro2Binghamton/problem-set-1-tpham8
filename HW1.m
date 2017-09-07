%Homework 1...Updating using 2013 Data
Earn=WAGEINC+0.863*BUSSEFARMINC;

Income=WAGEINC+TRANSFOTHINC+SSRETINC+KGINC+INTDIVINC+BUSSEFARMINC;

Wealth=NETWORTH;

per=[0,1,5,10,20,40,60,80,90,95,99,100]; %Percentile values

%Calculating Percentile taking the Weight (WGT) into account
a=1;
while a<13
    
EARN_perc(a) = wprctile(Earn,per(a),WGT)/10.^3;

INCOME_perc(a) = wprctile(Income,per(a),WGT)/10.^3;

WEALTH_perc(a) = wprctile(Wealth,per(a),WGT)/10.^3;

a=a+1;

end



%Calculating Coefficient of Variation

EARN_cv=sqrt(var(Earn,WGT))/wmean(Earn,WGT)
INCOME_cv=sqrt(var(Income,WGT))/wmean(Income,WGT)
WEALTH_cv=sqrt(var(Wealth,WGT))/wmean(Wealth,WGT)

%Mean/Median ratio

EARN_mm=wmean(Earn,WGT)/median(Earn)
INCOME_mm=wmean(Income,WGT)/median(Income)
WEALTH_mm=wmean(Wealth,WGT)/median(Wealth)

%Location of mean

[Earn1,idx]=sort(Earn,);
Earn1=Earn1';
c=1;
while Earn1(c)<wmean(Earn,WGT)
    c=c+1
end

