
function price = cir_exp(t,T, rt)
    r_bar = 0.055;
    sig = 0.12;
    k =0.92; 
    T = 0.5; S = 1;
    t=0;
    theta = (k^2 + 2*sig^2)^0.5;
    phi = 2*theta / (sig^2*(exp(theta*(T-t))-1)) ;
    psi = (k + theta) / sig^2;
    h1 = theta;h2 = (k+h1)/2; h3 = 2*k*r_bar/(sig^2);
    A_T_S = (h1*exp(h2*(T-t) )/...
         (h2*(exp(h1*(T-t)) -1 ) + h1) )^h3;
    B_T_S= (exp(h1*(T-t))-1)/...
         (h2*(exp(h1*(T-t))-1)+h1) ;
    price = A_T_S * exp(-B_T_S*rt);
end