#!/bin/bash

for f in *.sql
do
	psql -h localhost -d bcbsTechInterview -U postgres -f $f
done
