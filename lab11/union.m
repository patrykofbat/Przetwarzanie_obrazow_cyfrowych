function outputArray = union(p, q, array)
outputArray = array;

if p>q
    p=q;
    q=p;
end
outputArray(rootIndex(p, array)) = rootIndex(q, array);
end