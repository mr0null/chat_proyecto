1. Elegí una carpeta para tus proyectos

Por ejemplo:

mkdir -p ~/Proyectos
cd ~/Proyectos
2. Crear una solución
dotnet new sln -n ForoChat

Una solución (.sln) es como una carpeta lógica que puede contener varios proyectos. Por ahora tendremos uno solo, pero más adelante puede haber varios.

3. Crear la Web API
mkdir src
cd src

dotnet new webapi -n ForoChat.Api
4. Agregar el proyecto a la solución

Volvé a la carpeta de la solución:

cd ..

Y ejecutá:

dotnet sln add src/ForoChat.Api/ForoChat.Api.csproj
