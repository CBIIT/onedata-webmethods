<?xml version="1.0" encoding="UTF-8"?><DeploymentSets>
  <DeploymentSet name="myDeploymentSet" pluginGroup="false" pluginType="IS" sourceAlias="local" targetAlias="QA">
    <VarSubAssets>
      <VarSubAsset assetName="JDBC_Connections:onedata_wa" assetType="AdapterConnection">
        <attributeList>
          <attributes name="connectionManagerProperties">
            <attribute name="poolable" value=""/>
            <attribute name="minimumPoolSize" value=""/>
            <attribute name="maximumPoolSize" value="40"/>
            <attribute name="poolIncrementSize" value=""/>
            <attribute name="blockingTimeout" value=""/>
            <attribute name="expireTimeout" value=""/>
            <attribute name="startupRetryCount" value=""/>
            <attribute name="startupBackoffSecs" value=""/>
          </attributes>
          <attributes name="parameters">
            <attribute name="transactionType" value=""/>
            <attribute name="datasourceClass" value=""/>
            <attribute name="serverName" value="ncidb-q333-c.nci.nih.gov"/>
            <attribute name="user" value=""/>
            <attribute name="password" value="{AES}c2Yzn7TecrEg/joXB33JeQ=="/>
            <attribute name="databaseName" value="ONEDQA.nci.nih.gov"/>
            <attribute name="portNumber" value=""/>
            <attribute name="networkProtocol" value=""/>
            <attribute name="otherProperties" value=""/>
          </attributes>
        </attributeList>
      </VarSubAsset>
    </VarSubAssets>
  </DeploymentSet>
</DeploymentSets>
