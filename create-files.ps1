$numberOfFiles = 7
$fileSizeInBytes = 1MB

for ($i = 1; $i -le $numberOfFiles; $i++) {
    $fileName = "File$i.txt"
    $filePath = Join-Path -Path $PWD -ChildPath $fileName

    # Generate random content for the file
    $content = Get-Random -Count $fileSizeInBytes -InputObject @(0..255) | ForEach-Object { [char]$_ }

    # Convert the content to bytes
    $contentBytes = [System.Text.Encoding]::Default.GetBytes($content)

    # Determine the number of repetitions needed to reach the desired file size
    $repetitions = [math]::Ceiling($fileSizeInBytes / $contentBytes.Length)

    # Create the content by repeating the bytes
    $fileContent = [System.Collections.ArrayList]::new()
    for ($j = 0; $j -lt $repetitions; $j++) {
        $fileContent.AddRange($contentBytes)
    }

    # Write the content to the file
    [System.IO.File]::WriteAllBytes($filePath, $fileContent.ToArray())

    Write-Host "Created file: $fileName"
}
