function price = vas_price(t,T, rt)
    r_bar = 0.05;
    sig = 0.1;
    k =0.82;
    B_t_T = 1/k * ( 1- exp(-k*(T-t)) );
    A_t_T = exp( (r_bar - sig^2 / (2*k^2)) * (B_t_T - (T-t) ) - sig^2 / (4*k) * B_t_T^2 );
    price = A_t_T*exp(-B_t_T * rt);
end
