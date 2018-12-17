# Improving Adherence to Parkinson's Treatment Management Guidelines via Abductive Reasoning

This is a incomplete implementation of treatment guidelines for patients diagnosed with Parkinson's Disease. This work is an extension of the paper by Zhuo Chen, Elmer Salazar, Kyle Marple, Gopal Gupta, and Lakshman Tamil at University of Texas at Dallas entitled [*Improving Adherence to Heart Failure Management Guidelines via Abductive Reasoning*](https://arxiv.org/pdf/1707.04957.pdf).

Also included is a re-implementation of the code provided from [this paper](https://arxiv.org/pdf/1707.04957.pdf) for example purposes.

## Documentation

This program is run using [s(ASP)](https://sourceforge.net/projects/sasp-system/) which is the authors of the orignal papers modified implementation of ASP. A compiled version of s(ASP) has been provided for unix like systems, however the source is available [here](https://sourceforge.net/projects/sasp-system/) and the instructions can be followed in the provided README for installation and setup if needed on other systems.

### Prerequisites

-[SWI-Prolog](http://www.swi-prolog.org/)

### Running the Code

Once s(ASP) has been configured and SWI-Prolog installed this program can be run using (something like) the following command:

`./sasp -i -la -s0 parkinsons.lp`

This starts s(ASP) in interactive mode which launches an swi like terminal, reading from the `parkinsons.lp` file. Once the terminal is open queries can be passed. For example:

`?- recommendation(clozapine).`

If this query is run on the default facts the program will print:

```
{ diagnosis(response_fluctuation), recommendation(clozapine), rejection(dopaminergic_therapies), stage(advanced), not not_advanced_symptoms(response_fluctuation,dyskinesia,psycotic_ideation), not rejection(deep_brain_stimulation) }

Abducibles: { diagnosis(response_fluctuation) }
```

It lists the facts that can be found to be true in the first part of the statement, and in the abduciles section it lists what must be true in the set of given facts for the query as a whole to be true, and by extension for the doctors treatment recommendation to be compliant with guidelines.

### Modifying Patient Information

To modify the patients data simply add or remove the facts stated at the top of the file. This will change the patients profile and therefore adjust the results of queries.

## Help

Any questions concerning running the code or extending this work can be directed to joseph.macaluso@stonybrook.edu