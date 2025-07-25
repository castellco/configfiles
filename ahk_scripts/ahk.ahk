#Warn  ; Enable warnings to assist with detecting common errors.
#Requires AutoHotkey 2.0+
#SingleInstance Force

;;;;;;; SHORTCUTS 
<^>!a:: Run "C:\Users\gcorn\AppData\Local\Programs\Anki\anki.exe"

<^>!c:: Run "C:\Program Files\Google\Chrome\Application\chrome.exe"

<^>!d::Run "C:\Program Files (x86)\DocFetcher\DocFetcher-8192_64-bit-Java.exe" ; alt gr + d = docfetcher 8gb heap

<^>!e::Run "C:\Program Files\Everything\Everything.exe"

<^>!f::Run "C:\Program Files\Mozilla Firefox\firefox.exe" ; alt gr + f = firefox

<^>!g::Run "C:\Users\gcorn\AppData\Local\GitHubDesktop\GitHubDesktop.exe"

<^>!k::Run "C:\Program Files (x86)\TickTick\TickTick.exe" ; alt + k = ticktick

<^>!n::Run "C:\Users\gcorn\AppData\Local\Programs\Notion\Notion.exe" ; alt + n = notion

<^>!r::Run "C:\Program Files\RStudio\rstudio.exe" ; alt + r = rstudio

<^>!t::Run "C:\Users\gcorn\AppData\Roaming\Telegram Desktop\Telegram.exe" ; alt + t = telegram

<^>!v::Run "C:\Users\gcorn\AppData\Local\Programs\Microsoft VS Code\Code.exe" ; alt + v = vscode


;;; USEFUL CHARACTERS

::td::{
  SendInput A_YYYY "-" A_MM "-" A_DD  
}

::ts::{
  SendInput A_YYYY "-" A_MM "-" A_DD "_" A_Hour "-" A_Min
}

; guion largo
<^>!-::{
    Send '{ASC 0151}'
}

; slash volteado
<^>!7::{
  Send '{ASC 92}'
}

; R everywhere
;!-::Send {ASC 60}{ASC 45}
;^+m::Send {ASC 37}{ASC 62}{ASC 37}
;;^!i::Send {ASC 96}{ASC 96}{ASC 96}

;; BACTICKS
<^>!}::{
  Send '{ASC 96}{ASC 96}{ASC 96}'
}

; TEXT EXPANDER

;;; PERSONAL DATA
::n1::Gissela
::n2::Carolina
::l1::Cornejo
::l2::Castellano
::fullname::Gissela Carolina Cornejo Castellano

::celesp::613582995
::celper::970524959
::mai::gissela.cornejo@pucp.edu.pe
::mai2::cor.castellano@gmail.com
::nienum::Y9892766C
::pasnum::119269208
::nussnum::28-1610667455

::lin::https://www.linkedin.com/in/castellco
::porlin::https://castellco.github.io/
::gitlin::https://github.com/castellco

;;;;;; Insertar code section with control + shift + R

$^+r::{
    win_id := 'ahk_id ' WinActive('A')
    total_str_len := 75
    ib := InputBox('Enter Section Name')
    if (ib.Result != 'OK')
        return
    str := '#' " " ib.Value " "
    while (StrLen(str) < total_str_len)
        str .= '-'
    WinActivate(win_id)
    WinWaitActive(win_id)
    clipbak := ClipboardAll()
    A_Clipboard := str
    Send('^v')
    Sleep(200)
    A_Clipboard := clipbak
}

;;; STUDIES

;;;;;; UC3M

::uc3::Universidad Carlos III de Madrid

::mucen::Master's degree in Computational Social Science
::mucenx::- Data analysis: statistics, machine learning, econometrics, survey methodology and social network analysis.`n- Computational tools: R programming, SQL, text mining, data visualization and web scraping.

::muces::Máster Universitario en Ciencias Sociales Computacionales
::mucesx::- Análisis de datos: estadística, machine learning, econometría, metodología de encuestas y análisis de redes sociales.`n- Herramientas computacionales: programación en R, SQL, minería de texto, visualización de datos y web scraping.

;;;;;; DIPLO PUCP DATA SCIENCE

::puces::Pontificia Universidad Católica del Perú (PUCP)
::pucen::Pontifical Catholic University of Peru
::ddses::Diplomatura de especialización en Ciencia de Datos para las Ciencias Sociales y la Gestión Pública
::ddsesx::- R y Python para el análisis de datos y machine learning.`n- SQL Server.`n- Análisis de datos geoespaciales con QGIS.

::ddsen::Diploma in Data Science for Social Science and Public Management
::ddsenx::- R and Python for data analysis and machine learning.`n- Database management with SQL Server.`n- Basic geospatial data analysis with QGIS.

;;;;;; DIPLO UNAM
::unaes::Universidad Nacional Autónoma de México (UNAM)
::unaen::National Autonomous University of Mexico (UNAM)
::dunaes::Diplomado Metodología y Técnicas de Investigación Aplicada
::dunaen::Diploma in Social Methodology and Applied Research Techniques


;;;;;; DIPLO ESAN
::hesan::ESAN Graduate School of Business
::desanes::Diploma en Especialización en Monitoreo y Evaluación de Programas y Proyectos
::desanen::Specialisation in Monitoring and evaluation of projects and programmes


;;;;;; COMDES
::cdes::Comunicación para el desarrollo
::cden::Major in Communication for Development

;;; EXPERIENCE

;;;;; World Vision


;;;;; Baldecash

;;;;;; Vestas
::vesp::Data management trainee
::vesenx::- Analyzed non-conformity reports to pinpoint top wind turbine quality issues.`n- Developed Power BI dashboards to monitor KPIs in real-time, eliminating sampling errors in audits and improving MED Data Quality Index by 5%.`n- Generated ad-hoc reports using R.`n- Introduced and coded new KPIs and metrics with DAX.

::vesesx::- Analizo los informes de no conformidad para identificar los principales problemas de calidad de las turbinas.`n- Mejoré el Data Quality Index en un 11% al desarrollar dashboards de Power BI para eliminar los errores de muestreo de las auditorías.`n- Genero informes ad-hoc con R.`n- Propongo y programo nuevos KPI y métricas con DAX.

;;;;;; CIES 
::hcies::Consorcio de Investigación Económica y Social (CIES)
::hcien::Economic and Social Research Consortium

::ciesp:: Gestora de bases de datos de monitoreo y evaluación
::ciesx::- Produje informes de KPIs financieros, operativos y de impacto para un proyecto de más de 7 000 usuarios.`n- Garanticé la validez de las herramientas de recopilación de datos.`n- Conseguí la aprobación del 100% de informes analíticos con 0 observaciones por parte del financista.

::cienp:: Monitoring and evaluation database manager
::cienx::- Produced financial, operational, and impact KPI reports for a project reaching 7,000+ beneficiaries.`n- Ensured data collection tools' validity.`n- Delivered analytics reports with 100% approval rate from UN funder.

;;;;;; HUAITA

::huaes::Docente e investigadora Marcela Huaita (exministra de la Mujer y docente PUCP)
::huaen::Professor Marcela Huaita (former Minister of Women and Vulnerable Populations)

::huaesp:: Asistente de investigación
::huaesx::- Colaboré con la Prof. Huaita (exministra peruana de Poblaciones Vulnerables) en consultorías de investigación para empresas y organizaciones del tercer sector.`n- Publiqué dos artículos en revistas indexadas como coautora.

::huaenp::Research assistant
::huaenx::- Engaged in social research consultancies for businesses and third-sector organizations under Prof. Huaita (former Peruvian minister).`n- Co-authored two published papers.

