# ============================================================
# FUNÇÕES
# ============================================================

# Função para separa dados do arquivo em 2 vetores
function split_line!(file, vector1::Vector{Int64}, vector2::Vector{Int64})
    while !eof(file)
        # Linha sendo lida
        line = readline(file)

        num_1 = parse(Int64, line[1:5])
        num_2 = parse(Int64, line[9:13])

        push!(vector1, num_1)
        push!(vector2, num_2)

        println(line)
    end
    return vector1, vector2
end

function sum_values(vector::Vector{Int64})
    sum = 0
    for i in eachindex(vector)
        sum += vector[i]
    end
    return sum
end

# ============================================================
# PARTE 1
# ============================================================

# Abri arquivo com dados de entrada
file = open("day-01/input.txt", "r")

left_values = Vector{Int64}()
right_values = Vector{Int64}()

split_line!(file, left_values, right_values)

dist_vector = abs.(sort(left_values) - sort(right_values))

distance = sum(dist_vector)


# ============================================================
# PARTE 2
# ============================================================
