# convert-md-to-typst.ps1
# Converts every Markdown file in this folder to a Typst file,
# adds "// command: render" at the top,
# and replaces Pandoc's #horizontalrule with a Typst horizontal line.

$ErrorActionPreference = "Stop"

# Change this to $true if you want to include subfolders.
$IncludeSubfolders = $false

# Choose files.
if ($IncludeSubfolders) {
    $markdownFiles = Get-ChildItem -Recurse -File -Path *.md, *.markdown
} else {
    $markdownFiles = Get-ChildItem -File -Path *.md, *.markdown
}


if ($markdownFiles.Count -eq 0) {
    Write-Host "No Markdown files found."
    exit
}

foreach ($file in $markdownFiles) {
    $outputFile = Join-Path $file.DirectoryName ($file.BaseName + ".typ")

    Write-Host "Converting $($file.Name) -> $($file.BaseName).typ"

    pandoc $file.FullName -t typst -o $outputFile

    $content = Get-Content $outputFile -Raw

    # Replace Pandoc's #horizontalrule with a real Typst horizontal line.
    $content = $content -replace '#horizontalrule', '#line(length: 100%)'

    # Add render command at the top, but do not duplicate it if it is already there.
    if (-not $content.StartsWith("// command: render")) {
        $content = "// command: render`r`n`r`n" + $content
    }

    Set-Content $outputFile -Value $content
}

Write-Host "Done."
