<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="ContosoAds.CloudService" generation="1" functional="0" release="0" Id="ac6ade5e-8b13-4702-92e4-0e4d97f306bc" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="ContosoAds.CloudServiceGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="ContosoAds.Web:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/ContosoAds.CloudService/ContosoAds.CloudServiceGroup/LB:ContosoAds.Web:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="ContosoAds.Web:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/ContosoAds.CloudService/ContosoAds.CloudServiceGroup/MapContosoAds.Web:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="ContosoAds.Web:StorageConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/ContosoAds.CloudService/ContosoAds.CloudServiceGroup/MapContosoAds.Web:StorageConnectionString" />
          </maps>
        </aCS>
        <aCS name="ContosoAds.WebInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/ContosoAds.CloudService/ContosoAds.CloudServiceGroup/MapContosoAds.WebInstances" />
          </maps>
        </aCS>
        <aCS name="ContosoAds.Worker:ContosoAdsDbConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/ContosoAds.CloudService/ContosoAds.CloudServiceGroup/MapContosoAds.Worker:ContosoAdsDbConnectionString" />
          </maps>
        </aCS>
        <aCS name="ContosoAds.Worker:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/ContosoAds.CloudService/ContosoAds.CloudServiceGroup/MapContosoAds.Worker:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="ContosoAds.Worker:StorageConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/ContosoAds.CloudService/ContosoAds.CloudServiceGroup/MapContosoAds.Worker:StorageConnectionString" />
          </maps>
        </aCS>
        <aCS name="ContosoAds.WorkerInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/ContosoAds.CloudService/ContosoAds.CloudServiceGroup/MapContosoAds.WorkerInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:ContosoAds.Web:Endpoint1">
          <toPorts>
            <inPortMoniker name="/ContosoAds.CloudService/ContosoAds.CloudServiceGroup/ContosoAds.Web/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapContosoAds.Web:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/ContosoAds.CloudService/ContosoAds.CloudServiceGroup/ContosoAds.Web/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapContosoAds.Web:StorageConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/ContosoAds.CloudService/ContosoAds.CloudServiceGroup/ContosoAds.Web/StorageConnectionString" />
          </setting>
        </map>
        <map name="MapContosoAds.WebInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/ContosoAds.CloudService/ContosoAds.CloudServiceGroup/ContosoAds.WebInstances" />
          </setting>
        </map>
        <map name="MapContosoAds.Worker:ContosoAdsDbConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/ContosoAds.CloudService/ContosoAds.CloudServiceGroup/ContosoAds.Worker/ContosoAdsDbConnectionString" />
          </setting>
        </map>
        <map name="MapContosoAds.Worker:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/ContosoAds.CloudService/ContosoAds.CloudServiceGroup/ContosoAds.Worker/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapContosoAds.Worker:StorageConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/ContosoAds.CloudService/ContosoAds.CloudServiceGroup/ContosoAds.Worker/StorageConnectionString" />
          </setting>
        </map>
        <map name="MapContosoAds.WorkerInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/ContosoAds.CloudService/ContosoAds.CloudServiceGroup/ContosoAds.WorkerInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="ContosoAds.Web" generation="1" functional="0" release="0" software="C:\Git\ContosoAds\src\ContosoAds.CloudService\csx\Debug\roles\ContosoAds.Web" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="StorageConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;ContosoAds.Web&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;ContosoAds.Web&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;ContosoAds.Worker&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/ContosoAds.CloudService/ContosoAds.CloudServiceGroup/ContosoAds.WebInstances" />
            <sCSPolicyUpdateDomainMoniker name="/ContosoAds.CloudService/ContosoAds.CloudServiceGroup/ContosoAds.WebUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/ContosoAds.CloudService/ContosoAds.CloudServiceGroup/ContosoAds.WebFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
        <groupHascomponents>
          <role name="ContosoAds.Worker" generation="1" functional="0" release="0" software="C:\Git\ContosoAds\src\ContosoAds.CloudService\csx\Debug\roles\ContosoAds.Worker" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="-1" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <settings>
              <aCS name="ContosoAdsDbConnectionString" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="StorageConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;ContosoAds.Worker&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;ContosoAds.Web&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;ContosoAds.Worker&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/ContosoAds.CloudService/ContosoAds.CloudServiceGroup/ContosoAds.WorkerInstances" />
            <sCSPolicyUpdateDomainMoniker name="/ContosoAds.CloudService/ContosoAds.CloudServiceGroup/ContosoAds.WorkerUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/ContosoAds.CloudService/ContosoAds.CloudServiceGroup/ContosoAds.WorkerFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="ContosoAds.WebUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyUpdateDomain name="ContosoAds.WorkerUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="ContosoAds.WebFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyFaultDomain name="ContosoAds.WorkerFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="ContosoAds.WebInstances" defaultPolicy="[1,1,1]" />
        <sCSPolicyID name="ContosoAds.WorkerInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="f6ac6a21-2a87-4aed-a723-70e38a5be939" ref="Microsoft.RedDog.Contract\ServiceContract\ContosoAds.CloudServiceContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="3249330a-452e-4134-8985-f1537f152b53" ref="Microsoft.RedDog.Contract\Interface\ContosoAds.Web:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/ContosoAds.CloudService/ContosoAds.CloudServiceGroup/ContosoAds.Web:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>