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
                fila ='<tr><td width="50%"><a href="lugaresDescripcion.html?id='+data.datos[i].lugares_id+'"><img width="150px" src="'+data.datos[i].lugares_urlimagen+'"></div></td>';
                fila +='<td align="center"><h1 class="titulo">'+data.datos[i].lugares_nombre+'</h1></td></tr>';
                $("#listadoL").append(fila);
            
            }
             $("#titulo").append('<h1 class="titulo">'+nombre.replace(/_/g," ")+'</h1>');
             $("#titulo").append('</br>');

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