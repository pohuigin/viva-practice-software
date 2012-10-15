pro run_viva_prep

pnames=['paul','eamo','pietro','neal','aidan','eoin']
nname=n_elements(pnames)

names=findgen(nname)

rand=randomu(seed,nname)
ss=sort(rand)

;print,names[ss]

fqindex='./viva_questions.txt'

readcol,fqindex,questions,delim='§',form='(A)'

qind=findgen(n_elements(questions))

qrand=randomu(seed,n_elements(qind))
qss=sort(qrand)

for i=0,n_elements(qind)-1 do begin
print,'person index=',(names[ss])[i mod nname],pnames[(names[ss])[i mod nname]]
print,questions[qss[i]]
x=''
read,x
endfor

stop

end