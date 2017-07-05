function result = pearsonModeSkew(data)
%Chris Ki, June 2017, Gittis Lab
%PearsonModeSkew : Calculates the Pearson Mode Skewness coefficient which is
%   given by (meanISI - mode ISI)/stdISI. A positive value indicates the
%   distribution is positively skewed(right-skewed). 

%Input: 
%data = A struct that has two fields.
%       data.SPKC = single spike train vector where each entry is the timepoint at
%       occurence of a spike

    ISIs = ISIconverter(data.SPKC,length(data.SPKC)-1);
    stdAllISIs = std(ISIs);
    meanAllISIs = mean(ISIs);
    modeAllISIs = mode(ISIs)
    result = (meanAllISIs - modeAllISIs)/stdAllISIs;
end

