CoPQ Actual Color = 
VAR CurrentMetric = SELECTEDVALUE('_MetricsTargets'[Metric ordered])
VAR CurrentMonth = SELECTEDVALUE('Date'[Year Month])

// Solo aplicamos color a la fila de Actual
IF(CurrentMetric <> "2. CPX (CSO) CoPQ (m€) - Actual", 
    BLANK(),
    
    // Obtenemos el valor Target para este mes
    VAR TargetValue = 
        CALCULATE(
            [CoPQ Target],
            FILTER(
                ALL('_MetricsTargets'),
                '_MetricsTargets'[Metric ordered] = "1. CPX (CSO) CoPQ (m€) - Target" &&
                '_MetricsTargets'[Month] = EOMONTH(MAX('Date'[Date]), 0)
            )
        )
    
    // Obtenemos el valor Actual para este mes
    VAR ActualValue = [Cumulative Sum of Total CoPQ in m EUR for CPX]
    
    // Aplicamos la lógica de colores
    RETURN
        IF(ISBLANK(ActualValue), BLANK(),
            IF(TargetValue >= ActualValue, 1,  // Verde
                0                               // Rojo
            )
        )
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



