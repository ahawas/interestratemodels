function price = gpp_exp(t,T,xt,yt)
    r0 = 0.03;
    p = 0.7; a=0.1; b=0.3;
    sig = 0.03; nu = 0.08; phi  = 0.03;
    V = sig^2 / (a^2 ) * ( T-t + 2/a*exp(-a*(T-t))  - 1/(2*a) * exp(-2*a * (T-t) ) - 3/(2*a) ) ;
    V=V+ nu^2 / (b^2) * ( T-t + 2/b*exp(-b*(T-t))  - 1/(2*b) * exp(-2*b * (T-t) ) - 3/(2*b) ) ;
    V= V + 2*p*sig*nu/(a*b) * (T-t + (exp(-a*(T-t)) - 1)/a + (exp(-b*(T-t)) - 1)/b - (exp(-(a+b) * (T-t)) - 1 ) / (a+b) ) ;
    price = exp( -phi*(T-t) - (1-exp(-a*(T-t) ))/a*xt  - (1-exp(-b*(T-t) ))/b*yt + 0.5* V );
end