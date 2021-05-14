## HIVE (HQL)
* Prerequisites: An Exisiting HDIsight Cluster and an Storage Account Connected to the Cluster
* From the exisiting HDInsight account under settings tab select SSH + Cluster login
    * Select the appropriate HostName and copy ssh client id
    * Run the client id in eaither windows cmd or in git bash
    * Login to your client by entering the password when you created the HDInsight Cluster under the Cluster Credentials Section
    * Start working on HQL commands by creating an HQL file
    * To get the outputs from the entered HQL file
        * beeline -u 'jdbc:hive2://localhost:10001/;transportMode=http' -f <filename.hql>
	* You can also query your results to you Azure Storage account by 
            * insert overwrite directory wasb:///<directory within the default container> <select clause from ...>
        * You can also save the Output of the hql file directly to a text file by
            * beeline -u 'jdbc:hive2://localhost:10001/;transportMode=http' -f <filename.hql> >> <outputfile.txt>
 
