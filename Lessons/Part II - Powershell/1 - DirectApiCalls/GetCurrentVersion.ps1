$res = Invoke-WebRequest "https://app.simplement-e.com/api/ext/sys/version"
if ($res.StatusCode -eq 200) {
    $vers = $res.Content.Replace("""", "")
    Write-Host "Version de l'application en production : " $vers
}
else {
    Write-Host "Erreur"
}