#!/bin/sh

sleep 1

SENSORY_FILE="/usr/lib/sensory-alexa/lib/libsnsr.a"

echo ""

echo "================================================================================"

echo ""
echo ""
echo "================================================================================="
echo " Welcome to NXP i.MX for AVS SDK                                        "
echo ""
if [ ! -d "/etc/alexa_sdk/booted" ]
then
 echo " To setup your AVS Environment:                                        "
 echo " - Go to Alexa_SDK directory and run the Setup AVS script:             "
 echo ""
 echo "      cd ~/Alexa_SDK                                                   "
 echo "      ./setupAVS.sh                                                    "
 echo ""
 echo "  ** Please enable the Network access by Ethernet/Wifi **              "
 echo ""
 echo "================================================================================="
else 
 echo " You are all set                                                        "
 echo " - To run AVS Sample APP:                                               "
 echo " "
 echo "   cd ~/Alexa_SDK/avs-sdk-client/SampleApp/src/                         "
 echo ""
 if [ -e $SENSORY_FILE ]
 then
  echo "   TZ=UTC ./SampleApp ../../Integration/AlexaClientSDKConfig.json \   "
  echo "   ../../Integration/inputs/SensoryModels/ DEBUG9                     "
 else
  echo "   TZ=UTC ./SampleApp ../../Integration/AlexaClientSDKConfig.json \   "
  echo "   DEBUG9                                                             "
 fi
  echo ""
fi
  echo "================================================================================="


