<%@ tag language="java" pageEncoding="ISO-8859-1"%>

<%@ attribute name="id" required="true" %>
<%@ attribute name="val" required="true" %>


<input type="text" id="${id}" name="${id}" value="${val}"  />

<script type="text/javascript">
	$("#${id}").datepicker({changeYear: true , changeMonth: true, yearRange: "2010:2015", dateFormat:'dd/mm/yy'});
</script>
