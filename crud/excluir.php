


<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Produtos -Admin</title>
   <link rel="stylesheet" href="../index.css">
</head>
<body>
   <script src="https://www.w3schools.com/lib/w3.js"></script>

   <div w3-include-html="header.php"></div>
      <script>
         w3.includeHTML();
      </script>

   <main class="main excluir">
      <form action="adiciona.php" method="post" class="adiciona">
         <h1>Tem certeza que quer excluir o produto: </h1>
         <button type="submit" class="btnExcluir">Excluir</button>
      </form>
   </main>

   <script src="../index.js"></script>
</body>
</html>