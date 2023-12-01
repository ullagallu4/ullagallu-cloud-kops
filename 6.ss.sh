#!/bin/bash
kops edit ig --name=ullagallu.cloud nodes-ap-south-1a &&
kops edit ig --name=ullagallu.cloud control-plane-ap-south-1a &&
kops update cluster --name=ullagallu.cloud --yes --admin 
