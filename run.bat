@ECHO OFF
REM YYYYmmdd_HHMMSS %date:~-4%%date:~3,2%%date:~0,2%_%time:~0,2%%time:~3,2%%time:~6,2%
REM ddmmYYYY_HHMM %date:/=%_%time:~0,2%%time:~3,2%
@ECHO ON
SET datetime="~%date:~-4%%date:~3,2%%date:~0,2%_%time:~0,2%%time:~3,2%.txt"
IF DEFINED target_dir ( SET filename="%target_dir:"=%%datetime:"=%" )
IF NOT DEFINED target_dir ( SET filename="%~dp0%datetime:"=%" )
python "%~dp0parser.py" "figy fbg dfe eirl vbk eden xph cqqq feeu soxx pgj pnqi tan ibb ewi ewp" > %filename%
