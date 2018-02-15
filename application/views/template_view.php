<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="utf-8">
	<title>Список сотрудников</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css" />
    <script src="/js/jquery-3.2.1.min.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(document).ready(function(event){
		 $('#dismissal').on('click', function(e){
			 if ($(this).prop('checked')) {
				 $(this).val(1);
			 } else {$(this).val(0)}
			 $('form[name="filter"]').submit();
		 })
		 });

	</script>
</head>
<body>
<div class="header"></div>
<div class="body">
	<?php include 'application/views/'.$content_view; ?>
</div>
<div class="footer"></div>

</body>
</html>