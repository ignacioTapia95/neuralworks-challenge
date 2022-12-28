def final_result(home_goal, away_goal):
    
    if home_goal > away_goal:
        return 'H'
    elif home_goal < away_goal:
        return 'A'
    else:
        return 'D'

def get_playing_system(y_pos):
    
    #Contar jugadores por línea
    line_count = y_pos.value_counts().sort_index(ascending=True)
    
    #Generar lista con sistema de juego
    ply_sys_list = [str(x) for x in line_count]

    #Validar si el equipo contiene 11 coordenadas y que en la linea del arquero sólo exista 1 jugador
    if sum(line_count) == 11 and ply_sys_list[0] == '1':
        ply_sys_string = '-'.join(ply_sys_list)
        return ply_sys_string
    else:
        return None