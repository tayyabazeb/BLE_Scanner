# 🔍 BLE Scanner App

A simple Flutter application that scans nearby Bluetooth Low Energy (BLE) devices and displays them in a list.

---

## 🚀 Features

- Scans for BLE devices around the user
- Displays device name and MAC address
- Auto-refreshes the list on demand
- Built using `flutter_reactive_ble`

---


## 🛠️ Tech Stack

- **Flutter** (cross-platform framework)
- **Dart**
- [`flutter_reactive_ble`](https://pub.dev/packages/flutter_reactive_ble) – for BLE communication
- [`permission_handler`](https://pub.dev/packages/permission_handler) – to handle runtime permissions

---

## 📦 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/ble_scanner_app.git
cd ble_scanner_app
```

---

### 2. Install Dependencies

```bash
flutter pub get
```
---
### 3. Run the App
```bash
flutter run
```
---



## ✅ Permissions Required

Make sure to request and handle these permissions in Android:
On Android 12+, BLUETOOTH_SCAN and BLUETOOTH_CONNECT are mandatory.

```bash
<uses-permission android:name="android.permission.BLUETOOTH" />
<uses-permission android:name="android.permission.BLUETOOTH_ADMIN" />
<uses-permission android:name="android.permission.BLUETOOTH_SCAN" />
<uses-permission android:name="android.permission.BLUETOOTH_CONNECT" />
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
<uses-permission android:name="android.permission.FOREGROUND_SERVICE" />
```


---


### 📝 Notes

This app is designed specifically for BLE (Bluetooth Low Energy) devices — it does not support classic Bluetooth.

Make sure the following are enabled on your device before scanning:

✅ Bluetooth

✅ Location Services (especially for Android 10 and below)

- BLE scanning behavior may vary across Android devices due to hardware or OS restrictions.

- On Android 12+, ensure runtime permissions for BLUETOOTH_SCAN and BLUETOOTH_CONNECT are requested.

- iOS support is possible but not included in this version.

- The app uses flutter_reactive_ble to handle BLE communication (scanning, connecting, reading/writing characteristics).

---

### 🤝 Contributions
- Contributions are welcome and appreciated!
- Feel free to open issues or submit pull requests to improve this project.

