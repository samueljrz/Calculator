main =
    do putStrLn "Escolha uma operação:"

       putStrLn " 1. Soma\n 2. Subtração\n 3. Multiplicação\n 4. Divisão"
       operacao <- getLine

       case operacao of
         "1" -> do
         		   putStrLn "Digite o primeiro número: "
       			   primeiro <- getLine

       			   putStrLn "Digite o segundo número: "
       			   segundo <- getLine

       			   putStrLn "Resultado: "
         		   print((read primeiro :: Float) + (read segundo :: Float))

         "2" -> do
         		   putStrLn "Digite o primeiro número: "
       			   primeiro <- getLine

       			   putStrLn "Digite o segundo número: "
       			   segundo <- getLine

       			   putStrLn "Resultado: "
         		   print((read primeiro :: Float) - (read segundo :: Float))

         "3" -> do
         		   putStrLn "Digite o primeiro número: "
       			   primeiro <- getLine

       			   putStrLn "Digite o segundo número: "
       			   segundo <- getLine

       			   putStrLn "Resultado: "
         		   print((read primeiro :: Float) * (read segundo :: Float))

         "4" -> do
         		   putStrLn "Digite o primeiro número: "
       			   primeiro <- getLine

       			   putStrLn "Digite o segundo número: "
       			   segundo <- getLine

       			   putStrLn "Resultado: "
         		   print((read primeiro :: Float) / (read segundo :: Float))

         _   -> putStrLn "Operação inválida"