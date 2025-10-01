# Dockerfile (วางไฟล์นี้กับ GreenBikeApp.html ในเดียวกัน)
FROM nginx:alpine

# คัดลอกไฟล์ HTML ของคุณไปเป็น index.html ของ nginx
COPY GreenBikeApp.html /usr/share/nginx/html/index.html

# เปิดพอร์ต 80
EXPOSE 80

# รัน nginx แบบ foreground
CMD ["nginx", "-g", "daemon off;"]
