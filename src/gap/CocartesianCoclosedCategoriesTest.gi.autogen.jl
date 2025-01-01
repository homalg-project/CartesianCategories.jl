# SPDX-License-Identifier: GPL-2.0-or-later
# CartesianCategories: Cartesian and cocartesian categories and various subdoctrines
#
# Implementations
#
# THIS FILE WAS AUTOMATICALLY GENERATED



@InstallGlobalFunction( "CocartesianCoclosedCategoriesTest",
    
    function( cat, opposite, a, b, c, d, alpha, beta, gamma, delta, epsilon, zeta )
    
        local verbose,
              
              a_op, c_op,
              b_op, d_op,
              
              id_a_tensor_b, id_b_tensor_a,
              
              coexp_ab, exp_ab_op, id_coexp_ab,
              coexp_ba, exp_ba_op, id_coexp_ba,
              
              alpha_op, coexp_alpha_beta, exp_alpha_beta_op,
              beta_op,  coexp_beta_alpha, exp_beta_alpha_op,
              
              coca_ev_ab, coca_coev_ab, ev_ab_op, coev_ab_op,
              coca_ev_ba, coca_coev_ba, ev_ba_op, coev_ba_op,
              
              alpha_tensor_beta, alpha_tensor_beta_op,
              beta_tensor_alpha, beta_tensor_alpha_op,
              
              coexp_to_tensor_adjunction_on_id_coexp_ab, tensor_to_coexp_adjunction_on_id_a_tensor_b,
              coexp_to_tensor_adjunction_on_id_coexp_ba, tensor_to_coexp_adjunction_on_id_b_tensor_a,
              
              tensor_to_coexp_adjunction_on_alpha_tensor_beta, tensor_to_exp_adjunction_on_alpha_tensor_beta_op,
              tensor_to_coexp_adjunction_on_beta_tensor_alpha, tensor_to_exp_adjunction_on_beta_tensor_alpha_op,
              
              coexp_to_tensor_adjunction_on_coexp_alpha_beta, exp_to_tensor_adjunction_on_exp_alpha_beta_op,
              coexp_to_tensor_adjunction_on_coexp_beta_alpha, exp_to_tensor_adjunction_on_exp_beta_alpha_op,
              
              precocompose_abc, precompose_abc_op, postcocompose_abc, postcompose_abc_op,
              precocompose_cba, precompose_cba_op, postcocompose_cba, postcompose_cba_op,
              
              a_codual, a_dual_op, codual_alpha, dual_alpha_op,
              b_codual, b_dual_op, codual_beta, dual_beta_op,
              
              coca_ev_for_codual_a, ev_for_dual_a_op,
              coca_ev_for_codual_b, ev_for_dual_b_op,
              
              morphism_from_cobidual_a, morphism_to_bidual_a_op,
              morphism_from_cobidual_b, morphism_to_bidual_b_op,
              
              coexp_to_tensor_compatibility_abcd, tensor_to_exp_compatibility_abcd_op,
              coexp_to_tensor_compatibility_bdac, tensor_to_exp_compatibility_cadb_op,
              
              coduality_coproduct_compatibility_ab, coproduct_duality_compatibility_ab_op,
              coduality_coproduct_compatibility_ba, coproduct_duality_compatibility_ba_op,
              
              morphism_from_coexp_to_coproduct_ab, morphism_from_coproduct_to_exp_ab_op,
              morphism_from_coexp_to_coproduct_ba, morphism_from_coproduct_to_exp_ba_op,
              
              isomorphism_from_dual_to_exp_a_op, isomorphism_from_exp_to_dual_a_op,
              isomorphism_from_dual_to_exp_b_op, isomorphism_from_exp_to_dual_b_op,
              
              isomorphism_from_codual_to_coexp_a, isomorphism_from_coexp_to_codual_a,
              isomorphism_from_codual_to_coexp_b, isomorphism_from_coexp_to_codual_b,
              
              gamma_op, universal_property_of_codual_gamma, universal_property_of_dual_gamma_op,
              delta_op, universal_property_of_codual_delta, universal_property_of_dual_delta_op,
              
              colambda_intro_alpha, lambda_intro_alpha_op,
              colambda_intro_beta,  lambda_intro_beta_op,
              
              epsilon_op, colambda_elim_epsilon, lambda_elim_epsilon_op,
              zeta_op,    colambda_elim_zeta,    lambda_elim_zeta_op,
              
              isomorphism_from_a_to_cohom, isomorphism_from_coexp_to_a, isomorphism_from_a_to_exp_op, isomorphism_from_exp_to_a_op,
              isomorphism_from_b_to_cohom, isomorphism_from_coexp_to_b, isomorphism_from_b_to_exp_op, isomorphism_from_exp_to_b_op;
        
        a_op = Opposite( opposite, a );
        b_op = Opposite( opposite, b );
        c_op = Opposite( opposite, c );
        d_op = Opposite( opposite, d );
        
        alpha_op = Opposite( opposite, alpha );
        beta_op = Opposite( opposite, beta );
        
        verbose = ValueOption( "verbose" ) == true;
        
        if (CanCompute( cat, "CoexponentialOnObjects" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'CoexponentialOnObjects' ..." );
                
            end;
            
            coexp_ab = CoexponentialOnObjects( a, b );
            coexp_ba = CoexponentialOnObjects( b, a );
            
            exp_ab_op = ExponentialOnObjects( a_op, b_op );
            exp_ba_op = ExponentialOnObjects( b_op, a_op );
            
            @Assert( 0, IsEqualForObjects( exp_ab_op, Opposite( opposite, coexp_ba ) ) );
            @Assert( 0, IsEqualForObjects( exp_ba_op, Opposite( opposite, coexp_ab ) ) );
            
            # Opposite must be self-inverse
            
            @Assert( 0, IsEqualForObjects( coexp_ab, Opposite( exp_ba_op ) ) );
            @Assert( 0, IsEqualForObjects( coexp_ba, Opposite( exp_ab_op ) ) );
            
            # Convenience methods in the opposite category
            
            @Assert( 0, IsEqualForObjects( exp_ab_op, Exponential( a_op, b_op ) ) );
            @Assert( 0, IsEqualForObjects( exp_ba_op, Exponential( b_op, a_op ) ) );
            
        end;
        
        if (CanCompute( cat, "CoexponentialOnMorphisms" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'CoexponentialOnMorphisms' ..." );
                
            end;
            
            coexp_alpha_beta = CoexponentialOnMorphisms( alpha, beta );
            coexp_beta_alpha = CoexponentialOnMorphisms( beta, alpha );
            
            exp_alpha_beta_op = ExponentialOnMorphisms( alpha_op, beta_op );
            exp_beta_alpha_op = ExponentialOnMorphisms( beta_op, alpha_op );
            
            @Assert( 0, IsCongruentForMorphisms( exp_alpha_beta_op, Opposite( opposite, coexp_beta_alpha ) ) );
            @Assert( 0, IsCongruentForMorphisms( exp_beta_alpha_op, Opposite( opposite, coexp_alpha_beta ) ) );
            
            # Opposite must be self-inverse
            
            @Assert( 0, IsCongruentForMorphisms( coexp_alpha_beta, Opposite( exp_beta_alpha_op ) ) );
            @Assert( 0, IsCongruentForMorphisms( coexp_beta_alpha, Opposite( exp_alpha_beta_op ) ) );
            
            # Convenience methods in the opposite category
            
            @Assert( 0, IsCongruentForMorphisms( exp_alpha_beta_op, Exponential( alpha_op, beta_op ) ) );
            @Assert( 0, IsCongruentForMorphisms( exp_beta_alpha_op, Exponential( beta_op, alpha_op ) ) );
            
        end;
        
        if (CanCompute( cat, "CocartesianRightEvaluationMorphism" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'CocartesianRightEvaluationMorphism' ..." );
                
            end;
            
            coca_ev_ab = CocartesianRightEvaluationMorphism( a, b );
            coca_ev_ba = CocartesianRightEvaluationMorphism( b, a );
            
            ev_ab_op = CartesianRightEvaluationMorphism( a_op, b_op );
            ev_ba_op = CartesianRightEvaluationMorphism( b_op, a_op );
            
            # Arguments must be reversed for evaluations
            @Assert( 0, IsCongruentForMorphisms( coca_ev_ab, Opposite( ev_ab_op ) ) );
            @Assert( 0, IsCongruentForMorphisms( coca_ev_ba, Opposite( ev_ba_op ) ) );
            
        end;
        
        if (CanCompute( cat, "CocartesianRightCoevaluationMorphism" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'CocartesianRightCoevaluationMorphism' ..." );
                
            end;
            
            coca_coev_ab = CocartesianRightCoevaluationMorphism( a, b );
            coca_coev_ba = CocartesianRightCoevaluationMorphism( b, a );
            
            coev_ab_op = CartesianRightCoevaluationMorphism( a_op, b_op );
            coev_ba_op = CartesianRightCoevaluationMorphism( b_op, a_op );
            
            @Assert( 0, IsCongruentForMorphisms( coev_ab_op, Opposite( opposite, coca_coev_ab ) ) );
            @Assert( 0, IsCongruentForMorphisms( coev_ba_op, Opposite( opposite, coca_coev_ba ) ) );
            
        end;
        
        if (CanCompute( cat, "CocartesianLeftEvaluationMorphism" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'CocartesianLeftEvaluationMorphism' ..." );
                
            end;
            
            coca_ev_ab = CocartesianLeftEvaluationMorphism( a, b );
            coca_ev_ba = CocartesianLeftEvaluationMorphism( b, a );
            
            ev_ab_op = CartesianLeftEvaluationMorphism( a_op, b_op );
            ev_ba_op = CartesianLeftEvaluationMorphism( b_op, a_op );
            
            # Arguments must be reversed for evaluations
            @Assert( 0, IsCongruentForMorphisms( coca_ev_ab, Opposite( ev_ab_op ) ) );
            @Assert( 0, IsCongruentForMorphisms( coca_ev_ba, Opposite( ev_ba_op ) ) );
            
        end;
        
        if (CanCompute( cat, "CocartesianLeftCoevaluationMorphism" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'CocartesianLeftCoevaluationMorphism' ..." );
                
            end;
            
            coca_coev_ab = CocartesianLeftCoevaluationMorphism( a, b );
            coca_coev_ba = CocartesianLeftCoevaluationMorphism( b, a );
            
            coev_ab_op = CartesianLeftCoevaluationMorphism( a_op, b_op );
            coev_ba_op = CartesianLeftCoevaluationMorphism( b_op, a_op );
            
            @Assert( 0, IsCongruentForMorphisms( coev_ab_op, Opposite( opposite, coca_coev_ab ) ) );
            @Assert( 0, IsCongruentForMorphisms( coev_ba_op, Opposite( opposite, coca_coev_ba ) ) );
            
        end;
        
        if (CanCompute( cat, "CoproductToCoexponentialLeftAdjunctMorphism" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'CoproductToCoexponentialLeftAdjunctMorphism' ..." );
                
            end;
            
            ########################################
            # 
            # alpha: a → b
            # beta:  c → d
            # 
            # alpha_tensor_beta: a ⊔ c → b ⊔ d
            # beta_tensor_alpha: c ⊔ a → d ⊔ b
            #
            ########################################
            #
            # alpha_op: b → a
            # beta_op:  d → c
            #
            # alpha_tensor_beta_op: b ⊔ d → a ⊔ c
            # beta_tensor_alpha_op: d ⊔ b → c ⊔ a
            #
            ########################################
            
            alpha_tensor_beta = CoproductOnMorphisms( alpha, beta );
            beta_tensor_alpha = CoproductOnMorphisms( beta, alpha );
            alpha_tensor_beta_op = DirectProductOnMorphisms( opposite, alpha_op, beta_op );
            beta_tensor_alpha_op = DirectProductOnMorphisms( opposite, beta_op, alpha_op );
            
            # Adjoint( a ⊔ c → b ⊔ d )  ==  Coexp( a ⊔ c, d ) → b
            tensor_to_coexp_adjunction_on_alpha_tensor_beta = CoproductToCoexponentialLeftAdjunctMorphism( b, d, alpha_tensor_beta );
            
            # Adjoint( c ⊔ a → d ⊔ b )  ==  Coexp( c ⊔ a, b ) → d
            tensor_to_coexp_adjunction_on_beta_tensor_alpha = CoproductToCoexponentialLeftAdjunctMorphism( d, b, beta_tensor_alpha );
            
            # Adjoint( b ⊔ d → a ⊔ c )  ==  b → Exp( d, a ⊔ c )
            tensor_to_exp_adjunction_on_alpha_tensor_beta_op = DirectProductToExponentialLeftAdjunctMorphism( b_op, d_op, alpha_tensor_beta_op );
            
            # Adjoint( d ⊔ b → c ⊔ a )  ==  d → Exp( b, c ⊔ a )
            tensor_to_exp_adjunction_on_beta_tensor_alpha_op = DirectProductToExponentialLeftAdjunctMorphism( d_op, b_op, beta_tensor_alpha_op );
            
            # Coexp( b ⊔ d, c ) → a  ==  op( a → Exp( c, b ⊔ d ) )
            @Assert( 0, IsCongruentForMorphisms( tensor_to_exp_adjunction_on_alpha_tensor_beta_op, Opposite( opposite, tensor_to_coexp_adjunction_on_alpha_tensor_beta ) ) );
            
            # Coexp( d ⊔ b, a ) → c  ==  op( c → Exp( a, d ⊔ b ) )
            @Assert( 0, IsCongruentForMorphisms( tensor_to_exp_adjunction_on_beta_tensor_alpha_op, Opposite( opposite, tensor_to_coexp_adjunction_on_beta_tensor_alpha ) ) );
            
        end;
        
        if (CanCompute( cat, "CoexponentialToCoproductLeftAdjunctMorphism" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'CoexponentialToCoproductLeftAdjunctMorphism' ..." );
                
            end;
            
            ##################################################
            #
            # exp_alpha_beta: Exp( b, c ) → Exp( a, d )
            # exp_beta_alpha: Exp( d, a ) → Exp( c, b )
            #
            # exp_alpha_beta_op: Exp( a, d ) → Exp( b, c )
            # exp_beta_alpha_op: Exp( c, b ) → Exp( d, a )
            #
            ##################################################
            #
            # coexp_alpha_beta: Coexp( a, d ) → Coexp( b, c )
            # coexp_beta_alpha: Coexp( c, b ) → Coexp( d, a )
            #
            ##################################################
            
            # Adjoint( Coexp( a, d ) → Coexp( b, c ) )  ==  a → Coexp( b, c ) ⊔ d
            coexp_to_tensor_adjunction_on_coexp_alpha_beta = CoexponentialToCoproductLeftAdjunctMorphism( a, d, coexp_alpha_beta );
            
            # Adjoint( Coexp( c, b ) → Coexp( d, a ) )  ==  c → Coexp( d, a ) ⊔ b
            coexp_to_tensor_adjunction_on_coexp_beta_alpha = CoexponentialToCoproductLeftAdjunctMorphism( c, b, coexp_beta_alpha );
            
            # Adjoint( Exp( a, d ) → Exp( b, c ) )  ==  Exp( a, d ) ⊔ b → c
            exp_to_tensor_adjunction_on_exp_alpha_beta_op = ExponentialToDirectProductLeftAdjunctMorphism( b_op, c_op, exp_alpha_beta_op );
            
            # Adjoint( Exp( c, b ) → Exp( d, a ) )  ==  Exp( c, b ) ⊔ d → a
            exp_to_tensor_adjunction_on_exp_beta_alpha_op = ExponentialToDirectProductLeftAdjunctMorphism( d_op, a_op, exp_beta_alpha_op );
            
            # Exp( a, d ) ⊔ b → c  ==  op( c → Coexp( d, a ) ⊔ b )
            @Assert( 0, IsCongruentForMorphisms( exp_to_tensor_adjunction_on_exp_alpha_beta_op, Opposite( opposite, coexp_to_tensor_adjunction_on_coexp_beta_alpha ) ) );
            
            # Exp( c, b ) ⊔ d → a  ==  op( a → Coexp( b, c ) ⊔ d )
            @Assert( 0, IsCongruentForMorphisms( exp_to_tensor_adjunction_on_exp_beta_alpha_op, Opposite( opposite, coexp_to_tensor_adjunction_on_coexp_alpha_beta ) ) );
            
        end;
        
        if (CanCompute( cat, "CocartesianPreCoComposeMorphism" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'CocartesianPreCoComposeMorphism' ..." );
                
            end;
            
            precocompose_abc = CocartesianPreCoComposeMorphism( a, b, c );
            precocompose_cba = CocartesianPreCoComposeMorphism( c, b, a );

            precompose_abc_op = CartesianPreComposeMorphism( a_op, b_op, c_op );
            precompose_cba_op = CartesianPreComposeMorphism( c_op, b_op, a_op );
            
            @Assert( 0, IsCongruentForMorphisms( precompose_abc_op, Opposite( opposite, precocompose_cba ) ) );
            @Assert( 0, IsCongruentForMorphisms( precompose_cba_op, Opposite( opposite, precocompose_abc ) ) );
        
        end;
        
        if (CanCompute( cat, "CocartesianPostCoComposeMorphism" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'CocartesianPostCoComposeMorphism' ..." );
                
            end;
            
            postcocompose_abc = CocartesianPostCoComposeMorphism( a, b, c );
            postcocompose_cba = CocartesianPostCoComposeMorphism( c, b, a );
            
            postcompose_abc_op = CartesianPostComposeMorphism( a_op, b_op, c_op );
            postcompose_cba_op = CartesianPostComposeMorphism( c_op, b_op, a_op );
            
            @Assert( 0, IsCongruentForMorphisms( postcompose_abc_op, Opposite( opposite, postcocompose_cba ) ) );
            @Assert( 0, IsCongruentForMorphisms( postcompose_cba_op, Opposite( opposite, postcocompose_abc ) ) );
            
        end;
        
        if (CanCompute( cat, "CocartesianDualOnObjects" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'CocartesianDualOnObjects' ..." );
                
            end;
            
            a_codual = CocartesianDualOnObjects( a );
            b_codual = CocartesianDualOnObjects( b );
            
            a_dual_op = CartesianDualOnObjects( a_op );
            b_dual_op = CartesianDualOnObjects( b_op );
            
            @Assert( 0, IsEqualForObjects( a_dual_op, Opposite( opposite, a_codual ) ) );
            @Assert( 0, IsEqualForObjects( b_dual_op, Opposite( opposite, b_codual ) ) );
            
        end;
        
        if (CanCompute( cat, "CocartesianDualOnMorphisms" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'CocartesianDualOnMorphisms' ..." );
                
            end;
            
            codual_alpha = CocartesianDualOnMorphisms( alpha );
            codual_beta = CocartesianDualOnMorphisms( beta );
            
            dual_alpha_op = CartesianDualOnMorphisms( alpha_op );
            dual_beta_op = CartesianDualOnMorphisms( beta_op );
            
            @Assert( 0, IsCongruentForMorphisms( dual_alpha_op, Opposite( opposite, codual_alpha ) ) );
            @Assert( 0, IsCongruentForMorphisms( dual_beta_op, Opposite( opposite, codual_beta ) ) );
            
        end;
        
        if (CanCompute( cat, "CocartesianEvaluationForCocartesianDual" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'CocartesianEvaluationForCocartesianDual' ..." );
                
            end;
            
            coca_ev_for_codual_a = CocartesianEvaluationForCocartesianDual( a );
            coca_ev_for_codual_b = CocartesianEvaluationForCocartesianDual( b );
            
            ev_for_dual_a_op = CartesianEvaluationForCartesianDual( a_op );
            ev_for_dual_b_op = CartesianEvaluationForCartesianDual( b_op );
            
            @Assert( 0, IsCongruentForMorphisms( ev_for_dual_a_op, Opposite( opposite, coca_ev_for_codual_a ) ) );
            @Assert( 0, IsCongruentForMorphisms( ev_for_dual_b_op, Opposite( opposite, coca_ev_for_codual_b ) ) );
            
        end;
        
        if (CanCompute( cat, "MorphismFromCocartesianBidual" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'MorphismFromCocartesianBidual' ..." );
                
            end;
            
            morphism_from_cobidual_a = MorphismFromCocartesianBidual( a );
            morphism_from_cobidual_b = MorphismFromCocartesianBidual( b );
            
            morphism_to_bidual_a_op = MorphismToCartesianBidual( a_op );
            morphism_to_bidual_b_op = MorphismToCartesianBidual( b_op );
            
            @Assert( 0, IsCongruentForMorphisms( morphism_to_bidual_a_op, Opposite( opposite, morphism_from_cobidual_a ) ) );
            @Assert( 0, IsCongruentForMorphisms( morphism_to_bidual_b_op, Opposite( opposite, morphism_from_cobidual_b ) ) );
            
        end;
        
        if (CanCompute( cat, "CoexponentialCoproductCompatibilityMorphism" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'CoexponentialCoproductCompatibilityMorphism' ..." );
                
            end;
            
            # Coexp( a ⊔ b, c ⊔ d ) → Coexp( a, c ) ⊔ Coexp( b, d )
            coexp_to_tensor_compatibility_abcd = CoexponentialCoproductCompatibilityMorphism( [ a, b, c, d ] );
            
            # Coexp( b ⊔ d, a ⊔ c ) → Coexp( b, a ) ⊔ Coexp( d, c )
            coexp_to_tensor_compatibility_bdac = CoexponentialCoproductCompatibilityMorphism( [ b, d, a, c ] );
            
            # Exp( a, b ) ⊔ Exp( c, d ) → Exp( a ⊔ c, b ⊔ d )
            tensor_to_exp_compatibility_abcd_op = DirectProductExponentialCompatibilityMorphism( [ a_op, b_op, c_op, d_op ] );
            
            # Exp( c, a ) ⊔ Exp( d, b ) → Exp( c ⊔ d, a ⊔ b )
            tensor_to_exp_compatibility_cadb_op = DirectProductExponentialCompatibilityMorphism( [ c_op, a_op, d_op, b_op ] );
            
            # Exp( a, b ) ⊔ Exp( c, d ) → Exp( a ⊔ c, b ⊔ d )  ==  op( Coexp( b ⊔ d, a ⊔ c ) → Coexp( b, a ) ⊔ Coexp( d, c ) )
            @Assert( 0, IsCongruentForMorphisms( tensor_to_exp_compatibility_abcd_op, Opposite( opposite, coexp_to_tensor_compatibility_bdac ) ) );
            
            # Exp( c, a ) ⊔ Exp( d, b ) → Exp( c ⊔ d, a ⊔ b )  ==  op( Coexp( a ⊔ b, c ⊔ d ) → Coexp( a, c ) ⊔ Coexp( b, d ) )
            @Assert( 0, IsCongruentForMorphisms( tensor_to_exp_compatibility_cadb_op, Opposite( opposite, coexp_to_tensor_compatibility_abcd ) ) );
            
        end;
        
        if (CanCompute( cat, "CocartesianDualityCoproductCompatibilityMorphism" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'CocartesianDualityCoproductCompatibilityMorphism' ..." );
                
            end;
            
            # (a ⊔ b)_v → a_v ⊔ b_v
            coduality_coproduct_compatibility_ab = CocartesianDualityCoproductCompatibilityMorphism( a, b );
            
            # (b ⊔ a)_v → b_v ⊔ a_v
            coduality_coproduct_compatibility_ba = CocartesianDualityCoproductCompatibilityMorphism( b, a );
            
            # a^v ⊔ b^v → (a ⊔ b)^v
            coproduct_duality_compatibility_ab_op = DirectProductCartesianDualityCompatibilityMorphism( a_op, b_op );
            
            # b^v ⊔ a^v → (b ⊔ a)^v
            coproduct_duality_compatibility_ba_op = DirectProductCartesianDualityCompatibilityMorphism( b_op, a_op );
            
            # a^v ⊔ b^v → (a ⊔ b)^v  == op( (a ⊔ b)_v → a_v ⊔ b_v )
            @Assert( 0, IsCongruentForMorphisms( coproduct_duality_compatibility_ab_op, Opposite( opposite, coduality_coproduct_compatibility_ab ) ) );
            
            # b^v ⊔ a^v → (b ⊔ a)^v  ==  op( (b ⊔ a)_v → b_v ⊔ a_v )
            @Assert( 0, IsCongruentForMorphisms( coproduct_duality_compatibility_ba_op, Opposite( opposite, coduality_coproduct_compatibility_ba ) ) );
            
        end;
        
        if (CanCompute( cat, "MorphismFromCoexponentialToCoproduct" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'MorphismFromCoexponentialToCoproduct' ..." );
                
            end;
            
            morphism_from_coexp_to_coproduct_ab = MorphismFromCoexponentialToCoproduct( a, b );
            morphism_from_coexp_to_coproduct_ba = MorphismFromCoexponentialToCoproduct( b, a );
            
            morphism_from_coproduct_to_exp_ab_op = MorphismFromDirectProductToExponential( a_op, b_op );
            morphism_from_coproduct_to_exp_ba_op = MorphismFromDirectProductToExponential( b_op, a_op );
            
            @Assert( 0, IsCongruentForMorphisms( morphism_from_coproduct_to_exp_ab_op, Opposite( opposite, morphism_from_coexp_to_coproduct_ba ) ) );
            @Assert( 0, IsCongruentForMorphisms( morphism_from_coproduct_to_exp_ba_op, Opposite( opposite, morphism_from_coexp_to_coproduct_ab ) ) );
            
        end;
        
        if (CanCompute( cat, "IsomorphismFromCoexponentialFromInitialObjectToCocartesianDualObject" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'IsomorphismFromCoexponentialFromInitialObjectToCocartesianDualObject' ..." );
                
            end;
            
            isomorphism_from_coexp_to_codual_a = IsomorphismFromCoexponentialFromInitialObjectToCocartesianDualObject( a );
            isomorphism_from_coexp_to_codual_b = IsomorphismFromCoexponentialFromInitialObjectToCocartesianDualObject( b );
            
            isomorphism_from_dual_to_exp_a_op = IsomorphismFromCartesianDualObjectToExponentialIntoTerminalObject( a_op );
            isomorphism_from_dual_to_exp_b_op = IsomorphismFromCartesianDualObjectToExponentialIntoTerminalObject( b_op );
            
            @Assert( 0, IsCongruentForMorphisms( isomorphism_from_dual_to_exp_a_op, Opposite( opposite, isomorphism_from_coexp_to_codual_a ) ) );
            @Assert( 0, IsCongruentForMorphisms( isomorphism_from_dual_to_exp_b_op, Opposite( opposite, isomorphism_from_coexp_to_codual_b ) ) );
            
        end;
        
        if (CanCompute( cat, "IsomorphismFromCocartesianDualObjectToCoexponentialFromInitialObject" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'IsomorphismFromCocartesianDualObjectToCoexponentialFromInitialObject' ..." );
                
            end;
            
            isomorphism_from_codual_to_coexp_a = IsomorphismFromCocartesianDualObjectToCoexponentialFromInitialObject( a );
            isomorphism_from_codual_to_coexp_b = IsomorphismFromCocartesianDualObjectToCoexponentialFromInitialObject( b );
            
            isomorphism_from_exp_to_dual_a_op = IsomorphismFromExponentialIntoTerminalObjectToCartesianDualObject( a_op );
            isomorphism_from_exp_to_dual_b_op = IsomorphismFromExponentialIntoTerminalObjectToCartesianDualObject( b_op );
            
            @Assert( 0, IsCongruentForMorphisms( isomorphism_from_exp_to_dual_a_op, Opposite( opposite, isomorphism_from_codual_to_coexp_a ) ) );
            @Assert( 0, IsCongruentForMorphisms( isomorphism_from_exp_to_dual_b_op, Opposite( opposite, isomorphism_from_codual_to_coexp_b ) ) );
            
        end;
        
        if (CanCompute( cat, "UniversalPropertyOfCocartesianDual" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'UniversalPropertyOfCocartesianDual' ..." );
                
            end;
            
            gamma_op = Opposite( opposite, gamma );
            delta_op = Opposite( opposite, delta );
            
            universal_property_of_codual_gamma = UniversalPropertyOfCocartesianDual( a, b, gamma );
            universal_property_of_codual_delta = UniversalPropertyOfCocartesianDual( c, d, delta );
            
            universal_property_of_dual_gamma_op = UniversalPropertyOfCartesianDual( a_op, b_op, gamma_op );
            universal_property_of_dual_delta_op = UniversalPropertyOfCartesianDual( c_op, d_op, delta_op );
            
            @Assert( 0, IsCongruentForMorphisms( universal_property_of_dual_gamma_op, Opposite( opposite, universal_property_of_codual_gamma ) ) );
            @Assert( 0, IsCongruentForMorphisms( universal_property_of_dual_delta_op, Opposite( opposite, universal_property_of_codual_delta ) ) );
            
        end;
        
        if (CanCompute( cat, "CocartesianLambdaIntroduction" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'CocartesianLambdaIntroduction' ..." );
                
            end;
            
            colambda_intro_alpha = CocartesianLambdaIntroduction( alpha );
            colambda_intro_beta = CocartesianLambdaIntroduction( beta );
            
            lambda_intro_alpha_op = CartesianLambdaIntroduction( alpha_op );
            lambda_intro_beta_op = CartesianLambdaIntroduction( beta_op );
            
            @Assert( 0, IsCongruentForMorphisms( lambda_intro_alpha_op, Opposite( opposite, colambda_intro_alpha ) ) );
            @Assert( 0, IsCongruentForMorphisms( lambda_intro_beta_op, Opposite( opposite, colambda_intro_beta ) ) );
            
        end;
        
        if (CanCompute( cat, "CocartesianLambdaElimination" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'CocartesianLambdaElimination' ..." );
                
            end;
            
            epsilon_op = Opposite( opposite, epsilon );
            zeta_op = Opposite( opposite, zeta );
            
            colambda_elim_epsilon = CocartesianLambdaElimination( a, b, epsilon );
            colambda_elim_zeta = CocartesianLambdaElimination( c, d, zeta );
            
            lambda_elim_epsilon_op = CartesianLambdaElimination( b_op, a_op, epsilon_op );
            lambda_elim_zeta_op = CartesianLambdaElimination( d_op, c_op, zeta_op );
            
            @Assert( 0, IsCongruentForMorphisms( lambda_elim_epsilon_op, Opposite( opposite, colambda_elim_epsilon ) ) );
            @Assert( 0, IsCongruentForMorphisms( lambda_elim_zeta_op, Opposite( opposite, colambda_elim_zeta ) ) );
            
        end;
        
        if (CanCompute( cat, "IsomorphismFromObjectToCoexponential" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'IsomorphismFromObjectToCoexponential' ..." );
                
            end;
            
            isomorphism_from_a_to_cohom = IsomorphismFromObjectToCoexponential( a );
            isomorphism_from_b_to_cohom = IsomorphismFromObjectToCoexponential( b );
            
            isomorphism_from_exp_to_a_op = IsomorphismFromExponentialToObject( a_op );
            isomorphism_from_exp_to_b_op = IsomorphismFromExponentialToObject( b_op );
            
            @Assert( 0, IsCongruentForMorphisms( isomorphism_from_exp_to_a_op, Opposite( opposite, isomorphism_from_a_to_cohom ) ) );
            @Assert( 0, IsCongruentForMorphisms( isomorphism_from_exp_to_b_op, Opposite( opposite, isomorphism_from_b_to_cohom ) ) );
            
        end;
        
        if (CanCompute( cat, "IsomorphismFromCoexponentialToObject" ))
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Testing 'IsomorphismFromCoexponentialToObject' ..." );
                
            end;
            
            isomorphism_from_coexp_to_a = IsomorphismFromCoexponentialToObject( a );
            isomorphism_from_coexp_to_b = IsomorphismFromCoexponentialToObject( b );
            
            isomorphism_from_a_to_exp_op = IsomorphismFromObjectToExponential( a_op );
            isomorphism_from_b_to_exp_op = IsomorphismFromObjectToExponential( b_op );
            
            @Assert( 0, IsCongruentForMorphisms( isomorphism_from_a_to_exp_op, Opposite( opposite, isomorphism_from_coexp_to_a ) ) );
            @Assert( 0, IsCongruentForMorphisms( isomorphism_from_b_to_exp_op, Opposite( opposite, isomorphism_from_coexp_to_b ) ) );
            
        end;
        
        if (CanCompute( cat, "CoexponentialOnObjects" ) &&
           CanCompute( cat, "CocartesianLeftEvaluationMorphism" ) &&
           CanCompute( cat, "CoexponentialToCoproductLeftAdjunctMorphism" )
        
       )
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Consistency between 'CoclosedEvalutionMorphism' and 'AdjunctMorphism' ..." );
                
            end;
            
            coca_ev_ab = CocartesianLeftEvaluationMorphism( a, b );
            coca_ev_ba = CocartesianLeftEvaluationMorphism( b, a );
            
            id_coexp_ab = IdentityMorphism( CoexponentialOnObjects( a, b ) );
            id_coexp_ba = IdentityMorphism( CoexponentialOnObjects( b, a ) );
            
            # Adjoint( Coexp( a, b ) → Coexp( a, b ) )  ==  a → Coexp( a, b ) ⊔ b
            coexp_to_tensor_adjunction_on_id_coexp_ab = CoexponentialToCoproductLeftAdjunctMorphism( a, b, id_coexp_ab );
            
            # Adjoint( Coexp( b, a ) → Coexp( b, a ) )  ==  b → Coexp( b, a ) ⊔ a
            coexp_to_tensor_adjunction_on_id_coexp_ba = CoexponentialToCoproductLeftAdjunctMorphism( b, a, id_coexp_ba );
            
            @Assert( 0, IsCongruentForMorphisms( coca_ev_ba, coexp_to_tensor_adjunction_on_id_coexp_ab ) );
            @Assert( 0, IsCongruentForMorphisms( coca_ev_ab, coexp_to_tensor_adjunction_on_id_coexp_ba ) );
            
        end;
        
        if (CanCompute( cat, "Coproduct" ) &&
           CanCompute( cat, "CocartesianLeftCoevaluationMorphism" ) &&
           CanCompute( cat, "CoproductToCoexponentialLeftAdjunctMorphism" )
        
       )
            
            if (verbose)
                
                # COVERAGE_IGNORE_NEXT_LINE
                Display( "Consistency between 'CoevalutionMorphism' and 'AdjunctMorphism' ..." );
                
            end;
            
            coca_coev_ab = CocartesianLeftCoevaluationMorphism( a, b );
            coca_coev_ba = CocartesianLeftCoevaluationMorphism( b, a );
            
            id_a_tensor_b = IdentityMorphism( BinaryCoproduct( cat, a, b ) );
            id_b_tensor_a = IdentityMorphism( BinaryCoproduct( cat, b, a ) );
            
            # Adjoint( a ⊔ b → a ⊔ b )  ==  Coexp( a ⊔ b, b ) → a
            tensor_to_coexp_adjunction_on_id_a_tensor_b = CoproductToCoexponentialLeftAdjunctMorphism( a, b, id_a_tensor_b );
            
            # Adjoint( b ⊔ a → b ⊔ a )  ==  Coexp( b ⊔ a, a ) → b
            tensor_to_coexp_adjunction_on_id_b_tensor_a = CoproductToCoexponentialLeftAdjunctMorphism( b, a, id_b_tensor_a );
            
            @Assert( 0, IsCongruentForMorphisms( coca_coev_ba, tensor_to_coexp_adjunction_on_id_a_tensor_b ) );
            @Assert( 0, IsCongruentForMorphisms( coca_coev_ab, tensor_to_coexp_adjunction_on_id_b_tensor_a ) );
            
        end;

end );
