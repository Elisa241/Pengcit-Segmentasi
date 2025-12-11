%% ========== DETEKSI TEPI DENGAN OPERATOR PREWITT ==========
imgColor_Land = imread('Landscape.jpg');
imgGray_Land = rgb2gray(imgColor_Land);
imgDouble = im2double(imgGray_Land);

% Kernel Prewitt
kernel_Prewitt_x = [-1 0 1; -1 0 1; -1 0 1];
kernel_Prewitt_y = [-1 -1 -1; 0 0 0; 1 1 1];

% Konvolusi
Gx_Prewitt = conv2(imgDouble, kernel_Prewitt_x, 'same');
Gy_Prewitt = conv2(imgDouble, kernel_Prewitt_y, 'same');
edge_Prewitt = sqrt(Gx_Prewitt.^2 + Gy_Prewitt.^2);

% Normalisasi
edge_Prewitt = edge_Prewitt / max(edge_Prewitt(:));

% Tampilkan hasil

imshow(edge_Prewitt);
title('Hasil Deteksi Tepi - Prewitt', 'FontSize', 12, 'FontWeight', 'bold');


sgtitle('OPERATOR PREWITT EDGE DETECTION', 'FontSize', 14, 'FontWeight', 'bold');