%% ========== DETEKSI TEPI DENGAN OPERATOR ROBERTS ==========
imgColor_Land = imread('Landscape.jpg');
imgGray_Land = rgb2gray(imgColor_Land);
imgDouble = im2double(imgGray_Land);

% Kernel Roberts
kernel_Roberts_x = [1 0; 0 -1];
kernel_Roberts_y = [0 1; -1 0];

% Konvolusi
Gx_Roberts = conv2(imgDouble, kernel_Roberts_x, 'same');
Gy_Roberts = conv2(imgDouble, kernel_Roberts_y, 'same');
edge_Roberts = sqrt(Gx_Roberts.^2 + Gy_Roberts.^2);

% Normalisasi
edge_Roberts = edge_Roberts / max(edge_Roberts(:));

% Tampilkan hasil
imshow(edge_Roberts);
title('Hasil Deteksi Tepi - Roberts', 'FontSize', 12, 'FontWeight', 'bold');

sgtitle('OPERATOR ROBERTS EDGE DETECTION', 'FontSize', 14, 'FontWeight', 'bold');