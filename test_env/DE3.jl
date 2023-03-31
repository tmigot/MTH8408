using Random
using LinearAlgebra
using Plots

function LHS(n, p, l, u)
    PI = zeros(n, p);
    X = zeros(n, p);
    # Create permutation matrix
    for i=1:n
        PI[i, :] = shuffle(collect(1:p))';
    end

    # Sample
    for i=1:n
        for j=1:p
            X[i, j] = l[i] + ((u[i] - l[i]) * (PI[i, j] - rand(1, 1)[1]) / p);
        end
    end
    return X
end

function get_distance(points, center)
    min_dist = 1000000
    for j=1:size(points)[2]
        dist = 0
        for i=1:size(points)[1]
            dist += (points[i, j] - center[i]) ^ 2
        end
        dist = sqrt(dist)
        if dist <= min_dist
            min_dist = dist
        end
    end
    return min_dist
end


N = 30
distances_1 = zeros(N)
distances_2 = zeros(N)

for i=1:N
    l = ones(i) * 0;
    u = ones(i) * 100;
    center = (l + u)./2

    dist1_sum = 0
    dist2_sum = 0
    M = 1000
    for k=1:M
        X1_k = LHS(i, 10*i, l, u);
        X2_k = LHS(i, i^2, l, u);
        dist1_k = get_distance(X1_k, center);
        dist2_k = get_distance(X2_k, center);
        dist1_sum += dist1_k
        dist2_sum += dist2_k
    end
    dist1_average = dist1_sum / M
    dist2_average = dist2_sum / M

    distances_1[i] = dist1_average
    distances_2[i] = dist2_average
end

p1 = plot(collect(1:N), [distances_1, distances_2], label=["p=10*n" "p=n^2"], linewidth=2);
p1 = plot!(p1, xlabel="n", ylabel="d_moy", legend=:bottomright);
p1 = plot!(p1, size=(1000, 1000))
display(p1)
display(distances_1)
display(distances_2)

#=
N = 15
l = ones(N) * 0;
u = ones(N) * 100;
center = (l + u)./2
X = LHS(N, N*10000, l, u);
dist = get_distance(X, center);
print(dist)
=#