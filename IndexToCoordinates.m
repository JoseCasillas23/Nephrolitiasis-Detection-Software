function [rows_j, cols_i] = IndexToCoordinates (index, nrows)
cols_i = floor(index/nrows);
rows_j = index - nrows*(cols_i);
cols_i = cols_i + 1;
end
