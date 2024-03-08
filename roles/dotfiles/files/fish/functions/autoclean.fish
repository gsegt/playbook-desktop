function autoclean --wraps vi --description 'Remove all unecessary pacakges'
    yay -Rns $(yay -Qdtq)
end
