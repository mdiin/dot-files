csharp-mode csharp-ts-mode

(class "public class " p n "{" n> p "}")
(pmeth "public " p " " p "(" p ")" n "{" n> p "}")
(elog "Console.Error.WriteLine($\"" p "\");")
(ilog "Console.Error.WriteLine($\"" (p "ident" identtoprint) ": {" (s identtoprint) "}\");")
