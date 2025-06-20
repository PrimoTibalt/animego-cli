# Animego CLI
CLI (Консольное приложение) для просмотра аниме с сайта animego. Поддерживает поиск, сохранение истории просмотра, добавление в любимое и удаление из избранного (Favorite). Сохраняет прогресс просмотра серий. Не сохраняет прогресс просмотра отдельных серий. То есть если вы начали смотреть серию, но не досмотрели - приложение не сможет восстановить ваш просмотр внутри видео и будет считать что вы посмотрели эту серию полность. Приложение нацелено на удобство использования без мыши.

## Содержание
- [Технологии](#технологии)
- [Использование](#использование)
- [Разработка](#разработка)

## Технологии
- [HtmlAgilityPack](https://html-agility-pack.net/)
- [Powershell 7](https://learn.microsoft.com/ru-ru/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.5)

## Использование
Проект представляет собой ряд ps1 скриптов работающих как единое консольное приложение.

Первое, что вам стоит сделать, запустить `setup.ps1` из Powershell 7:
```sh
$ setup.ps1
```

Затем перезапустить консоль. После этого вам будет доступна `Enter-Anime` команда.
```sh
$ Enter-Anime
```

Все движения в консоли выполняются либо стрелочками, либо клавишами: j - сточку вниз, k - строчку вверх, h - предыдущая страница, l - следующая страница, Enter - выбрать опцию. В списках с названиями аниме вы можете использовать клавиши f - добавить в список любимого, r - удалить из списка любимого. В этих списках значком звезды перед названием будут определяться аниме, которые находятся в списке любимых.

Стоит отметить, что список любимого лучше всего подходит по значению к списку текущего просмотра. Сужу по себе.

## Разработка

### Требования
Для установки и запуска проекта, необходим [Powershell 7](https://learn.microsoft.com/ru-ru/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.5).

Права локаьного администратора понадобятся в случае если не установлен VLC плеер или если он не находится по стандартному пути установки.

## Источники
С парсером Kodik плеера помог код python библиотеки anime_parsers_ru