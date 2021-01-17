<div dir = rtl>

<div align = "center">

# السلام عليكم ورحمة الله وبركاته
## --{ القواميس }--
## الدرس السادس - 06

</div>

اهلا بكم في درس جديد وهو القواميس  
وهي نوع من انواع ال`datastructure` تخزن بيانات  بطريقة معينة  
قد تتشابه مع المصفوفات في بعض الامور لكنها تظل مختلفة تماما عنها

<div dir = ltr>

```swift
    var x := {}
```
</div>

هنا عرفنا قاموس فارغ يدعى `x` نحن هنا نستخدم `{ }` على عكس المصفوفات التى كنا نستخدم `[ ]`

عناصر القاموس تتكون من `key` و `value`، في المصفوفة كنا نستخدم ال `index` لاحضار القيمة `value`  
اما هنا فنحن نستخدم `key` بدلا من ال `index` لاحضار القيمة


عند تخزين قيمة يجب ان تعطيها المفتاح الخاص بها، هذا المفتاح قد يكون جملة او رقم وليس مجرد ارقام مثل ال `index` 

تكتب `المفتاح` ثم `:` ثم `القيمة`  

<div dir = ltr>

```swift
    var x = {key1: value1, key2: value2}
```
</div>

وتفصل بين القيم ب `,`
<div dir = ltr>

```swift
    var dict = {"name" : "Ahmed", "age" : 20}
```
</div>

فهنا لدينا قاموس يدعى `dict` به قيمتين القيمة `"Ahmed"` والقيمة `20` 

يمكنك كتابتها بهذا الشكل لجعلها اوضح للقراءه
<div dir = ltr>

```swift
    var dict = {
        "name" : "Ahmed",
        "age" : 20
        }
```
</div>

## `للوصول للعناصر`
للوصول لتلك القيم سنستخدم المفتاح الخاص بها

<div dir = ltr>

```swift
    var dict = {
        "name" : "Ahmed",
         "age" : 20
         }

    print(dict["name"]) # it will print "Ahmed"
    print(dict["age"])  # it will print 20

    # to access the value use : DictName[KeyOfValue]
```
</div>

 عن طريق كتابة اسم القاموس ثم اسم المفتاح ما بين `[ ]`  
 كما هو موضح في المثال اننا كتبنا `dict["name"]` للوصول لقيمة `"ahmed"`
وكتبنا `dict["age"]` للوصول لقيمة `20`

<div dir = ltr>

```swift
    var dict = {
        "name" : "Ahmed",
        100 : "hello"
        }

    # if the key is string, you can access its value by dot DictName.KeyOfValue without " "

    print(dict.name) # we use dot because the key is a string
    print(dict[100]) # we can't use dot because the key is a number not a string
```
</div>

هنا في حالة كان المفتاح جملة `string`  فيمكننا الاستغناء عن ال `[ ]` فيمكننا اختصار الامر ب `dict.name` ولاحظ كتبنا المفتاح بدون `" "`  
اما في حالة كان المفتاح ليس `string` فلا يمكننا استخدام ال `dot` بالطبع

يمكنك ان تضيف عناصر في قواميس بهذا الشكل  

## `لاضافة عناصر`

<div dir = ltr>

```swift
    var dict = {
        "name" : "Ahmed",
        100 : "hello"
        }

    dict["age"] = 20
    dict["level"] = 5

    # to add : DictName[KeyName] = Value

    # if the key already exit its value will update
    # dict[100] = "hi" 
    # the value of key 100 will be updated from "hello" to "hi"
```
</div>

تكتب `اسم القاموس` ثم تكتب `المفتاح` داخل `[ ]` ثم تسند له `القيمة`  
هكذا `dict["age"] = 20` اضفنا قيمة جديدة وهي `20` والمفتاح خاصتها هو `"age"`  
ان كان المفتاح موجود بالفعل فسوف يتم تحديث القيمة وان لم يكن موجود فسيضيفه في القاموس

القيمة ليس شرطًا ان تكون مجرد جمل او ارقام، يمكن للقيمة ان تكون مصفوفة بحد ذاتها

<div dir = ltr>

```swift
    var dict = {
        "name" : "Ahmed",
        "levels" : [1, 2, 3, 4]
        }

    # to access arrays inside dictionary
    # use dict["levels"][index] or dict.levels[index]
```
</div>

هكذا لدينا قيمة عبارة عن مصفوفة ونستطيع الوصول لها عن طريف المفتاح `"levels"`   
## `لكن كيف نصل لعناصر المصفوفة ؟`  
بكل سهولة هكذا .. `dict["levels"][0]` هكذا سيحضر اول عنوان `index` `0` من المصفوفة اللي بشير لها المفتاح `"levels"`  
او لان المفتاح نوعه `string` فيمكنك اختصار الامر ل `dict.levels[0]` انه نفس الامر

تسطيع ايضا جعل القيمة عبارة عن قاموس
<div dir = ltr>

```swift
    var dict = {
        "name" : "Ahmed",

        "subDict" : {
            "fakeName" : "Ali",
            "sayHello" : "hello"
            }
        }

    # to access subDict use dict["subDict"]["fakeName"] or dict.subDict.fakeName
    # DictName[SubDictName][KeyName] or DictName.SubDictName.KeyName
```
</div>

هكذا اصبح لدينا قاموس داخل قاموس ان اردت ان الوصول لقيمة `"Ali"` داخل القاموس `"subDict" `  
فهنستعمل `dict["subDict"]["fakeName"]` او `dict.subDict.fakeName`


## `functions of dictionary`
القواميس لديها بعض الدوال الجاهزة الخاصة فقط بها  
سنستعرض القليل منها ويمكنك ان تقرأ وان تعرف اكثر عن باقي الدوال في المقالات المرفقة مع الدرس  

<div dir = ltr>

```swift
    var dict = {
        "name" : "Ahmed",
        "age" : 20
    }
    if dict.has("name"):
        print("the element is exit")
    else:
        print("the element is exit")

    # dict.has("fakeName") it will return false because "fakeName" key not exit 
```
</div>

دالة `has` تاخد قيمة المفتاح وتبحث هل هو موجود في القاموس ام لا  
ان كان موجود فسيرجع `true` عدا ذلك سيرجع `false`

<div dir = ltr>

```swift
   var dict = {
        "name" : "Ahmed",
        "age" : 20
    }

    print(dict["name"]) # it will print "Ahmed"
    print(dict.get("name")) # it also will print "Ahmed"
```
</div>

دالة `get` تحضر قيمة العنصر ان اعطيتها المفتاح, لكن ما الفرق بينها وبين طريقة `[ ]` ؟  
مشكلة احضار العنصر عن طريق `[ ]`
انه اذا كان العنصر غير موجود فسيعطيك قيمة `null` وهذا سيسبب مشاكل لك  
لتفادي الامر فيمكنك اعطاء متغير اضافي لل `get` لارجاعه بدلا من ارجاع `null`


<div dir = ltr>

```swift
   var dict = {
        "name" : "Ahmed",
        "age" : 20
    }

    print(dict["level"]) # it will return null, maybe cause an error
    print(dict.get("level", 5)) # it return 5
```
</div>

معنى هذا الامر `dict.get("level", 5)` ارجع قيمة `level` وان لم تكن موجودة فأرجع `5`  
انت تحدد ما الذي سيرجع في حالة لم يكن المطلوب موجود

## `مقالات` 
هنا بعض المقالات التى تعطي شرحًا مفصلًا عن القواميس ودوالها

* [Godot's Docs](https://docs.godotengine.org/en/stable/classes/class_dictionary.html)
* [Andrew Wilkes](https://gdscript.com/dictionaries)


</div> 