/* ex0031.p */
define variable dia as integer format "9" initial 1
triggers:
on entry message 'Escolha as datas'.
end.
define variable ano as integer format "9999" initial 2000.
define variable ndias as character format "x(12)"
extent 7 initial ['Domingo','Segunda','Terca',
'Quarta','Quinta','Sexta',
'Sabado'].
define variable mes as character format "x(12)"
view-as combo-box list-items
'Janeiro', 'Fevereiro', 'Marco',
'Abril', 'Maio', 'Junho',
'Julho', 'Agosto', 'Setembro',
'Outubro', 'Novembro', 'Dezembro'
mouse-pointer 'glove' no-undo initial 'Novembro'.
update dia
ano
mes.
