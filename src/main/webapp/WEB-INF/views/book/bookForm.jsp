
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url var="actionUrl" value="/save" />
<script type="text/javascript" src='<c:url value="/resources/lib/jquery/validateForm.js"/>'></script>
<form:form id="bookForm" commandName="book" method="post"
       action="${actionUrl}" class="form-horizontal">

     <fieldset>
          <legend></legend>

          <div class="form-group">
              <label for="name" class="col-sm-4 control-label">Nombre</label>
              <div class="col-sm-8">
              	<form:input path="name" placeholder="Nombre del Libro" class="form-control" />
              </div>	
          </div>
          
          <div class="form-group">
               <label for="code" class="col-sm-4 control-label">Codigo</label>
               <div class="col-sm-8">
               	<form:input path="code" placeholder="Codigo" maxlength="15"  class="form-control"/>
               </div>
          </div>
          <div class="form-group">
              <label for="price" class="col-sm-4 control-label">Precio</label>
              <div class="col-sm-8">
              	<form:input path="price" placeholder="Precio" maxlength="10"  class="form-control"/>
              </div>
          </div>
          <div class="form-group">
              <label for="authors" class="col-sm-4 control-label">Autor</label>
              <div class="col-sm-8">
              	<form:input path="authors" placeholder="Autor/es"  class="form-control"/>
              </div>
          </div>
          <div class="form-group">
              <label for="publisher" class="col-sm-4 control-label">Editorial</label>
              <div class="col-sm-8">
              	<form:input path="publisher" placeholder="Editorial"  class="form-control"/>
              </div>
          </div>
          <div class="form-group">
              <label for="publishedOn" class="col-sm-4 control-label">Fecha de Publicacion</label>
              <div class="col-sm-8">
              	<form:input path="publishedOn" placeholder="YYYY-MM-DD" class="datepicker form-control"/>
              </div>
          </div>

          <form:input path="id" type="hidden" />
          
      </fieldset>
</form:form>