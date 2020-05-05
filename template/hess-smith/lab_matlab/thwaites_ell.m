function ell = thwaites_ell(lambda)

ell = ( 0.22 + 1.402* (-0.1) + 0.018.*(-0.1)./( -0.1 +0.107) ) .* ...
                                                        ( lambda <= -0.1 ) + ...
      ( 0.22 + 1.402* lambda + 0.018.*lambda./(lambda+0.107) ) .* ...
                                       ( -0.1 < lambda  & lambda <=  0.0 ) + ...
      ( 0.22 + 1.57 * lambda - 1.8 * lambda.^2 ) .* ...
                                       (  0.0 < lambda  & lambda <=  0.25 ) + ...
      ( 0.22 + 1.57 *   0.25  - 1.8 *    0.25.^2 ) .* ...
                                                          ( 0.25 < lambda ) ;