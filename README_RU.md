# Нивелир — GeoLisp v1.02 (Android)

Android Studio project: HTML/JavaScript application packaged in a native Android WebView shell.

## Included
- Исходная программа `app/src/main/assets/index.html`.
- Иконка приложения из предоставленного изображения нивелира и рейки (PNG, adaptive icon).
- Постоянное хранилище WebView (`localStorage`).
- Экспорт TXT / Excel / JSON через Android MediaStore в `Загрузки/Nivelir GeoLisp`.
- Импорт JSON через системный выбор файла.
- Открытие внешних ссылок, `mailto:` и `tel:` во внешних приложениях.
- Минимальная версия Android: 10 (API 29).

## Сборка APK
1. Установить Android Studio и Android SDK Platform 35.
2. Открыть в Android Studio папку `Nivelir_GeoLisp_Android`.
3. Дождаться синхронизации Gradle. Требуется JDK 17 или новее.
4. Выбрать **Build → Build Bundle(s) / APK(s) → Build APK(s)**.
5. APK будет создан по пути `app/build/outputs/apk/debug/app-debug.apk`.

Для релизного APK: **Build → Generate Signed Bundle / APK → APK**, создать или выбрать keystore и завершить мастер подписи.

## Примечание
Проект не требует подключения к интернету для работы самой нивелировки. Разрешение INTERNET оставлено для внешних веб-ссылок в авторском блоке. Данные измерений сохраняются локально на устройстве внутри WebView.

## Онлайн-сборка без Android Studio (GitHub Actions)
1. Создайте аккаунт на GitHub и новый пустой репозиторий (например, `NivelirGeoLisp`).
2. Распакуйте архив и загрузите в репозиторий **все содержимое** папки `Nivelir_GeoLisp_Android`, включая скрытую папку `.github`.
3. Откройте вкладку **Actions** в репозитории. При первой загрузке GitHub может попросить разрешить запуск Actions — подтвердите.
4. Откройте workflow **Build Android APK** и нажмите **Run workflow → Run workflow**. При push в `main` или `master` сборка также запускается автоматически.
5. Дождитесь зелёной отметки успешного выполнения. Откройте завершённый запуск и внизу страницы скачайте артефакт **Nivelir-GeoLisp-debug-apk**.
6. Распакуйте скачанный ZIP — внутри будет `app-debug.apk`. Перенесите APK на Android и установите. При необходимости разрешите установку приложений из этого источника.

Это debug APK для установки и тестирования. Для публикации в Google Play требуется отдельная сборка release и подпись собственным ключом (keystore); не публикуйте keystore и пароли в открытом репозитории.
