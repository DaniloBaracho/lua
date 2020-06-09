function reavaliacao(ab1, ab2, media)
    if(media>=7) then
        print(media)
        print("Aprovado")
    elseif(ab1>ab2) then
            print("digite a reavaliação da ab2")
            ab2=io.read("*number")
            media=(ab1+ab2)/2
        
    elseif(ab2>ab1) then
        print("digite a reavaliação da ab1")
        ab1=io.read("*number")
        media=(ab1+ab2)/2
    end
    print(media)
    return media
end
function final(media)
    if(media>=7) then
        print("aprovado")
    
    else
        print("digite a nota final")
        notafinal=io.read("*number")
        media=media*0.6+notafinal*0.4
        if(media>=5.5) then
            print("aprovado na final")
        
        elseif(media<5.5) then
            print(media)
            print("reprovado")
        end   
    end
    print(media)
    return media
end
notas={}
print("digite a primeira nota")
notas[0]=io.read("*number")
print("digite a segunda nota")
notas[1]=io.read("*number")
print("digite a terceira nota")
notas[2]=io.read("*number")
print("digite a quarta nota")
notas[3]=io.read("*number")
ab1=(notas[0]+notas[1])/2
ab2=(notas[2]+notas[3])/2
media=(ab1+ab2)/2
notafinal=0
reavaliacao(ab1,ab2,media)
final(media)
