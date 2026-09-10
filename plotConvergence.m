function [A] = plotConvergence(seed, iter, ifs, plotShape)

figure();
hold on;
n = iter(length(iter));
N = size(ifs, 3);
A = seed;
p = 1;
if ismember(0, iter)
    subplot(plotShape(1), plotShape(2), p);
    p = 2;
    plot(A, 'FaceColor', 'b', 'EdgeColor', 'b');
    axis equal;
    xlim([0, 1]);
    ylim([0, 1]);
    title("Algorithm seed");
    set(gca,'XTick',[], 'YTick', [])
end

for i = 1 : n
    B = polyshape();
    for j = 1 : N
        [x, y] = boundary(A);
        dA = [x, y]';
        dA = ifs([1 2], [1 2], j)*dA + ifs([1 2], 3, j);
        B =union(B, polyshape(dA(1,:), dA(2,:)));
    end    
    A = B;
    if ismember(i, iter)
        subplot(plotShape(1), plotShape(2), p);
        p = p+1;
        plot(A, 'FaceColor', 'b', 'EdgeColor', 'b');
        axis equal;
        xlim([0, 1]);
        ylim([0, 1]);
        title(['Iteration ', num2str(i)]);
        set(gca,'XTick',[], 'YTick', [])
    end
end

hold off
end
