/* ex0032.p */
define variable texto as character
view-as editor
inner-lines 20
inner-chars 60
scrollbar-vertical
scrollbar-horizontal
column-label 'Editor de Texto'
no-undo mouse-pointer "glove".
define variable meses as character format "x(12)"
view-as combo-box
list-items 'Janeiro','Fevereiro','Marco',
'Abril','Maio','Junho','Julho',
'Agosto','Setembro','Outubro',
'Novembro','Dezembro'
initial 'Maio'.
define variable salvar as logical label 'Salva Informacao'
view-as toggle-box initial yes format "Sim/Nao".
define variable dia as character
view-as selection-list
inner-lines 7 inner-chars 12
list-items 'Domingo','Segunda','Terca','Quarta',
'Quinta','Sexta','Sabado'
initial 'Terca'.
define variable ano as integer
view-as radio-set
radio-buttons "1998", 1998, "1999", 1999.
form texto
meses
dia
ano
salvar
with frame f-editor
title "Edicao de Texto"
row 2 centered overlay
view-as dialog-box
side-labels.
assign input frame f-editor texto:tooltip = 'Edite seu texto'
input frame f-editor meses:tooltip = 'Escolha um mes'
input frame f-editor dia:tooltip = 'Escolha um dia'
input frame f-editor ano:tooltip = 'Escolha um ano'
input frame f-editor salvar:tooltip = 'Salva informacao'.
update texto
meses
dia
ano
salvar
with frame f-editor.
message "Voce escolheu..." skip(1)
"Dia:" dia:screen-value skip
"Mes:" meses:screen-value skip
"Ano:" ano skip
"Salvar:" salvar skip
"Observacao:" texto
view-as alert-box.
