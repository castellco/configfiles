Color Format CoPQ Actual vs Target = 
VAR _metric = SELECTEDVALUE('_MetricsTargets'[Metric ordered])
VAR _month = SELECTEDVALUE('Date'[Date])  -- Asegúrate de usar una columna de tipo fecha real
VAR _target = 
    CALCULATE(
        SUM('_MetricsTargets'[Value]),
        _MetricsTargets[Target or actual] = "Target",
        _MetricsTargets[Function] = "CPX",
        _MetricsTargets[Month] = _month
    )
VAR _actual = 
    CALCULATE(
        SUM('_MetricsTargets'[Value]),
        _MetricsTargets[Target or actual] = "Actual",
        _MetricsTargets[Function] = "CPX",
        _MetricsTargets[Month] = _month
    )
RETURN
    IF(
        _metric = "2. CPX (CSO) CoPQ (m€) - Actual",
        IF(_actual <= _target, 1, -1),
        BLANK()
    )

# configfiles

RConsole descargarlo en Home: "C:\Users\Carolina\"

.gitignore también.

Rprofile.site descargarlo en "C:\Program Files\R\R-4.2.2\etc"


.gitignore que trackea solo R, Rmd, md e ipynb extraído de [acá](https://stackoverflow.com/questions/8024924/gitignore-ignore-all-files-then-recursively-allow-foo/8025106#8025106)


## Vscode
The `keybindings` and the `settings` json files are from Vscode, updated 2023-02-05. Should be placed at `C:\Users\Carolina\AppData\Roaming\Code\User`.

## Rstudio
iplastic.rstheme reemplazarlo en `C:\Program Files\RStudio\resources\app\resources\themes`



