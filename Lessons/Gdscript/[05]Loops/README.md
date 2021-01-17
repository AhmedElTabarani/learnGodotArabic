<div dir = rtl>

<div align = "center">

# السلام عليكم ورحمة الله وبركاته
## --{ الحلقات التكرارية }--
## الدرس الخامس - 05

</div>

اهلا بكم في درس جديد وهو تكملة لل `control statements` وهي الحلقات التكرارية `loops`  

من انواعها `for, while` وهي تكرر اسطر من الاكواد بعدد محدد

## `for`
<div dir = ltr>

```swift
    for Variable in Steps:
        doSomething()
```
</div>


نكتب `for` يليها `متغير` ثم `in` ثم `عدد مرات التكرار`

<div dir = ltr>

```swift
    for i in 5 :
        print("hello") # it will be print "hello" 5 times
```
</div>

هكذا سيتم `تكرار` امر الطباعة ` 5 مرات` .. يمكنك تكرار اي اسطر من الاكواد الامر يعتمد على ماذا ستكرر  
فمثلًا ان اردت ان تستدعى` 10 اعداء` في مكان ما  .. هل ستكتب كود الاستدعاء` 10 مرات` ؟ مع انه نفس الكود تمامًا  
هنا يأتي فائدة ال `loop` انك تكتب الكود `مرة واحدة` ثم `تكرره كما تشاه` 

ايضا ينطبق عليها ال `indentation` 

<div dir = ltr>

```swift
    for i in 5:
        print(i) # i will be from 0 to 4
```
</div>

عليك ان تدرك ان قيمة المتغير `i` الذي وضعناه هو في الحقيقة عداد يعد عدد اللفات .. فلو افترضنا ان ال `for` ستتكرر `n` مرة فقيمة المتغير `i` ستبدأ من `0` لـ `n-1`

<div dir = ltr>

```swift
    for i in range(5):
        print(i) # i will be from 0 to 4
```
</div>

لدينا دالة مهمة تستخدم وهي ال `range` تسطيع من خلالها تحديد مجال قيم ال `i`  
 وان استخدمتها ووضعت لها قيمة عددية واحدة فسيفعل نفس الأمر انه سيلف بعدد مرات ال `n` مثل الكود الذى في الاعلى

<div dir = ltr>

```swift
    for i in range(3, 8):
        print(i) # i will be from 3 to 7, loops 5 times
```
</div>

الفكرة في هذه الدالة انك يمكنك ان تحدد مجال لقيمة `i` يبدأ من اين و ينتهي اين ... مثل الكود الذي بالاعلى فقيمة `i` ستكون من `3` لـ `7` وسيلف ويتكرر الكود `5` مرات فقط


<div dir = ltr>

```swift
    for i in range(2, 20, 4):
        print(i) # i will be from 2, 6, 10, 14, 18 loops 5 times
```
</div>

تستطيع ارسال متغير ثالث يكون هو معدل الزيادة فهكذا قيمة `i` ستبدأ من `2` وتنتهي عند ال `20` لكن بمعدل زيادة يساوي `4`  
في المثال الذي في الاعلى قيمة `i` انتهت عند ال `18` لان الحد هو `20` فانت لا تستطيع تجاوزه بمعنى انه ان اضفت `4` الى `18`   
فقيمة `i` 
ستكون `22` وهكذا انت قد تجاوزت ال `20` لذلك انتهت ال `for` عند ال `18`

يمكننا تبسيط الدالة بالكامل هكذا  

<div dir = ltr>

```swift
    range(start, end, jump)
```
</div>

قيمة `i` ستبدأ من `start` وتنتهي عند `end - 1` بمعدل زيادة قيمته `jump`  

الان سنتكلم عن كلمتين مهمتين نستخدم في ال `for` وهما ال `break` وال `continue`
## `break`

<div dir = ltr>

```swift
    for i in range(5):
        if i == 3:
            break # it will end the loop and exit
        
        print(i)
```
</div>

ال `break` ينهي التكرار ويخرج من ال `for` بمعنى انه عندما يصل ال `i` الى `3` اخرج من ال `for`  
فهكذا سيتم طباعة` 0 1 2` ثم يخرج عند `3`  

## `continue`
<div dir = ltr>

```swift
    for i in range(5):
        if i == 3:
            continue # it will ignore this loop, and not continue the code below
        
        print(i)
```
</div>

ال `continue` تتجاهل اللفة الحالية وكل اسطر الاكواد التى تحتها وتكمل  
بمعني انه سيتم طباعة `0 1 2 4` تم تجاهل `3` لكن مع ذالك ال `for` استمرت هي فقط تجاهلت اللفة التى كانت ال `i` تساوي `3`

حسنا تستطيع ان تتحكم بشكل كامل بقيمة المتغير `i` في اثناء عملية التكرار كما ترى  
 لكن الأمر لا يختصر على الارقام فقط .. تستطيع ان تلف على عناصر اي مصفوفة  
 وتجعل المتغير `i` قيمتة في كل لفة تساوي عنصر عنصر من المصفوفة

 
<div dir = ltr>

```swift
    for i in [2, 8, -1, 0, 7]:
        print(i) # each loop i will be 2, 8, -1, 0, 7
```
</div>

بمعنى ان قيمة `i` في اللفة الاولى ستكون `2` و في اللفة الثانية ستكون `8` وفي الثالثلة ستكون `-1` وهكذا  
فقيمته ستساوي عنصر عنصر من قيمة المصفوفة المعطاه

<div dir = ltr>

```swift
    var arr := [2, 8, -1, 0, 7]
    for i in arr:
        print(i) # each loop i will be 2, 8, -1, 0, 7
```
</div>

يمكنك ان تستخدم اسم المصفوفة نفسها هكذا

<div dir = ltr>

```swift
    var str := "ahmed"
    for i in str:
        print(i) # each loop i will be 'a', 'h', 'm', 'e', 'd'
```
</div>


## `while`

ال `while` تكرر الكود بناءًا على شرط محدد

<div dir = ltr>

```swift
    while Condition:
        doSomething()
```
</div>

تكتب هكذا كلمة `while` ثم `شرط ما` يكون بصيغة `boolean` بالطبع

<div dir = ltr>

```swift
    var i := 0
    while i < 5:
        print(i)
        i += 1 # increase i by 1
```
</div>

هنا حرفيا كأنك تقول `طالما` قيمة `i` اصغر من `5` نفذ أسطر الكود التالية  
فهو سيكرر الكود بناءًا على الشرط المحدد فلو الشرط اعطى `true` فانه سينفذ وسيتوقف عندما لا يتحقق الشرط و يعطي `false`

ايضا ينطبق عليها ال `indentation`  
طبعا يمكنك استخدام `break` و `continue` في ال `while`

<div dir = ltr>

```swift
var i := 0
while i < 20
    if i < 5:
        continue

    if i == 15:
        break

    print(i)
# it will print : 5 6 7 8 9 10 11 12 13 14
# it will skip 0 1 2 4
# and exit from while-loop when i = 15
```
</div>

## `مقالات` 
هنا بعض المقالات التى تعطي شرحًا مفصلًا عن الحلقات التكرارية  

* [Andrew Wilkes](https://gdscript.com/looping)


</div> 