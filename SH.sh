file=${PWD##*/}
file=${file:-/}
mkdir $file
cd "$file"
dotnet new mvc -o "$file"
cd "$file"
dotnet add package Microsoft.EntityFrameworkCore.Tools
dotnet add package Microsoft.EntityFrameworkCore.SqlServer
cd ./
dotnet new sln --name $file
dotnet sln $file.sln add ./$file/$ile.csproj
cd "$file"
cd Models
touch Category.cs Product.cs
echo "namespace "$file".Models; 
public class Product{
 public int ProductId {get;set;} 
public string ProductName {get;set;}
}"  > Product.cs
echo "namespace "$file".Models;
 public class Category{
 public int CategoryId {get;set;}
 public string CategoryName {get;set;} 
public string Description {get;set;}
}"  > Category.cs




