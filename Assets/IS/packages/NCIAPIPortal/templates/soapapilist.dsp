                          <table cellspacing="0" cellpadding="0" summary="" bordercolor="orange" border="0">
                            <tr>
                              <td align="left" height="20" class="dataTablePrimaryLabel">SOAP API Listing</td>
                            </tr>
                            <tr>
                              <td>
                                <table width="100%" class="dataTable" border="0" cellspacing="0" cellpadding="3" summary="Data Summary">
                                  <tr>
                                    <th align="center" scope="col" class="dataTableHeader">Title</th>
                                    <th align="center" scope="col" class="dataTableHeader">Version</th>
                                    <th align="center" scope="col" class="dataTableHeader">Host</th>
                                    <th align="center" scope="col" class="dataTableHeader">BasePath</th>
                                    <th align="center" scope="col" class="dataTableHeader">Schemes</th>
                                    <th align="center" scope="col" class="dataTableHeader">Consumes</th>
                                    <th align="center" scope="col" class="dataTableHeader">Produces</th>
                                    <th align="center" scope="col" class="dataTableHeader">WSDL Document</th>
                                  </tr>
                                  %loop apilist/soap%
                                  <tr class="dataRowLight">
                                    <td nowrap="off" class="dataCellText">%value info/title%</td>
                                    <td nowrap="off" class="dataCellText">%value info/version%</td>
                                    <td nowrap="off" class="dataCellText">%value host%</td>
                                    <td nowrap="off" class="dataCellText">%value basePath%</td>
                                    <td nowrap="off" class="dataCellText">
                                      %loop schemes%
                                      %value schemes%<br>
                                      %endloop%
                                    </td>
                                    <td nowrap="off" class="dataCellText">
                                      %loop consumes%
                                      %value consumes%<br>
                                      %endloop%
                                    </td>
                                    <td nowrap="off" class="dataCellText">
                                      %loop produces%
                                      %value produces%<br>
                                      %endloop%
                                    </td>
                                    <td nowrap="off" class="dataCellText"><a href="%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/nciapiportal.flowservices/getSwagger?radName=%value descriptor%"><img src="%value /serverInfo/protocol%://%value /serverInfo/host%/NCIAPIPortal/icons/swagger.png" height="29px"></a></td>
                                  </tr>
                                  %endloop%
                                </table>
                              </td>
                            </tr>
                          </table>
