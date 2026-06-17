# 1. Define the compiler path
$NewPath = "C:\Program Files\CodeBlocks\MinGW\bin"

# 2. Get the current user-level Path
$UserPath = [Environment]::GetEnvironmentVariable("Path", "User")

# 3. Check if the path already exists
if ($UserPath -split ';' -contains $NewPath) {
    Write-Host "The path '$NewPath' is already in your User Path." -ForegroundColor Yellow
} else {
    # 4. Append the new path
    $UpdatedPath = "$UserPath;$NewPath"
    
    # 5. Save the updated path permanently
    [Environment]::SetEnvironmentVariable("Path", $UpdatedPath, "User")
    
    Write-Host "Successfully added '$NewPath' to your User Path!" -ForegroundColor Green
}
