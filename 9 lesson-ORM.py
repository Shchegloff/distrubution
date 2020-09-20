from peewee import *

# настройка подключения к БД
db = PostgresqlDatabase(database="postgres", user="postgres", password="postgres")
# подключение к БД
if not db.connect():
    print('Ошибка подключения к БД...')
    exit()


# определение модели (сущности) "Студенты"
class Students(Model):
    id = PrimaryKeyField(null=False)
    fio_nm = CharField(max_length=500)
    school_nm = CharField(max_length=100)
    house_no = IntegerField()

    class Meta:
        database = db
        db_table = "student"


# Создание таблицы
Students.create_table()

# Исходные данные для блочной загрузки
data = [
    {'fio_nm': 'Абдулагапова Р.Р.', 'school_nm': 'Школа региональных и международных исследований', 'house_no': 1},
    {'fio_nm': 'Базыльников О.С.', 'school_nm': 'Школа региональных и международных исследований', 'house_no': 2},
    {'fio_nm': 'Барышев А.Н.', 'school_nm': 'Школа биомедицины', 'house_no': 7},
    {'fio_nm': 'Батог П.А.', 'school_nm': 'Школа гуманитарных наук', 'house_no': 7},
    {'fio_nm': 'Белашко А.С.', 'school_nm': 'Инженерная школа', 'house_no': 3},
    {'fio_nm': 'Беленец Н.Ю.', 'school_nm': 'Школа экономики и менеджмента', 'house_no': 5},
    {'fio_nm': 'Белов А.А.', 'school_nm': 'Школа естественных наук', 'house_no': 1},
    {'fio_nm': 'Белоголовцева Е.А.', 'school_nm': 'Юридическая школа', 'house_no': 2},
    {'fio_nm': 'Белоусова А.О.', 'school_nm': 'Школа экономики и менеджмента', 'house_no': 4}
]

# Добавление одной записи
st = Students(fio_nm='Иванова М.А.', school_nm='Школа биомедицины', house_no=11)
st.save()

# Блочное добавление данных (многих)
query = Students.insert_many(data)
query.execute()
