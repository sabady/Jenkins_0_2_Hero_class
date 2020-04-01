#!/bin/bash
crumb=$(curl -u "jenkins:1234" -s 'http://rachel-desktop:8080/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,":",//crumb)')

#echo $crumb
curl -u "jenkins:1234" -H $crumb -X POST http://rachel-desktop:8080/job/job1/build?delay=0sec

