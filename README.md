# iamnotsecure: RCE Lab Portföyü

## 1. Proje Tanımı
`iamnotsecure`, kritik sistemlerde tespit edilen **Remote Code Execution (RCE)** zafiyetlerinin analiz edilmesi, sömürülmesi (exploitation) ve savunulması süreçlerini içeren akademik bir laboratuvar ortamıdır. Proje, Podman konteyner altyapısını kullanarak zafiyetli servisleri izole bir ağda simüle eder.

## 2. Teknik Altyapı
Laboratuvarlar, taşınabilirlik ve performans odaklı olarak **Podman** ve **podman-compose** üzerine inşa edilmiştir. isteğe bağlı docker kullanımını desteklemek amacıyla altyapı docker-compose.yml olarak tanımlanmıştır.

- **Konteynerizasyon:** Podman (Rootless desteği ve güvenlik önceliği için).
- **Otomasyon:** `setup.sh` üzerinden hızlı ağ ve servis konfigürasyonu.
- **Saldırı Vektörleri:** Metasploit Framework (MSF) modülleri ve manuel Python/Bash exploit scriptleri.

## 3. Kullanım Metodolojisi

Her laboratuvar dizini kendi içinde bağımsız bir ekosistemdir. Bir laboratuvarı başlatmak ve analiz etmek için:

- **Ortamı Hazırla:**
   ```bash
   cd labs/RCE/CVE-[İlgili-Yıl]-[ID]
   bash setup.sh
   ```
   Analiz ve Sömürü:
    Dizin içerisindeki exploit.md dosyasını takip ederek zafiyetin sömürülme aşamalarını (PoC) gözlemleyin.

    Dokümantasyon:
    README.md dosyasında yer alan Çözüm Önerileri kısmını inceleyerek zafiyetin nasıl kapatılacağını (patching) analiz edin.

## 4. Dizin Hiyerarşisi

labs/RCE/
├── CVE-XXXX-XXXX-uygulama/ # Zafiyet Klasörü (Örn: CVE-2021-44228-log4j)
│   ├── docker-compose.yml  # Konteynerize altyapı tanımı
│   ├── setup.sh            # Ortam kurulum betiği
│   ├── exploit.md          # Adım adım PoC ve MSF senaryoları
│   └── README.md           # Akademik analiz ve çözüm yolları
├── Readme.md               # Kategorik dokümantasyon
└── setup.sh                # Global ağ yapılandırma betiği

## 5. Yasal Uyarı

Bu proje, siber güvenlik araştırmacıları için eğitim materyali olarak sunulmuştur. Tüm testler izinli ortamlarda (CTF/Bug Bounty/Lab) gerçekleştirilmelidir. Kötüye kullanım durumunda sorumluluk kullanıcıya aittir.