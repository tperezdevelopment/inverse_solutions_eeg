#!/bin/bash

set -u
set -e

#notes: There is input parameters that in this version will no be present in the json but here yes for Analisys Domain Only will be for time and frequency and the algortihm only for AMNR

function usage {
    echo $0 --Voltage [Voltage] --LeadField [LeadField] --Laplacian [Laplacian] --VoltageName [VoltageName] --LeadFieldName [LeadFieldName] --LaplacianName [LaplacianName] [--AnatConstSurface] [--AnatConstVolume] [--AnalysisDomainTime] [--AnalysisDomainFrequency] [--AnalysisDomainSpaceTime] [--AnalysisDomainTimeFrequency] [--methodAll] [--methodRidgel] [--methodElasticNet] [--methodSlasso] [--methodSlassoNonNegative] [--algorithmAll] [--algorithmAMNR] --lambda [lambda] [--saveAll] --output [output]
}



 function die {
     echo $*
     exit 1
 }
 
# Initializes default values for flags
 VoltageName='V'; LeadFieldName='Ke'; LaplacianName='Le'; AnatConstSurface=0;  AnatConstVolume=0; AnalysisDomainTime=0; AnalysisDomainFrequency=0; AnalysisDomainSpaceTime=0; AnalysisDomainTimeFrequency=0; methodAll=0; methodRidgel=0; methodElasticNet=0; methodSlasso=0; methodSlassoNonNegative=0; algorithmAll=0; algorithmAMNR=1; lambda=0; saveAll=0;



while [ $# != 0 ]
do
    case $1 in       
		"--Voltage")
            Voltage=$2
            shift
            shift
            ;;	
		"--LeadField")
            LeadField=$2
            shift
            shift
            ;;
        "--Laplacian")
            Laplacian=$2
            shift
            shift
            ;; 
		"--VoltageName")
            VoltageName=$2
            shift
            shift
            ;;	
		"--LeadFieldName")
            LeadFieldName=$2
            shift
            shift
            ;;
        "--LaplacianName")
            LaplacianName=$2
            shift
            shift
            ;; 	
		"--AnatConstSurface")
            AnatConstSurface=1
            shift           
            ;;
        "--AnatConstVolume")
            AnatConstVolume=1            
            shift
            ;;		
		"--AnalysisDomainTime")
            AnalysisDomainTime=1
            shift            
            ;;
		"--AnalysisDomainFrequency")
            AnalysisDomainFrequency=1            
            shift
            ;;
		"--AnalysisDomainSpaceTime")
            AnalysisDomainSpaceTime=1            
            shift
            ;;
		"--AnalysisDomainTimeFrequency")
            AnalysisDomainTimeFrequency=1            
            shift
            ;;		
		"--methodAll")
            methodAll=1            
            shift
            ;;
		"--methodRidgel")
            methodRidgel=1            
            shift
            ;;
		"--methodElasticNet")
            methodElasticNet=1            
            shift
            ;;
		"--methodSlasso")
            methodSlasso=1            
            shift
            ;;
		"--methodSlassoNonNegative")
            methodSlassoNonNegative=1            
            shift
            ;;
		"--algorithmAll")
            algorithmAll=1            
            shift
            ;;
		"--algorithmAMNR")
            algorithmAMNR=1            
            shift
            ;;
		"--lambda")
            lambda=$2
            shift
            shift
            ;;
        "--saveAll")
            saveAll=1            
            shift
            ;;			
        "--output")
            output=$2
            shift
            shift
            ;; 						
         *)
            usage
            die "Unsupported option: $1"
    esac
done


echo InverseSolutions ${Voltage} ${LeadField} ${Laplacian} ${VoltageName} ${LeadFieldName} ${LaplacianName} "${AnatConstSurface} ${AnatConstVolume}" "${AnalysisDomainTime} ${AnalysisDomainFrequency} ${AnalysisDomainSpaceTime} ${AnalysisDomainTimeFrequency}" "${methodAll} ${methodRidgel} ${methodElasticNet} ${methodSlasso} ${methodSlassoNonNegative}" "${algorithmAll} ${algorithmAMNR}" ${lambda} ${saveAll} ${output}

InverseSolutions ${Voltage} ${LeadField} ${Laplacian} ${VoltageName} ${LeadFieldName} ${LaplacianName} "${AnatConstSurface} ${AnatConstVolume}" "${AnalysisDomainTime} ${AnalysisDomainFrequency} ${AnalysisDomainSpaceTime} ${AnalysisDomainTimeFrequency}" "${methodAll} ${methodRidgel} ${methodElasticNet} ${methodSlasso} ${methodSlassoNonNegative}" "${algorithmAll} ${algorithmAMNR}" ${lambda} ${saveAll} ${output}
