function rootIndex = rootIndex(index, array)
rootIndex = index;
while rootIndex ~= array(rootIndex)
    rootIndex = array(rootIndex);
end
end