module halfadder(sum,carry,a,b);
    input a,b;
    output sum,carry;    
    assign sum=a^b;
    assign carry=a&b;
endmodule

//fulladder using half adders

module fulladder(sum,carry,a,b,c);
    input a,b,c;
    output sum,carry;
    wire p,u,s;
    
    //structural method
    //Instantiation of half adders
    halfadder ha(p,u,a,b);
    halfadder ha1(sum,s,p,c);
    or ga(carry,u,s);
    
endmodule
