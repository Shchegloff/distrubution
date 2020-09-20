from peewee import *

# Важно! Используется БД созданное с помощью решения задания № 9
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


# добавление студента школы биомедицины, проживающего в корпусе 11
st = Students(fio_nm='Щеглов Б.О.', school_nm='Школа биомедицины', house_no=11)
st.save()

# выбор и отображение студентов школы экономики и менеджмента и корпусов проживания
for student in Students.select(Students.fio_nm, Students.house_no).\
        where(Students.school_nm == 'Школа экономики и менеджмента'):
    print(student.fio_nm + ' - ' + str(student.house_no))

# изменение корпуса студента Белова А.А. на 2й корпус
student = Students.select().where(Students.fio_nm == 'Белов А.А.').get()
student.house_no = 2
student.save()

# удаление записей по студентам, проживающим в 1-м корпусе
query = Students.delete().where(Students.house_no == 1)
n = query.execute()
