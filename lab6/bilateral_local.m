function [data_filtered] = bilateral_local(data, local_window)
    
    s = 0.5;
    Nx = size(data,2);
    Ncx = ceil(local_window(2)/2);
    Ncy = ceil(local_window(1)/2);
    h = fspecial('gaussian', local_window, 25);

    for i=1:Nx
        patch = reshape(data(:, i), local_window);
        [rows, cols] = find(patch == patch);
        
        rows = reshape(rows, local_window);
        cols = reshape(cols, local_window);
        
        dist = sqrt((Ncy - rows).^2 + (Ncx - cols).^2);
        dist = dist.*h;
        
        wart_abs = abs(patch - patch(Ncy, Ncx));
        gamma = exp(((-1) * (wart_abs.^2)) / (2 * (s^2)));
        psi = exp(((-1) * (dist.^2)) / (2 * (s^2)));
        data_filtered(i) = sum(sum(gamma .* psi .* patch)) / sum(sum(gamma .* psi));

    end



end

