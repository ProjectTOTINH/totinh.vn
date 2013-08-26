set a=%cd%
xcopy /s/y %a%\modules\application\templates %a%\public\js\modules\application\templates
coffee -c -o public/js/modules modules