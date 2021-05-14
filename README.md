## PySpark
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
