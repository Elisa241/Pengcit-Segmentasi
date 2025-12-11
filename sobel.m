%% ========== DETEKSI TEPI DENGAN OPERATOR SOBEL ==========
imgColor_Land = imread('Landscape.jpg');
imgGray_Land = rgb2gray(imgColor_Land);
imgDouble = im2double(imgGray_Land);

% Kernel Sobel
kernel_Sobel_x = [-1 0 1; -2 0 2; -1 0 1];
kernel_Sobel_y = [-1 -2 -1; 0 0 0; 1 2 1];

% Konvolusi
Gx_Sobel = conv2(imgDouble, kernel_Sobel_x, 'same');
Gy_Sobel = conv2(imgDouble, kernel_Sobel_y, 'same');
edge_Sobel = sqrt(Gx_Sobel.^2 + Gy_Sobel.^2);

% Normalisasi
edge_Sobel = edge_Sobel / max(edge_Sobel(:));

% Tampilkan hasil

imshow(edge_Sobel);
title('Hasil Deteksi Tepi - Sobel', 'FontSize', 12, 'FontWeight', 'bold');

sgtitle('OPERATOR SOBEL EDGE DETECTION', 'FontSize', 14, 'FontWeight', 'bold');