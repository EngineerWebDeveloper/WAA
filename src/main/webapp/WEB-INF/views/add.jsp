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
<body>

<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<form autocomplete="off" action="/products/add"
				   method="post" class="form-horizontal" role="form">
				<h2>Product Form</h2>
				<div class="form-group">
					<div class="col-sm-9">
						<input type="text" name="productName" placeholder="productName" class="form-control" />
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-9">
						<input type="text" name="description" placeholder="description" class="form-control" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-9">
						<input type="text" name="price" placeholder="price" class="form-control" />
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-9">
						<select name="productType" class="form-control">
							<option value="DINNER">DINNER</option>
							<option value="LUNCH">LUNCH</option>
							<option value="BREAKFAST">BREAKFAST</option>
						</select>
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-9">
						<button type="submit" class="btn btn-primary btn-block">Save</button>
					</div>
				</div>
				<h3>${successMessage}</h3>
			</form>
		</div>
	</div>
</div>


</body>
</html>