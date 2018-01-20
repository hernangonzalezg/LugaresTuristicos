    function getParameterByName(name) {
        name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
        var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
        return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
    }
    var id = getParameterByName('id');
    var nombre = getParameterByName('nombre');

    function verLugares(){
        var datay = {"idRegion": id,
                     "Accion":"obtener"
                    };
        console.log(datay);
        $.ajax({
            data: datay, 
            type: "POST",
            dataType: "json", 
            url: "controllers/controllerregiones.php",
        })
        .done(function(data,textStatus,jqXHR ) {
            if ( console && console.log ) {
                console.log( " data success : "+ data.success 
                    + " \n data msg : "+ data.message 
                    + " \n textStatus : " + textStatus
                    + " \n jqXHR.status : " + jqXHR.status );
            }
            for(var i=0; i<data.datos.length;i++){
                console.log('id: '+data.datos[i].lugares_id + ' nombre: '+data.datos[i].lugares_nombre);
                //var descrip= data.datos[i].regi_nombre;
                //textonuevo = descrip.substr(0,15);
                //console.log(textonuevo.length);
                //fila ='<a href="lugares.html?id='+data.datos[i].regi_id+'"><div class="row"><div class="col-xs-4"><img width="100px" src="'+data.datos[i].regi_urlimagen+'"></div>';
                fila ='<tr><td width="50%"><a href="lugaresDescripcion.html?id='+data.datos[i].lugares_id+'"><img width="70px" src="'+data.datos[i].lugares_urlimagen+'"></div></td>';
                fila +='<td align="center">'+data.datos[i].lugares_nombre+'</td></tr>';
                $("#listadoL").append(fila);
            
            }
             $("#titulo").append('<h1 class="titulo">'+nombre.replace(/_/g," ")+'</h1>');

        })
        .fail(function( jqXHR, textStatus, errorThrown ) {
            if ( console && console.log ) {
                console.log( " La solicitud ha fallado,  textStatus : " +  textStatus 
                    + " \n errorThrown : "+ errorThrown
                    + " \n textStatus : " + textStatus
                    + " \n jqXHR.status : " + jqXHR.status );
            }
        });
    }
    verLugares();
   /* $(document).ready(function(){
        //funcion para listar los cecostos
        var getlista = function (){
            var datax = {
                "Accion":"listar"
            }
            $.ajax({
                data: datax, 
                type: "GET",
                dataType: "json", 
                url: "controllers/controllercceleste.php", 
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
                                //$.each(data.datos[i], function(k, v) { console.log(k + ' : ' + v); });
                                console.log('id: '+data.datos[i].cc_id + ' nombre: '+data.datos[i].cc_nombre);
                                var descrip= data.datos[i].cc_descripcion;
                                textonuevo = descrip.substr(0,15);
                                    console.log(textonuevo.length);
                                fila ='<a href="opcion1.html?id='+data.datos[i].cc_id+'"><div class="row"><div class="col-xs-4"><img src="'+data.datos[i].cc_urlimagens+'"></div>';
                                fila +='<div class="col-xs-8">';
                                fila +='<div class="row"><div class="col-xs-12"><font size="5">'+data.datos[i].cc_nombre+'</font></div></div>';
                                fila +='<div class="row"><div class="col-xs-12"><font size="4">Categoria:'+data.datos[i].cc_categoria_nombre+'</font></div></div>';
                                //fila +='<div class="row"><div class="col-xs-12"><font size="2">Bajada</font></div></div>';
                                fila +='<div class="row"><div class="col-xs-12"><font size="2">Descripcion:'+textonuevo+'...</font></div></div>';
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
    });*/
   