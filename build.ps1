$msbuild = join-path -path (Get-ItemProperty "HKLM:\software\Microsoft\MSBuild\ToolsVersions\14.0")."MSBuildToolsPath" -childpath "msbuild.exe"
&$msbuild WinFormAnimation\WinFormAnimation.csproj /t:Build /t:Package /p:Configuration="Release"