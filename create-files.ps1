$numberOfFiles = 7
$fileSizeInBytes = 1MB

for ($i = 1; $i -le $numberOfFiles; $i++) {
    $fileName = "File$i.txt"
    $filePath = Join-Path -Path $PWD -ChildPath $fileName

    # Generate random content for the file
    $content = Get-Random -Count $fileSizeInBytes -InputObject @(0..255) | ForEach-Object { [char]$_ }

    # Create the file with the specified content
    New-Item -Path $filePath -ItemType File -Value $content -Force

    Write-Host "Created file: $fileName"
}
