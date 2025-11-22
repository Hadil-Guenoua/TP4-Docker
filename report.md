
---

##  **1. انشاء الـ Docker Image**

تم بناء الـ Image من مشروع TP3 باستخدام الامر:

```powershell
docker build -t tp3-image:latest .
```

---
##  **2. تسجيل الدخول الى Docker Hub**

```powershell
docker login
```

---

##  **3. انشاء Tag للصورة ورفعها الى Docker Hub**

```powershell
docker tag tp3-image:latest hadilguenoua/tp3-image:latest
docker push hadilguenoua/tp3-image:latest
```

---
##  **4. حذفنا الصورة محليا لاختبار التحميل**

```powershell
docker rmi tp3-image:latest
docker rmi hadilguenoua/tp3-image:latest
```

---
##  **5. تحميل الصورة من Docker Hub 

```powershell
docker pull hadilguenoua/tp3-image:latest
```

---
##  **6. انشاء 3 حاويات من نفس الـ Image**

```powershell
docker create --name tp3_c1 hadilguenoua/tp3-image:latest
docker create --name tp3_c2 hadilguenoua/tp3-image:latest
docker create --name tp3_c3 hadilguenoua/tp3-image:latest
```

---
##  **7. انشاء شبكة Docker Network**

```powershell
docker network create tp3-net
```

---
##  **8. تشغيل الحاويات مع ربطها بالشبكة وتعيين منافذ مختلفة**

```powershell
docker run -d -p 8081:80 --name tp3_c1 --network tp3-net hadilguenoua/tp3-image:latest
docker run -d -p 8082:80 --name tp3_c2 --network tp3-net hadilguenoua/tp3-image:latest
docker run -d -p 8083:80 --name tp3_c3 --network tp3-net hadilguenoua/tp3-image:latest
```

---
##  **9. التحقق من عمل الحاويات**

```powershell
docker ps
```

---
##  **ملخص ما تم انجازه :

   انشاء حساب Docker Hub لرفع الـ Image ومشاركتها.
    
   بناء Docker Image من مشروع TP3 باستخدام Dockerfile.
    
   انشاء Tag للصورة ورفعها الى Docker Hub.
    
   اعادة تحميل الصورة للتأكد أنها تعمل بشكل مستقل عن الجهاز المحلي.
    
   انشاء ثلاث حاويات من الصورة نفسها.
    
   انشاء شبكة مخصصة لربط جميع الحاويات.
    
   تشغيل الحاويات على منافذ مختلفة عبر `-p`.
    
   التحقق من عمل الحاويات باستخدام `docker ps`.
    
---
