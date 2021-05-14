## Introduction to HDInsight
### PySpark
* Prerequisites: An Spark cluster in HDInsight
* Create an Spark Cluster HDInsight in Microsoft Azure
    * From Azure Home Portal
    * Click on Create a new resourse 
    * Under Analytics select Azure HDInsight and click on Create
    * Enetr the basic information in basic tab of HDInsight
    * For Cluster Type Select Spark in basics tab of HDInsight
    * Enter the cluster credentials and make sure that the details enetered are unique
    * Under Storage Tab, You can either create an Azure Storage by enetering the basic detials or you can also use an existing Azure Blob Storage
        * Make sure that there is a default container if you are using an already existing Blob Storage
    * Under Configuration + Procing Tab choose Choose your Number of Head Nodes, Zookeeper Nodes and Worker Node According to you Specifications required
    * Click on Review + Create and wait until validation is over and then Click on Create
    * Under Your newly create HDInsight Cluster choose Jupyter Notebook Create a new Pyspark ipynb file to start working on Data Cleaning or EDA

### HIVE (HQL)
* Prerequisites: An Exisiting HDIsight Cluster and an Storage Account Connected to the Cluster
* From the exisiting HDInsight account under settings tab select SSH + Cluster login
    * Select the appropriate HostName and copy ssh client id
    * Run the client id in eaither windows cmd or in git bash
    * Login to your client by entering the password when you created the HDInsight Cluster under the Cluster Credentials Section
    * Start working on HQL commands by creating an HQL file
    * To get the outputs from the entered HQL file
        * beeline -u 'jdbc:hive2://localhost:10001/;transportMode=http' -f <filename.hql>
	* You can also query your results to you Azure Storage account by: 
            * insert overwrite directory wasb:///<directory within the default container> <select clause from ...>
        * You can also save the Output of the hql file directly to a text file by
            * beeline -u 'jdbc:hive2://localhost:10001/;transportMode=http' -f <filename.hql> >> <outputfile.txt>
 
#### Reference
* https://docs.microsoft.com/en-us/azure/machine-learning/team-data-science-process/move-hive-tables
* https://www.youtube.com/watch?v=tYr2AVdCOzM
* https://docs.microsoft.com/en-us/azure/hdinsight/hadoop/apache-hadoop-use-hive-beeline
* https://docs.microsoft.com/en-us/azure/hdinsight/hdinsight-hadoop-provision-linux-clusters
* https://docs.microsoft.com/en-us/azure/hdinsight/hdinsight-overview#cluster-types-in-hdinsight
