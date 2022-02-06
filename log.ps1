$ComputerMemory = Get-WmiObject -Class win32_operatingsystem -ErrorAction Stop
$total = ($ComputerMemory.TotalVisibleMemorySize)/(1024*1024)

while(1){
    $Processor = (Get-WmiObject -Class win32_processor -ErrorAction Stop | Measure-Object -Property LoadPercentage -Average | Select-Object Average).Average
    $ComputerMemory = Get-WmiObject -Class win32_operatingsystem -ErrorAction Stop    
    $memoriaLivre = ($ComputerMemory.FreePhysicalMemory)/(1024*1024)
    $memoriaUsada = ($ComputerMemory.TotalVisibleMemorySize - $ComputerMemory.FreePhysicalMemory)/(1024*1024)

    if(!(Test-Path 'log_uso_cpu_mem.csv')){
        echo 'CPU%,RAM_USADA,RAM_LIVRE,RAM_TOTAL' >> 'log_uso_cpu_mem.csv'
    }
    echo "${Processor}%,${memoriaUsada} GB,${memoriaLivre} GB,${total} GB" >> 'log_uso_cpu_mem.csv'
    Start-Sleep -Seconds 1
}