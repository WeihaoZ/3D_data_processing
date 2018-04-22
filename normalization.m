for i = 1:700
    mydata(i).VV = mydata(i).VV ./ (max(mydata(i).VV) - min(mydata(i).VV));
    mydata1(i).VV = mydata1(i).VV ./ (max(mydata1(i).VV) - min(mydata1(i).VV));
    mydata2(i).VV = mydata2(i).VV ./ (max(mydata2(i).VV) - min(mydata2(i).VV));
    mydata3(i).VV = mydata3(i).VV ./ (max(mydata3(i).VV) - min(mydata3(i).VV));
end
