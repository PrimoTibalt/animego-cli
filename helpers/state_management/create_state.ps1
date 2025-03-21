param(
	[Parameter(Mandatory, Position = 0)]
	[string]$animeName
)

if (Test-Path ./temp/state.json) {
	$currentState = Get-Content ./temp/state.json 
	if (-not [string]::IsNullOrEmpty($currentState)) {
		$currentJson = ConvertTo-Json $currentState
		if ($currentJson.name -eq $animeName) {
			return
		}
	}
}

$json = "{""name"": ""$animeName""}"
Set-Content ./temp/state.json $json