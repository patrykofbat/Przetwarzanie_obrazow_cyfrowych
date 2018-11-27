function [data_filtered] = bilateral(data, local_window)

FUNCTION = @(data, local_window)bilateral_local(data, local_window);

data_filtered = colfilt(data, local_window, 'sliding', FUNCTION, local_window);

end

