# Домашнее задание к лекции «Работа с SQL. Создание БД»

## Задание

### Обязательная часть

Будем развивать схему для музыкального сервиса.

Ранее существовало ограничение, что каждый исполнитель поёт строго в одном жанре, пора его убрать. Исполнители могут петь в разных жанрах, как и одному жанру могут принадлежать несколько исполнителей.

Аналогичное ограничение было и с альбомами у исполнителей — альбом мог выпустить только один исполнитель. Теперь альбом могут выпустить несколько исполнителей вместе. Как и исполнитель может принимать участие во множестве альбомов.

С треками ничего не меняем, всё так же трек принадлежит строго одному альбому.

Но появилась новая сущность — сборник. Сборник имеет название и год выпуска. В него входят различные треки из разных альбомов.

_Обратите внимание_: один и тот же трек может присутствовать в разных сборниках.

Задание состоит из двух частей

1. Спроектировать и нарисовать схему, как в [первой домашней работе](../01-introduction). Прислать изображение со схемой.
2. Написать SQL-запросы, создающие спроектированную БД. Прислать ссылку на файл, содержащий SQL-запросы.

_Примечание:_ можно прислать сначала схему, получить подтверждение, что схема верная, и после этого браться за написание запросов.

---

### Дополнительное (необязательное) задание

Спроектировать отношение или схему из нескольких отношений «Сотрудник». У каждого сотрудника есть следующие параметры:

1. Имя.
2. Отдел.
3. Начальник (ссылка на начальника).

_Примечание:_ начальник — тоже сотрудник. Отдел можно хранить строкой, можно идентификатором — не принципиально.

Необходимо написать SQL-запрос, создающий таблицу «Сотрудник», и прислать ссылку на файл с этим запросом.

# Домашнее задание к лекции «Продвинутая выборка данных»

## Задание 1

Продолжаем работать со своей базой данных. В этом задании заполните базу данных из домашнего задания к занятию "Работа с SQL. Создание БД". В ней должно быть:

- не менее 4 исполнителей,
- не менее 3 жанров,
- не менее 3 альбомов,
- не менее 6 треков,
- не менее 4 сборников.

Внимание: должны быть заполнены все поля каждой таблицы, в том числе таблицы связей исполнителей с жанрами, исполнителей с альбомами, сборников с треками.

## Задание 2

Написать SELECT-запросы, которые выведут информацию согласно инструкциям ниже.

Внимание: результаты запросов не должны быть пустыми, учтите это при заполнении таблиц.

1. Название и продолжительность самого длительного трека.
2. Название треков, продолжительность которых не менее 3,5 минут.
3. Названия сборников, вышедших в период с 2018 по 2020 год включительно.
4. Исполнители, чьё имя состоит из одного слова.
5. Название треков, которые содержат слово «мой» или «my».


## Задание 3

Написать SELECT-запросы, которые выведут информацию согласно инструкциям ниже.

Внимание: результаты запросов не должны быть пустыми, при необходимости добавьте данные в таблицы.

1. Количество исполнителей в каждом жанре.
2. Количество треков, вошедших в альбомы 2019–2020 годов.
3. Средняя продолжительность треков по каждому альбому.
4. Все исполнители, которые не выпустили альбомы в 2020 году.
5. Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).


## Задание 4(необязательное)

Написать SELECT-запросы, которые выведут информацию согласно инструкциям ниже.

Внимание: результаты запросов не должны быть пустыми, при необходимости добавьте данные в таблицы.

1. Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
2. Наименования треков, которые не входят в сборники.
3. Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
4. Названия альбомов, содержащих наименьшее количество треков.

---

Результатом работы будет три файла в формате `.sql`:

- с INSERT-запросами (задание 1),
- с SELECT-запросами (задание 2,3,4),
- с CREATE-запросами (из предыдущей домашней работы).
