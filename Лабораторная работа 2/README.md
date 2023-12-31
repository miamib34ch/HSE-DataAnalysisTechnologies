# Проект 2

# Полезные ссылки

* [Онлайн xPath запросы](http://xpather.com/)
* [XSL преобразования](https://www.freeformatter.com/xsl-transformer.html)
* [Онлайн JSONPath запросы](https://jsonpath.com/)
* [Онлайн валидатор JSON по JSONSchema](https://www.jsonschemavalidator.net/)

# Задание

Разработать XML-формат для представления расписания учебных занятий **вашей группы.** В расписании должна храниться информация о занятиях на **каждый день недели.** Для каждого учебного занятия указаны **название предмета**, **аудитория**, **преподаватель**, **время начала и окончания**, **тип занятия** (лекция или практика).

# Выполнение

1. В разработанном формате представить расписание текущей недели. (1 балл)
    
    ```xml
    <?xml version="1.0" encoding="UTF-8"?>
    <schedule group="ПИ-20-2">
        <day name="Понедельник" date="2023-11-20">
            <lesson>
                <subject>Проектирование архитектуры программ.систем</subject>
                <classroom>102[3]</classroom>
                <instructor>Хаберев Е.А.</instructor>
                <start_time>09:40</start_time>
                <end_time>11:00</end_time>
                <type>Лекция</type>
            </lesson>
            <lesson>
                <subject>Научно-исследовательский семинар</subject>
                <classroom>511[3]</classroom>
                <instructor>Викентьева О.Л.</instructor>
                <start_time>11:30</start_time>
                <end_time>12:50</end_time>
                <type>Семинар</type>
            </lesson>
    				<lesson>
                <subject>Управление программными проектами</subject>
                <classroom>511[3]</classroom>
                <instructor>Шестакова Л.В.</instructor>
                <start_time>13:10</start_time>
                <end_time>14:30</end_time>
                <type>Семинар</type>
            </lesson>
        </day>
        <day name="Вторник" date="2023-11-21">
            <lesson>
                <subject>Технологии и алгоритмы высокопроизводительных вычислений</subject>
                <classroom>102[3]</classroom>
                <instructor>Замятина Е.Б.</instructor>
                <start_time>09:40</start_time>
                <end_time>11:00</end_time>
                <type>Лекция</type>
            </lesson>
            <lesson>
                <subject>Технологии и алгоритмы высокопроизводительных вычислений</subject>
                <classroom>509[3]</classroom>
                <instructor>Замятина Е.Б.</instructor>
                <start_time>09:40</start_time>
                <end_time>11:00</end_time>
                <type>Семинар</type>
            </lesson>
        </day>
    		<day name="Среда" date="2023-11-22">
            <lesson>
                <subject>Средства BI для управления процессами и задачами</subject>
                <classroom>509[3]</classroom>
                <instructor>Комиссаров К.А.</instructor>
                <start_time>08:10</start_time>
                <end_time>09:30</end_time>
                <type>Семинар</type>
            </lesson>
    				<lesson>
                <subject>Средства BI для управления процессами и задачами</subject>
                <classroom>102[3]</classroom>
                <instructor>Комиссаров К.А.</instructor>
                <start_time>09:40</start_time>
                <end_time>11:00</end_time>
                <type>Лекция</type>
            </lesson>
        </day>
    		<day name="Четверг" date="2023-11-23">
            <lesson>
                <subject>Проектирование архитектуры программ.систем</subject>
                <classroom>509[3]</classroom>
                <instructor>Банников Р.Ю.</instructor>
                <start_time>11:30</start_time>
                <end_time>12:50</end_time>
                <type>Семинар</type>
            </lesson>
            <lesson>
                <subject>Академ. письмо на анг.языке</subject>
                <classroom>501[3]</classroom>
                <instructor>Туляков Д.С.</instructor>
                <start_time>13:10</start_time>
                <end_time>14:30</end_time>
                <type>Семинар</type>
            </lesson>
        </day>
    		<day name="Пятница" date="2023-11-24">
             <lesson>
                <subject>Интеллектуальные системы</subject>
                <classroom>дист.[0]</classroom>
                <instructor>Мухин О.И.</instructor>
                <start_time>09:40</start_time>
                <end_time>11:00</end_time>
                <type>Семинар</type>
            </lesson>
    				<lesson>
                <subject>Интеллектуальные системы</subject>
                <classroom>дист.[0]</classroom>
                <instructor>Мухин О.И.</instructor>
                <start_time>11:30</start_time>
                <end_time>12:50</end_time>
                <type>Лекция</type>
            </lesson>
    				<lesson>
                <subject>Технологии анализа данных в сети Интернет</subject>
                <classroom>дист.[0]</classroom>
                <instructor>Мухин О.И.</instructor>
                <start_time>13:10</start_time>
                <end_time>14:30</end_time>
                <type>Семинар</type>
            </lesson>
    				<lesson>
                <subject>Технологии анализа данных в сети Интернет</subject>
                <classroom>дист.[0]</classroom>
                <instructor>Мухин О.И.</instructor>
                <start_time>15:00</start_time>
                <end_time>16:20</end_time>
                <type>Лекция</type>
            </lesson>
        </day>
    		<day name="Суббота" date="2023-11-25">
            <lesson>
                <subject>Управление программными проектами</subject>
                <classroom>дист.[0]</classroom>
                <instructor>Климов Б.А.</instructor>
                <start_time>11:30</start_time>
                <end_time>12:50</end_time>
                <type>Лекция</type>
            </lesson>
        </day>
    </schedule>
    ```
    
2. Разработать xPath-запросы (2 балла):
    1. Получить все занятия на данной неделе
        
        ```xml
        //lesson
        ```
        
    2. Получить все аудитории, в которых проходят занятия.
        
        ```xml
        //classroom
        ```
        
    3. Получить все практические занятия на неделе.
        
        ```xml
        //lesson[type="Семинар"]
        ```
        
    4. Получить все лекции, проводимые в указанной аудитории.
        
        ```xml
        //lesson[type="Лекция" and classroom="102[3]"]
        ```
        
    5. Получить список всех преподавателей, проводящих практики в указанной аудитории.
        
        ```xml
        //lesson[type="Семинар" and classroom="511[3]"]/instructor
        ```
        
    6. Получить последнее занятие для каждого дня недели.
        
        ```xml
        //day/lesson[last()]
        ```
        
    7. Получить общее количество занятий за всю неделю.
        
        ```xml
        count(//lesson)
        ```
        
3. Описать DTD схему для разработанного формата. Произвести валидацию xml-документа (1 балл).
    
    ```xml
    <!-- Внутренняя DTD декларация -->
    <!DOCTYPE schedule [
    	<!ELEMENT schedule (day*)>
    	<!ATTLIST schedule group CDATA #REQUIRED>
    
    	<!ELEMENT day (lesson+)>
    	<!ATTLIST day 
    		name CDATA #REQUIRED 
    		date CDATA #REQUIRED
    	>
    
    	<!ELEMENT lesson (subject, classroom, instructor, start_time, end_time, type)>
    	<!ELEMENT subject (#PCDATA)>
    	<!ELEMENT classroom (#PCDATA)>
    	<!ELEMENT instructor (#PCDATA)>
    	<!ELEMENT start_time (#PCDATA)>
    	<!ELEMENT end_time (#PCDATA)>
    	<!ELEMENT type (#PCDATA)>
    ]>
    ```
    
4. Описать XML Schema для разработанного формата. Произвести валидацию xml-документа. (1 балл)
    
    ```xml
    <?xml version="1.0" encoding="utf-8"?>
    <xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema">
    	<xs:element name="schedule">
    		<xs:complexType>
    			<xs:sequence>
    				<xs:element maxOccurs="unbounded" name="day">
    					<xs:complexType>
    						<xs:sequence>
    							<xs:element maxOccurs="unbounded" name="lesson">
    								<xs:complexType>
    									<xs:sequence>
    										<xs:element name="subject" type="xs:string" />
    										<xs:element name="classroom" type="xs:string" />
    										<xs:element name="instructor" type="xs:string" />
    										<xs:element name="start_time" type="xs:string" />
    										<xs:element name="end_time" type="xs:string" />
    										<xs:element name="type" type="xs:string" />
    									</xs:sequence>
    								</xs:complexType>
    							</xs:element>
    						</xs:sequence>
    						<xs:attribute name="name" type="xs:string" use="required" />
    						<xs:attribute name="date" type="xs:date" use="required" />
    					</xs:complexType>
    				</xs:element>
    			</xs:sequence>
    			<xs:attribute name="group" type="xs:string" use="required" />
    		</xs:complexType>
    	</xs:element>
    </xs:schema>
    ```
    
    Подключим схему к xml файлу:
    
    ```xml
    <schedule xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="path_to_xsd_schema.xsd">
    </schedule>
    ```
    
5. Описать XSLT-преобразование xml-документа в текстовый вид (*.txt). (1 балл)
    
    ```xml
    <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    	<xsl:template match="/">
    		<xsl:for-each select="//day">
    			<xsl:value-of select="@name"/>&#160;<xsl:value-of select="@date"/>
    			<xsl:text>&#xa;</xsl:text>
    			<xsl:for-each select="lesson">
    				<xsl:value-of select="type"/>
    				<xsl:text>: </xsl:text>
    				<xsl:value-of select="subject"/>
    				<xsl:text> - </xsl:text>
    				<xsl:value-of select="start_time"/>
    				<xsl:text> до </xsl:text>
    				<xsl:value-of select="end_time"/>
    				<xsl:text>, </xsl:text>
    				<xsl:value-of select="classroom"/>
    				<xsl:text>&#xa;</xsl:text>
    			</xsl:for-each>
    			<xsl:text>&#xa;</xsl:text>
    		</xsl:for-each>
    	</xsl:template>
    </xsl:stylesheet>
    ```
    
6. Описать XSLT-преобразование xml-документа в html-страницу (расписание должно быть представлено в виде таблицы) (1 балл)
    
    ```xml
    <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    	<xsl:template match="/">
    	  <html>
    	    <head>
    	      <style>
    	        table {
    	          font-family: Arial, sans-serif;
    	          border-collapse: collapse;
    	          width: 100%;
    	        }
    	        th, td {
    	          border: 1px solid #dddddd;
    	          text-align: left;
    	          padding: 8px;
    	        }
    	        th {
    	          background-color: #f2f2f2;
    	        }
    	      </style>
    	    </head>
    	    <body>
    	      <h2>Расписание группы: <xsl:value-of select="schedule/@group"/></h2>
    	      <table>
              <tr>
                <th>Тип занятия</th>
                <th>Предмет</th>
                <th>Время</th>
              </tr>
              <xsl:for-each select="//day">
                <tr>
                  <td colspan="5">
                    <strong><xsl:value-of select="@name"/>&#160;<xsl:value-of select="@date"/></strong>
                  </td>
                </tr>
                <xsl:for-each select="lesson">
                  <tr>
                    <td><xsl:value-of select="type"/></td>
                    <td><xsl:value-of select="subject"/></td>
                    <td><xsl:value-of select="concat(start_time, ' - ', end_time)"/></td>
                  </tr>
                </xsl:for-each>
              </xsl:for-each>
            </table>
    	    </body>
    	  </html>
    	</xsl:template>
    </xsl:stylesheet>
    ```
    
7. Разработать программу на любом языке программирования (Python, С#, Java) для выполнения XSLT-преобразования и разработанных xPath-запросов. (1 балл)
    
    ```python
    from lxml import etree
    
    # Загрузка XML
    xml_tree = etree.parse("schedule.xml")
    ```
    
    ```python
    # Выполнение xPath-запросов
    all_lessons = xml_tree.xpath("//lesson")
    all_classrooms = xml_tree.xpath("//classroom")
    all_practical_lessons = xml_tree.xpath("//lesson[type='Семинар']")
    lectures_in_classroom_102 = xml_tree.xpath("//lesson[type='Лекция' and classroom='102[3]']")
    instructors_for_practical_lessons_in_classroom_511 = xml_tree.xpath("//lesson[type='Семинар' and classroom='511[3]']/instructor")
    last_lessons_per_day = xml_tree.xpath("//day/lesson[last()]")
    total_lessons_count = xml_tree.xpath("count(//lesson)")
    
    print("Все занятия:")
    for lesson in all_lessons:
        print(etree.tostring(lesson, encoding=str))
    ```
    
    ```python
    # XSL-Преобразование
    def transform(xml_file, xslt_file, output_file):
        xml = etree.parse(xml_file)
        xslt = etree.parse(xslt_file)
        transform = etree.XSLT(xslt)
        result = transform(xml)
        
        with open(output_file, 'w') as f:
            f.write(str(result))
    
    transform("schedule.xml", "schedule_xslt_txt.xslt", "xslt-results.txt")
    transform("schedule.xml", "schedule_xslt_html.xslt", "xslt-results.html")
    ```
    
8. Решить аналогичные задачи для формата JSON (2 балла).
    
    ```json
    {
      "schedule": {
        "group": "ПИ-20-2",
        "days": [
          {
            "name": "Понедельник",
            "date": "2023-11-20",
            "lessons": [
              {
                "subject": "Проектирование архитектуры программ.систем",
                "classroom": "102[3]",
                "instructor": "Хаберев Е.А.",
                "start_time": "09:40",
                "end_time": "11:00",
                "type": "Лекция"
              },
              {
                "subject": "Научно-исследовательский семинар",
                "classroom": "511[3]",
                "instructor": "Викентьева О.Л.",
                "start_time": "11:30",
                "end_time": "12:50",
                "type": "Семинар"
              },
              {
                "subject": "Управление программными проектами",
                "classroom": "511[3]",
                "instructor": "Шестакова Л.В.",
                "start_time": "13:10",
                "end_time": "14:30",
                "type": "Семинар"
              }
            ]
          },
          {
            "name": "Вторник",
            "date": "2023-11-21",
            "lessons": [
              {
                "subject": "Технологии и алгоритмы высокопроизводительных вычислений",
                "classroom": "102[3]",
                "instructor": "Замятина Е.Б.",
                "start_time": "09:40",
                "end_time": "11:00",
                "type": "Лекция"
              },
              {
                "subject": "Технологии и алгоритмы высокопроизводительных вычислений",
                "classroom": "509[3]",
                "instructor": "Замятина Е.Б.",
                "start_time": "09:40",
                "end_time": "11:00",
                "type": "Семинар"
              }
            ]
          },
          {
            "name": "Среда",
            "date": "2023-11-22",
            "lessons": [
              {
                "subject": "Средства BI для управления процессами и задачами",
                "classroom": "509[3]",
                "instructor": "Комиссаров К.А.",
                "start_time": "08:10",
                "end_time": "09:30",
                "type": "Семинар"
              },
              {
                "subject": "Средства BI для управления процессами и задачами",
                "classroom": "102[3]",
                "instructor": "Комиссаров К.А.",
                "start_time": "09:40",
                "end_time": "11:00",
                "type": "Лекция"
              }
            ]
          },
          {
            "name": "Четверг",
            "date": "2023-11-23",
            "lessons": [
              {
                "subject": "Проектирование архитектуры программ.систем",
                "classroom": "509[3]",
                "instructor": "Банников Р.Ю.",
                "start_time": "11:30",
                "end_time": "12:50",
                "type": "Семинар"
              },
              {
                "subject": "Академ. письмо на анг.языке",
                "classroom": "501[3]",
                "instructor": "Туляков Д.С.",
                "start_time": "13:10",
                "end_time": "14:30",
                "type": "Семинар"
              }
            ]
          },
          {
            "name": "Пятница",
            "date": "2023-11-24",
            "lessons": [
              {
                "subject": "Интеллектуальные системы",
                "classroom": "дист.[0]",
                "instructor": "Мухин О.И.",
                "start_time": "09:40",
                "end_time": "11:00",
                "type": "Семинар"
              },
              {
                "subject": "Интеллектуальные системы",
                "classroom": "дист.[0]",
                "instructor": "Мухин О.И.",
                "start_time": "11:30",
                "end_time": "12:50",
                "type": "Лекция"
              },
              {
                "subject": "Технологии анализа данных в сети Интернет",
                "classroom": "дист.[0]",
                "instructor": "Мухин О.И.",
                "start_time": "13:10",
                "end_time": "14:30",
                "type": "Семинар"
              },
              {
                "subject": "Технологии анализа данных в сети Интернет",
                "classroom": "дист.[0]",
                "instructor": "Мухин О.И.",
                "start_time": "15:00",
                "end_time": "16:20",
                "type": "Лекция"
              }
            ]
          },
          {
            "name": "Суббота",
            "date": "2023-11-25",
            "lessons": [
              {
                "subject": "Управление программными проектами",
                "classroom": "дист.[0]",
                "instructor": "Климов Б.А.",
                "start_time": "11:30",
                "end_time": "12:50",
                "type": "Лекция"
              }
            ]
          }
        ]
      }
    }
    ```
    
    Разработать JSONPath-запросы:
    
    1. Получить все занятия на данной неделе
        
        ```json
        $.schedule.days[*].lessons[*]
        ```
        
    2. Получить все аудитории, в которых проходят занятия.
        
        ```json
        $.schedule.days[*].lessons[*].classroom
        ```
        
    3. Получить все практические занятия на неделе.
        
        ```json
        $.schedule.days[*].lessons[?(@.type == 'Семинар')]
        ```
        
    4. Получить все лекции, проводимые в указанной аудитории.
        
        ```json
        $.schedule.days[*].lessons[?(@.type == 'Лекция' && @.classroom == '102[3]')]
        ```
        
    5. Получить список всех преподавателей, проводящих практики в указанной аудитории.
        
        ```json
        $.schedule.days[*].lessons[?(@.type == 'Семинар' && @.classroom == '511[3]')].instructor
        ```
        
    6. Получить последнее занятие для каждого дня недели.
        
        ```json
        $.schedule.days[*].lessons[-1:]
        ```
        
    7. Получить общее количество занятий за всю неделю.
        
        ```json
        $..lessons.length()
        ```
        
    
    Схема JSON:
    
    ```json
    {
      "$schema": "http://json-schema.org/draft-07/schema#",
      "type": "object",
      "properties": {
        "schedule": {
          "type": "object",
          "properties": {
            "group": {
              "type": "string"
            },
            "days": {
              "type": "array",
              "items": {
                "type": "object",
                "properties": {
                  "name": {
                    "type": "string"
                  },
                  "date": {
                    "type": "string",
                    "format": "date"
                  },
                  "lessons": {
                    "type": "array",
                    "items": {
                      "type": "object",
                      "properties": {
                        "subject": {
                          "type": "string"
                        },
                        "classroom": {
                          "type": "string"
                        },
                        "instructor": {
                          "type": "string"
                        },
                        "start_time": {
                          "type": "string",
                        },
                        "end_time": {
                          "type": "string",
                        },
                        "type": {
                          "type": "string"
                        }
                      },
                      "required": ["subject", "classroom", "instructor", "start_time", "end_time", "type"]
                    }
                  }
                },
                "required": ["name", "date", "lessons"]
              }
            }
          },
          "required": ["group", "days"]
        }
      },
      "required": ["schedule"]
    }
    ```
    
    Преобразование в HTML:
    
    ```python
    pip install json2html
    ```
    
    ```python
    import json
    from json2html import json2html
    
    # Загрузка JSON
    with open("schedule.json", "r", encoding="utf-8") as json_file:
        data = json.load(json_file)
    
    # Преобразование JSON в HTML
    html_result = json2html.convert(json=data)
    with open("JSON2HTML-results.html", "w", encoding="utf-8") as html_file:
        html_file.write(html_result.encode("utf-8").decode("utf-8"))
    ```
