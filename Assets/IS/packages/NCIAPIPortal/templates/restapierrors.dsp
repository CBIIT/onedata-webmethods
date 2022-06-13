                          <table cellspacing="0" cellpadding="0" summary="" bordercolor="orange" border="0">
                            <tr>
                              <td align="left" height="20" class="dataTablePrimaryLabel">Errored:  REST API Listing</td>
                            </tr>
                            <tr>
                              <td>
                                <table width="100%" class="dataTable" border="0" cellspacing="0" cellpadding="3" summary="Data Summary">
                                  <tr>
                                    <th align="center" scope="col" class="dataTableHeader">Rest API Descriptor</th>
                                  </tr>
                                  %loop apilist/restAPIerrorList%
                                  <tr class="dataRowLight">
                                    <td nowrap="off" class="dataCellText">%value%</td>
                                  </tr>
                                  %endloop%
                                </table>
                              </td>
                            </tr>
                          </table>


