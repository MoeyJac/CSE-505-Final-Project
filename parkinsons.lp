%doctor’s assessments
evidence(postural_instability).
evidence(gait_disorder).
evidence(dementia).
stage(advanced).

%demographics
evidence(male).
evidence(75).

%history of the patient
diagnosis(dyskinesia).
diagnosis(drooling).
rejection(dopaminergic_therapies).
rejection(modafinil).
history(medication_precipiated_hallucinations).

not_advanced_symptoms(response_fluctuation, dyskinesia, psycotic_ideation):-
    not diagnosis(response_fluctuation),
    not diagnosis(dyskinesia),
    not diagnosis(psycotic_ideation).

recommendation(apomophine):-
    not rejection(apomophine), 
    stage(advanced),
    not not_advanced_symptoms(response_fluctuation, dyskinesia, psycotic_ideation).

recommendation(deep_brain_stimulation):-
    not rejection(deep_brain_stimulation),
    stage(advanced),
    not not_advanced_symptoms(response_fluctuation, dyskinesia, psycotic_ideation).

recommendation(clozapine):-
    not rejection(deep_brain_stimulation),
    rejection(dopaminergic_therapies),
    stage(advanced),
    not not_advanced_symptoms(response_fluctuation, dyskinesia, psycotic_ideation).
    
recommendation(modafinil):-
    not rejection(modafinil),
    history(excessive_sleepiness).

recommendation(clonazpam):-
    not rejection(clonazpam),
    diagnosis(rapid_eye_movement).

recommendation(melatonin):-
    not rejection(melatonin),
    diagnosis(rapid_eye_movement).

recommendation(midodrine):-
    not rejection(midodrine),
    diagnosis(orthostatic_hypertension).

recommendation(hyoscine):-
    not rejection(hyoscine),
    not history(medication_precipiated_hallucinations),
    diagnosis(drooling).

recommendation(atropine):-
    not rejection(atropine),
    not history(medication_precipiated_hallucinations),
    diagnosis(drooling).

recommendation(glycopyrrolate):-
    not rejection(glycopyrrolate),
    history(medication_precipiated_hallucinations),
    diagnosis(drooling).

recommendation(bromocriptine):-
    not rejection(bromocriptine),
    stage(advanced),
    not history(peritoneum),
    not history(pleura).

recommendation(cholinesterase_inhibitors):-
    not rejection(cholinesterase_inhibitors),
    evidence(dementia).

recommendation(palliative_care):-
    stage(end_stage).

recommendation(cognitive_behavioural_theryapy):-
    evidence(impulse_control_disorder).

#abducible diagnosis(dyskinesia).
#abducible diagnosis(drooling).
#abducible diagnosis(response_fluctuation).
#abducible diagnosis(psycotic_ideation).
#abducible diagnosis(rapid_eye_movement).
#abducible diagnosis(orthostatic_hypertension).
#abducible evidence(dementia).
#abducible evidence(impulse_control_disorder).
#abducible history(excessive_sleepiness).
#abducible history(medication_precipiated_hallucinations).
#abducible history(peritoneum).
#abducible history(pleura).
#abducible stage(early).
#abducible stage(advanced).
#abducible stage(end_stage).
