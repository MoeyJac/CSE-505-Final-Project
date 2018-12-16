%doctor’s assessments 
evidence(accf_stage_c). 
evidence(nyha_class_3). 

%demographics
evidence(female).
evidence(age, 60).

%history of the patient
diagnosis(hf_with_reduced_ef).
diagnosis(diabetes).
diagnosis(dilated_cardiomyopathy).
evidence(angina).
history(standard_neurohumoral_antagonist_therapy).
%history(current_or_recent_history_of_fluid_retention).

%measurements from the lab
measurement(potassium, 3.0).
measurement(lvef, 0.16).
measurement(creatinine, 1.49).
measurement(non_lbbb, 110).
measurement(nt_pro_bnp, 5051).
measurement(glomerular_filtration_rate, 44).

%contraindications
contraindication(crt).
contraindication(ace_inhibitors).

lvef_less_than_30:- measurement(lvef, Data), Data =< 30.
mi_post_40_days:- measurement(mi, Data), Data >= 40.

recommendation(beta_blockers, class_1) :-
	not absent_indispensable_choice(beta_blockers),
	not rejection(beta_blockers), evidence(accf_stage_c),
	diagnosis(hf_with_reduced_ef).

absent_indispensable_choice(beta_blockers) :-
	not recommendation(diuretics, class_1),
	diagnosis(hf_with_reduced_ef), evidence(accf_stage_c),
	history(current_or_recent_history_of_fluid_retention).

recommendation(diuretics, class_1) :-
	recommendation(beta_blockers, class_1),
	diagnosis(hf_with_reduced_ef),
	not rejection(diuretics), evidence(accf_stage_c),
	history(current_or_recent_history_of_fluid_retention).

#abducible contraindication(beta_blockers).
#abducible contraindication(icd).
#abducible contraindication(arbs).
#abducible diagnosis(atrial_fibrillation).
#abducible diagnosis(hypertension).
#abducible evidence(fluid_retention).
#abducible evidence(sleep_apnea).
#abducible history(angioedema).
#abducible history(thromboembolism).
#abducible history(current_or_recent_history_of_fluid_retention).