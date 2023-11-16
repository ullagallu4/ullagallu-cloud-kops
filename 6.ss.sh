#!/bin/bash
kops edit ig --name=$NAME nodes-ap-south-1a &&
kops edit ig --name=$NAME control-plane-ap-south-1a &&
kops update cluster --name $NAME --yes --admin 
