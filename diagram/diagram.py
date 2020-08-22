# diagram.py
# Needs diagrams from pip and graphwiz installed
from diagrams import Cluster, Diagram
from diagrams.aws.security import  KMS
from diagrams.aws.integration import SQS

with Diagram("Simple Queue Service", show=False):
   KMS("Key") - SQS("Queue")
