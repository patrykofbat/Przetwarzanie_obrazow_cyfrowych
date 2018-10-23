function LUT(obraz, przekodowanie)
    A = intlut(uint8(obraz), przekodowanie);
   
    
    subplot(2, 2, 1);
    plot(przekodowanie);
    title('przekodowanie');
 
    
    subplot(2, 2, 2);
    imshow(obraz);
    title('oryginal');
    

  
    subplot(2, 2, 3);
    imshow(A);
    title('przeksztalcony');

end

