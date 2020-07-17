function Foo ( [int[]]$a)
{
Write-Host "Parameter's data type is:"
$a.GetType().Name
}

Foo 1,2,3