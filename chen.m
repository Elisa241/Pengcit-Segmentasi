%% ========== DETEKSI TEPI DENGAN OPERATOR FREI-CHEN ==========
imgColor_Land = imread('Landscape.jpg');
imgGray_Land = rgb2gray(imgColor_Land);
imgDouble = im2double(imgGray_Land);

% Kernel Frei-Chen
sqrt2 = sqrt(2);
kernel_Frei_x = [-1 -sqrt2 -1; 0 0 0; 1 sqrt2 1];
kernel_Frei_y = [-1 0 1; -sqrt2 0 sqrt2; -1 0 1];

% Konvolusi
Gx_Frei = conv2(imgDouble, kernel_Frei_x, 'same');
Gy_Frei = conv2(imgDouble, kernel_Frei_y, 'same');
edge_Frei = sqrt(Gx_Frei.^2 + Gy_Frei.^2);

% Normalisasi
edge_Frei = edge_Frei / max(edge_Frei(:));

% Tampilkan hasil

imshow(edge_Frei);
title('Hasil Deteksi Tepi - Frei-Chen', 'FontSize', 12, 'FontWeight', 'bold');


sgtitle('OPERATOR FREI-CHEN EDGE DETECTION', 'FontSize', 14, 'FontWeight', 'bold');