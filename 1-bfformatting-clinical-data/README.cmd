This is to document to conversion of anonymized sample clinical data to Beacon Friendly Format (BFF)


Workflow

- Identify variables from the PDF of genetic test (so far)
- Map variables to Beacon v2 Model: http://docs.genomebeacons.org/


  Variables
  sex
  age at test
  date at test
  variant
  
  
- task needed:

1. extract data

2. format data

2.1 Variant: 
recommendation: https://varnomen.hgvs.org/
Variant is described as protein HGVS (https://varnomen.hgvs.org/) but gene name is in Hugo symbol. We want to format Variant to proper HGVS format and also convert it to standard assembly:chr:pos
format to be able to search it like that. dbSNP identifiers will also be nice if available.

- convert Gene name to Refseq Id
- 
