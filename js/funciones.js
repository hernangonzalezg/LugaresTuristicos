    $(document).ready(function(){
   
        //funcion para listar los cecostos
        //
        var getlista = function (){
            var datax = {
                "Accion":"listar"
            }
            $.ajax({
                data: datax, 
                type: "GET",
                dataType: "json", 
                url: "controllers/controllerregiones.php", 
            })
            .done(function( data, textStatus, jqXHR ) {
                $("#listado").html("");
                if ( console && console.log ) {
                    console.log( " data success : "+ data.success 
                        + " \n data msg : "+ data.message 
                        + " \n textStatus : " + textStatus
                        + " \n jqXHR.status : " + jqXHR.status );
                }
                for(var i=0; i<data.datos.length;i++){
                                console.log('id: '+data.datos[i].regi_id + ' nombre: '+data.datos[i].regi_nombre);
                                var descrip= data.datos[i].regi_nombre;
                                textonuevo = descrip.substr(0,15);
                                    console.log(textonuevo.length);
                                fila ='<a href="lugares.html?id='+data.datos[i].regi_id+'&nombre='+data.datos[i].regi_nombre.replace("/ /g","_")+'"><div class="row"><div class="col-xs-4"><img width="100px" src="'+data.datos[i].regi_urlimagen+'"></div>';
                                fila +='<div class="col-xs-8">';
                                fila +='<div class="row"><div class="col-xs-12"><font size="5">'+data.datos[i].regi_nombre+'</font></div></div>';
                                fila +='<div class="row"><div class="col-xs-12"><font size="4">Region:'+data.datos[i].regi_ordinal+'</font></div></div>';
                                //fila +='<div class="row"><div class="col-xs-12"><font size="2">Bajada</font></div></div>';
                                //fila +='<div class="row"><div class="col-xs-12"><font size="2">Descripcion:'+textonuevo+'...</font></div></div>';
                                fila +='</div></div></a><br>';
                                $("#listado").append(fila);
                }
            })
            .fail(function( jqXHR, textStatus, errorThrown ) {
                if ( console && console.log ) {
                    console.log( " La solicitud getlista ha fallado,  textStatus : " +  textStatus 
                        + " \n errorThrown : "+ errorThrown
                        + " \n textStatus : " + textStatus
                        + " \n jqXHR.status : " + jqXHR.status );
                }
            });
        }
        getlista();
    });
   