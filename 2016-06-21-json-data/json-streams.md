# JSON Streams
Usar cuando se tienen archivos grandes y se necesita hacer un preprocesamiento



```r
library(dplyr)

con_in <- file("data/licitaciones-sample.json")
x <- stream_in(con_in)
```

```
## opening file input connection.
```

```
##  Found 500 records... Found 1000 records... Found 1221 records... Imported 1221 records. Simplifying into dataframe...
```

```
## closing file input connection.
```

```r
names(x)
```

```
##  [1] "Fecha y Hora de Cierre del Proceso"                                
##  [2] "Cuantía a Contratar"                                               
##  [3] "Régimen de Contratación"                                           
##  [4] "Correo Electrónico"                                                
##  [5] "Tipo de Contrato"                                                  
##  [6] "Fecha y Hora de Apertura del Proceso"                              
##  [7] "Segmento"                                                          
##  [8] "documents"                                                         
##  [9] "Detalle y Cantidad del Objeto a Contratar"                         
## [10] "Grupo"                                                             
## [11] "Estado del Proceso"                                                
## [12] "Departamento y Municipio de Entrega Documentos"                    
## [13] "Departamento y Municipio de Ejecución"                             
## [14] "Creación de Proceso"                                               
## [15] "Tipo de Proceso"                                                   
## [16] "Departamento y Municipio de Obtención de Documentos"               
## [17] "Dirección Física de Obtención de Documentos del Proceso"           
## [18] "Dirección Física de Entrega de Documentos del Proceso"             
## [19] "Lugar de Audiencia de Aclaración de Pliegos"                       
## [20] "Convocatoria"                                                      
## [21] "Fecha y Hora de Audiencia Aclaración de Pliegos"                   
## [22] "Fecha y Hora de Audiencia Adjudicación"                            
## [23] "Nombre ó Razón Social del proponente seleccionado"                 
## [24] "Adjudicación"                                                      
## [25] "Calificación definitiva de los proponentes - Orden de elegibilidad"
## [26] "Lugar de Audiencia de Adjudicación"                                
## [27] "Motivo de Terminación Anormal Después de Convocado"                
## [28] "Fecha Terminación Anormal Después de Convocado"                    
## [29] "Terminación Anormal despues de Convocado"                          
## [30] "Fecha y Hora de Visita del Lugar Obra"                             
## [31] "Cuantía Definitiva del Contrato"                                   
## [32] "Estado del Contrato"                                               
## [33] "Celebración de Contrato"                                           
## [34] "País y Departamento/Provincia de ubicación del Contratista"        
## [35] "Identificación del Contratista"                                    
## [36] "Nombre o Razón Social del Contratista"                             
## [37] "Plazo de Ejecución del Contrato"                                   
## [38] "Nombre del Representante Legal del Contratista"                    
## [39] "Fecha de Inicio de Ejecución del Contrato"                         
## [40] "Dirección Física del Contratista"                                  
## [41] "Objeto del Contrato"                                               
## [42] "Fecha de Firma del Contrato"                                       
## [43] "Ubicación de la Sala de Consulta"                                  
## [44] "Identificación del Representante Legal"                            
## [45] "Porcentaje de Anticipo"                                            
## [46] "Valor Contrato Interventoría Externa"                              
## [47] "Liquidación de Contrato"                                           
## [48] "Fecha de Liquidación del Contrato"                                 
## [49] "Tipo de Terminación del Contrato"                                  
## [50] "Adición al contrato"                                               
## [51] "Destinación del Gasto"                                             
## [52] "Clase"                                                             
## [53] "Familia"                                                           
## [54] "Proceso descartado"                                                
## [55] "Fecha en que se Descartó el Proceso"                               
## [56] "Numero compromiso presupuestal"                                    
## [57] "Unidad/Subunidad ejecutora (SIIF)"                                 
## [58] "Fecha de Terminación del Contrato"                                 
## [59] "Origen de los recursos"                                            
## [60] "Terminación sin liquidar de Contrato"                              
## [61] "Motivo de Terminación Anormal Después de Celebrado"                
## [62] "Proceso Liquidado"
```

```r
con_out <- file("data/output.json", open = "wb")
stream_in(con_in, handler = function(df){
  d <- df %>% dplyr::filter(grepl("paz",`Detalle y Cantidad del Objeto a Contratar`))
  stream_out(d, con_out, pagesize = 100)
}, pagesize = 100)
```

```
## using a custom handler function.
## opening file input connection.
```

```
## Warning in open.connection(con, "rb"): connection is already open
```

```
## Error in readLines(con, n = pagesize, encoding = "UTF-8"): cannot read from this connection
```

```
## closing file input connection.
```

```r
close(con_out)
```

```
## Error in close.connection(con_out): invalid connection
```

```r
con_in <- file("data/output.json")
x <- stream_in(con_in)
```

```
## opening file input connection.
```

```
##  Imported 0 records. Simplifying into dataframe...
```

```
## closing file input connection.
```

```r
x
```

```
## data frame with 0 columns and 0 rows
```

