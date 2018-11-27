function [data_filtered] = convolution(data, local_window)

FUNCTION = @(data, local_window)convolution_local(data, local_window);

data_filtered = colfilt(data, local_window, 'sliding', FUNCTION, local_window);

end

