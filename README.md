# onedata-webmethods
Welcome to the caDSR OneData WebMethods Integration Server Designer code project!

This repository is the version control for the NCI CBIIT caDSR metadata registry (MDR) One Data implementation and future operational maintenance/technical support.

caDSR2 Integration Server (IS) deployment readme

Sprint version = 1.20.0

Packages to deploy:
CTSU 1.20 
ALS 1.20.0
ONEDATA 1.20
FORMDOWNLOAD 1.20.0

SMOKE TEST:
1) Check all elements loaded as expected.
CTSU= 25 elements
ALS= 72 elements
ONEDATA= 45 elements
FORMDOWNLOA= 22 elements

2) Execute the following URL to test CTSU API: cadsrapi-<tier>.cancer.gov/invoke/caDSR/GetXML?query=DataElement[@publicId=62]

where <tier>= stage or prod
