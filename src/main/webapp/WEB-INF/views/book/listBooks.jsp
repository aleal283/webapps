 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" %>

<html>
<head>
<title>Lista de Libros</title>


<link rel="stylesheet" href='<c:url value="/resources/lib/bootstrap-3.3.6/css/bootstrap.min.css"/>'>

<link rel="stylesheet" href='<c:url value="/resources/lib/jquery/jquery-ui-1.10.4.css"/>'>
<style type="text/css">
  th {
       text-align: left;
  }
  .error{
  	color:red;
  }
  

</style>
</head>

<body>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
   <div style="width: 95%; margin: 0 auto;">
       
        <div id="bookDialog" style="display: none;">
            <%@ include file="bookForm.jsp"%>
        </div>

        <h1>Lista de Libros</h1>

        <button class="btn btn-primary" onclick="addBook()">
            <i class="fa fa-plus"></i> Agregar Libro
         </button>
         <br>
         <table class="table table-striped">
            <thead>
               <tr>
                  <th width="4%">S.N</th>
                  <th width="12%">Nombre</th>
                  <th width="12%">Codigo</th>
                  <th width="12%">Precio</th>
                  <th width="12%">Autor/es</th>
                  <th width="12%">Editorial</th>
                  <th width="12%">Fecha de Publicacion</th>
                  <th width="12%"></th>
               </tr>
            </thead>
            <tbody>
               <c:forEach items="${bookList}" var="book" varStatus="loopCounter">
               <tr>
                   <td><c:out value="${loopCounter.count}" /></td>
                   <td><c:out value="${book.name}" /></td>
                   <td><c:out value="${book.code}" /></td>
                   <td><c:out value="${book.price}" /></td>
                   <td><c:out value="${book.authors}" /></td>
                   <td><c:out value="${book.publisher}" /></td>
                   <td><c:out value="${book.publishedOn}" /></td>

                   <td>
                     <nobr>
                        <button onclick="editBook(${book.id});"
                                class="btn btn-warning">
                             <i class="fa fa-pencil"></i> Editar
                        </button>

                        <a href="${contextPath}/delete/${book.id}" class="btn btn-danger" 
                        	onclick="return confirm('Estas seguro que deseas eliminar este registro?');">
                             <i class="fa fa-times"></i>Borrar
                        </a>
                      </nobr>
                   </td>
                </tr>
                </c:forEach>
            </tbody>
         </table>
     </div>

     
	<script type="text/javascript"
		src='<c:url value="/resources/lib/jquery/jquery-1.10.2.js"/>'></script>
	<script type="text/javascript"
		src='<c:url value="/resources/lib/jquery/jquery-ui-1.10.4.custom.js"/>'></script>
	<script type="text/javascript"
		src='<c:url value="/resources/lib/jquery/jquery.ui.datepicker.js"/>'></script>
	<script type="text/javascript" 
		src='<c:url value="/resources/lib/bootstrap-3.3.6/js/bootstrap.min.js"/>'></script>
	<script type="text/javascript"
		src='<c:url value="/resources/js/js-for-listBooks.js"/>'></script>
	<script type="text/javascript" src='<c:url value="/resources/lib/jquery/jquery.validate.min.js"/>'></script>
</body>
</html> 