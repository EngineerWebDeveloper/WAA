<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" type="text/css"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<style>
	.rwd-table{
		border: 1px solid black;
		background-color: mediumblue;
	}

</style>
<div class="container">
	<div class="row">

			<table class="rwd-table">
				<c:forEach items="${orders}" var="order">
					<tr>
					<th>order date  &nbsp;&nbsp;</th>
					<th>Client  &nbsp;&nbsp;</th>
					<th>product  &nbsp;&nbsp;</th>
					<th>Quantity  &nbsp;&nbsp;</th>
				</tr>
					<c:forEach items="${order.orderLines}" var="orderLine">

				<tr>
					<td data-th="Movie Title">${order.orderDate}  </td>
					<td data-th="Genre">${order.person.firstName}  </td>
					<td data-th="Year">${orderLine.product.productName}  </td>
					<td data-th="Gross">&nbsp;&nbsp; ${orderLine.quantity}  </td>
				</tr>


			</c:forEach>

			</c:forEach>
			</table>
	</div>
	<table>
		<tr>

			<th><a class="btn btn-info placeOrder"href="/login">Logout</a></th>
			<th><a class="btn btn-info placeOrder"href="/">Products</a></th>

		</tr>
	</table>

</div>
</body>
</html>