A = imread('cameraman.tif');
B = imread('circuit.tif');

subplot(3,4,1), imshow(A);
subplot(3,4,2), imshow(B);

C = imresize(B,[size(A,1) size(A,2)]);
subplot(3,4,3), imshow(C);

Output1 = immultiply(A,C);  % multiplication
subplot(3,4,4), imshow(Output1);

Output2 = imdivide(A,C);    % division
subplot(3,4,5), imshow(Output2);

Output3 = imsubtract(A,C);  % subtraction
subplot(3,4,6), imshow(Output3);

Output5 = imadd(A,C);       % addition
subplot(3,4,7), imshow(Output5);

Output6 = imabsdiff(A,C);   % absolute difference
subplot(3,4,8), imshow(Output6);

Output7 = imcomplement(A);  % complement
subplot(3,4,9), imshow(Output7);

% Binarization
Ab = imbinarize(A);
Cb = imbinarize(C);

Output8 = Ab & Cb;          % AND
subplot(3,4,10), imshow(Output8);

Output9 = Ab | Cb;          % OR
subplot(3,4,11), imshow(Output9);

Output10 = xor(Ab,Cb);      % XOR
subplot(3,4,12), imshow(Output10);
