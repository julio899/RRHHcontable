<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Aplicacion RRHH</title>
	<link rel="stylesheet" href="<?php echo base_url().'bootstrap/bootstrap.cosmo.css';?>">

	<!-- Js -->
	<script src="<?php echo base_url().'js/jquery-1.11.1.min.js';?>"></script>
	<script src="<?php echo base_url().'js/bootstrap.js';?>"></script>
	<style type="text/css" media="screen">
		div.cabecera{
			height: 80px;
		}

    table tr td.izquierda {
    text-align: left;
    }
    table tr td.derecha {
    text-align: right;
    }

    table tr td.borde-derecho {
    border-right: inset;
    }

    table tr td.borde-izquierdo {
    border-right: dashed;
    border-width: 1px;
    }
    .table > tbody > tr > td{
      padding: 4px;
    }
    a.bg-naranja:hover{
      color:white;
      /*font-style:oblique;*/
      font-weight: bold;
      background-color: orange;
    }
    a.bg-azul:hover{
      color:white;
      background-color: #2098cd;
    }
    a.bg-silver:hover{
      color:black;
      font-weight: bold;
      background-color: silver;
    }
    a.bg-verde:hover{
      color:white;
      font-weight: bold;
      background-color: #3fb618;
    }

    a.bg-rojo:hover{
      color:white;
      font-weight: bold;
      background-color: red;
    }
    a.derecha{
      float: right;
    }
.bs-callout {
    padding: 20px;
    margin: 20px 0px;
    border-width: 1px 1px 1px 5px;
    border-style: solid;
    border-color: #EEE;
    -moz-border-top-colors: none;
    -moz-border-right-colors: none;
    -moz-border-bottom-colors: none;
    -moz-border-left-colors: none;
    border-image: none;
    border-radius: 3px;
}

div.bs-callout-warning {
    border-left-color: #F0AD4E;
}

	</style>

</head>
<body>

<div class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <a href="" class="navbar-brand">RRHH</a>
          <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        <div class="navbar-collapse collapse" id="navbar-main">
          <ul class="nav navbar-nav">
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="themes">Seleccionar Compa&ntilde;ia <span class="caret"></span></a>
              <ul class="dropdown-menu" aria-labelledby="themes">
                <!--
                <li><a href="#">COMPACTO</a></li>
                <li><a href="#">DIDECO</a></li>
                <li><a href="#">DEIMPORT</a></li>-->
                <?php
                	foreach ($this->config->config['empresas'] as $key => $value) {
                		echo '<li><a href="'.base_url().index_page().'/usuario/selecionar_empresa/'.$this->config->config['empresas'][$key]['cod'].'">'.$this->config->config['empresas'][$key]['cod'].' - '.$this->config->config['empresas'][$key]['name'].'</a></li>';
                	}
                ?>
                <li class="divider"></li>
                <li><a href="#">Crear Nueva</a></li>
                </ul>
            </li>
            <li>
              <a href="#">AYUDA</a>
            </li>
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="download">USUARIO <span class="caret"></span></a>
              <ul class="dropdown-menu" aria-labelledby="download">
                <li><a href="#">PERFIL</a></li>
                <li><a href="#">ACTUALIZAR DATOS</a></li>
                <li class="divider"></li>
                <li><a href="">HISTORIAL</a></li>
              </ul>
            </li>
          </ul>

          <ul class="nav navbar-nav navbar-right">
            <li class="bg-cierre"><p><a href="<?php echo base_url().index_page().'/usuario/cerrar_sesion';?>" class="btn btn-danger bg-cierre">Cerrar Sesion</a></p></li>
          </ul>

        </div>
      </div>
    </div>

<div class="container cabecera"></div>
