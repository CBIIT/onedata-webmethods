<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="1.0">
	
	<xsl:output method="xml" encoding="utf-8" indent="yes"/>
	
	<xsl:param name="deployerHost"/>
	<xsl:param name="deployerPort"/>
	<xsl:param name="deployerUsername"/>
	<xsl:param name="deployerPassword"/>
	
	<xsl:param name="repoName"/>
	<xsl:param name="repoPath"/>
	<xsl:param name="projectName"/>
        <xsl:param name="isTransactionalDeployment"/>
		
	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()" />
		</xsl:copy>
	</xsl:template>
	
	<xsl:template match="DeployerSpec/DeployerServer">
		<DeployerServer>
			<host><xsl:value-of select="$deployerHost"/>:<xsl:value-of select="$deployerPort"/></host>
			<user><xsl:value-of select="$deployerUsername"/></user>
			<pwd><xsl:value-of select="$deployerPassword"/></pwd>
		</DeployerServer>
	</xsl:template>

	<xsl:template match="DeployerSpec/Environment/Repository">
		<Repository>
			<xsl:apply-templates select="@* | *" />
			
			<repalias>
			<xsl:attribute name="name"><xsl:value-of select="$repoName"/></xsl:attribute>
				<type>FlatFile</type>
				<urlOrDirectory><xsl:value-of select="$repoPath"/></urlOrDirectory>
				<Test>true</Test>
			</repalias>
	
		</Repository>
	</xsl:template>
	
	
	<xsl:template match="DeployerSpec/Projects">
		<Projects>
			<xsl:apply-templates select="@* | *" />
			
			<Project description="" overwrite="true" type="Repository">
			<xsl:attribute name="name"><xsl:value-of select="$projectName"/></xsl:attribute>			
				<ProjectProperties>
					<Property name="projectLocking">false</Property>
					<Property name="concurrentDeployment">true</Property>
					<Property name="ignoreMissingDependencies">true</Property>
					<Property name="isTransactionalDeployment"><xsl:value-of select="$isTransactionalDeployment"/></Property>
				</ProjectProperties>
				<DeploymentSet autoResolve="full" description="" name="myDeploymentSet">
				<xsl:attribute name="srcAlias"><xsl:value-of select="$repoName"/></xsl:attribute>

					<Composite displayName="" name="*" type="*">
						<xsl:attribute name="srcAlias"><xsl:value-of select="$repoName"/></xsl:attribute>
                                        </Composite> 
				</DeploymentSet>
				
				<DeploymentMap description="" name="myDeploymentMap"/>			
				<MapSetMapping mapName="myDeploymentMap" setName="myDeploymentSet">								
					<alias type="IS">IS</alias>
				</MapSetMapping>	
				<DeploymentCandidate description="" mapName="myDeploymentMap" name="myDeployment"/>
			</Project>

		</Projects>		
	</xsl:template>

</xsl:stylesheet>
