


CREATE OR REPLACE NETWORK RULE regla_formula1
  MODE = 'EGRESS',
  TYPE = 'HOST_PORT',
  VALUE_LIST = ('ergast.com');


--La nueva API a partir de 2025  
CREATE OR REPLACE NETWORK RULE regla2_formula1
MODE = 'EGRESS',
TYPE = 'HOST_PORT',
VALUE_LIST = ('api.jolpi.ca');

USE DATABASE FORMULA1;

CREATE OR REPLACE NETWORK RULE regla3_formula1
  MODE = 'EGRESS',
  TYPE = 'HOST_PORT',
  VALUE_LIST = ('api.openf1.org');



CREATE OR REPLACE EXTERNAL ACCESS INTEGRATION integracion_formula1
  ALLOWED_NETWORK_RULES = (regla_formula1, regla2_formula1, regla3_formula1)
  ENABLED = true;


GRANT USAGE ON INTEGRATION integracion_formula1 TO ROLE R_TFG_F1;





