This is to document to conversion of anonymized sample clinical data to Beacon Friendly Format (BFF)


Workflow

- Identify variables from the PDF of genetic test (so far)
- Map variables to Beacon v2 Model: http://docs.genomebeacons.org/
- Convert and validate formatted data (BFF)
- Load BFF jsons to MongoDB
- Implement Beacon with new MongoDB


Target Variables:
example_data  beacon_variable
Monsieur  Individual.sex
gène TTN 	Genomic Variations.molecularAttributes.geneIds
c.91222_91231del (p.Ser30408Valfs*8)	Genomic Variations.identifiers.proteinHGVSIds
l’état hétérozygote	Genomic Variations.variantLevelData.zigosity
classe 4	Genomic Variations.caseLevelData.clinicalInterpretations
syndrome d’Andersen Tawil 	Individual.diseases


Challenges:

1. extract data
The data was in non-structured data as free text PDF report. For the proof of concept we did the extraction and translation to bff manually by scraping the target variable values from the PDF.

-recommendation: It would be ideal to request that the variables from the genetic test are provided in structured way as follows:
gene: Hugo symbol, e.g 
gHGVS


2. format data

2.1 Variant: 
recommendation: https://varnomen.hgvs.org/
Variant is described as protein HGVS code (https://varnomen.hgvs.org/). We want to format Variant to proper HGVS format and also convert it to standard VRS
format. 

- actions needed:
convert HGVS to VRS standard with VRS tool.



Outcomes:
2 out of the 3 variants were not in Genomad/ClinVar. recommended: submit to ClinVar: https://www.ncbi.nlm.nih.gov/clinvar/docs/submit/

Recommendations:
Require gHGVS and other analysis-related data to genetic test report suppliers, in a structured format, tabular.
(TODO the full specification of the format)

