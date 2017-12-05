 Param
    (        
        [Parameter(Mandatory=$true,
                   Position=0)]
        [string]$Param1, 
        [Parameter(Mandatory=$true,
                   Position=1)]
        [string]$Param2, 
        [Parameter(Position=2)]
        [string]$Param3, 
        [string]$RabbitUrl = "your_rabbitMQ_url",
        [string]$Username = "your_user", 
        [string]$Password = "your_password"
    )
function Main
{
 $rabbitCred = New-Object System.Management.Automation.PSCredential($Username, (ConvertTo-SecureString $Password -AsPlainText -Force) )
 $rabbitCluster = Get-RabbitMQOverview -BaseUri $RabbitUrl -Credentials $rabbitCred

 if ($Param3) 
 {
   return $rabbitCluster.$Param1.$Param2.$Param3
 }
 else 
 {
   return $rabbitCluster.$Param1.$Param2
 }
}
Main