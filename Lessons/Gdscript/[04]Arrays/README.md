<div dir = rtl>

<div align = "center">

# السلام عليكم ورحمة الله وبركاته
## --{ المصفوفات }--
## الدرس الرابع - 04

</div>

اهلا بكم في درس جديد وهو ال `Arrays` المصفوفات وهي نوع من انواع ال `datastructure` اي تخزن البيانات بطريقة مهينة  
وهي التى تسمح لنا بتخزين مجموعة من القيم المختلفة في متغير وحيد

<div dir = ltr>

```swift
var x := []
```
</div>

هكذا المتغير `x` اصبح يساوي مصفوفة لكن تلك المصفوفة فارغة  
يمكننا ان نعرف المصفوفة باسلوب اخر

<div dir = ltr>

```swift
var x := Array()
```
</div>


## `لاضافة عناصر`
ان اردنا اضافة عناصر فيها فسنستعمل دالة تدعى `append`

<div dir = ltr>

```swift
var x := []
x.append(5)
# the array x contains : [5]
```
</div>

دالة `append` هي دالة خاصة بال `arrays` تستخدم فقط مع عناصر المصفوفات لادخال القيم فيها  
هكذا اصبح اول عنصر في المصفوفة `x`  هو `5`، تستطيع اضافة `ارقام` او `جمل` او حتى قيم `boolean`

<div dir = ltr>

```swift
var x := []
x.append(5)
x.append("hi")
x.append(true)
x.append(7.25)
# the array x contains :  [5, "hi", true, 7.25]
```
</div>

تستطيع ادخال عناصر المصفوفة في لحظة التعريف

<div dir = ltr>

```swift
var arr := [5, "hi", true, 7.25]
```
</div>

هكذا اصبح لدينا مصفوفة من العناصر تدعى `arr`

## `كيف نستخدم اونتعامل مع هذه العناصر ؟`
لكي تتعامل مع عناصر المصفوفة عليك ان تعرف ان كل عنصر لديه عنوان تستطيع الوصول اليه من خلاله هذا العنوان نسميه `index`  

<div dir = ltr>

```swift
var arr := [5, "hi", true, 7.25]
# index ->  0   1      2     3
```
</div>

اول عنصر في المصفوفة يبدأ من `index` رقم `0` واخر عنصر يكون عنوانه هو `n - 1` حيث `n` عدد عناصر المصفوفة  
تسطيع الوصول لكل عنصر عن طريقة كتابة ال `index` الخاص به في اقواس `[ ]` بعد اسم المصفوفة، هكذا

<div dir = ltr>

```swift
var arr := [5, "hi", true, 7.25]

print(arr[0]) # it will print 5
print(arr[2]) # it will print true

# to access the element use : ArrayName[IndexOfElement]
```
</div>

هكذا يكون `arr[0]` هو اول عنصر و` arr[1]` هو ثاني عنصر و `arr[2]` هو الثالث وهكذا ..  

العناصر ايضًا لدييها عنوان ثانوي وهو عنوان عكسي بالسوالب

<div dir = ltr>

```swift
var arr := [5, "hi", true, 7.25]
# index -> -4  -3     -2    -1
```
</div>

اي يمكنك استخدام العناوين هذه او العناوين الطبيعية

<div dir = ltr>

```swift
var arr := [5, "hi", true, 7.25]

print(arr[-1]) # it will print 7.25
print(arr[-3]) # it will print "hi"

```
</div>

الجدير بالذكر ان ال `string` بحد ذاته `array،` لكنه مصفوفة خاصة بالحروف اي انه `array of char` لا يقبل سوى بقيم من النوع `char`

## `functions of arrays`
كما لاحظت فالمصفوفات لديها بعض الدوال الجاهزة الخاصة فقط بها  
سنستعرض القليل منها ويمكنك ان تقرأ وان تعرف اكثر عن باقي الدوال في المقالات المرفقة مع الدرس  

<div dir = ltr>

```swift
var arr := [1, 2, 3]

arr.append(4)
```
</div> 

هكذا سيتم اضافة العنصر `4` في نهاية المصفوفة فتصبح المصفوفة <span dir = ltr> `[1, 2, 3, 4]` </span>  

<div dir = ltr>

```swift
var arr := [1, 2, 3, 4]

var n := arr.size() 
```
</div> 

دالة ال `size` ترجع لنا حجم المصفوفة و هي عدد عناصرها فكذا قيمة `n` ستكون `4` لان المصفوفة `arr` تحتوي على `4` عناصر

<div dir = ltr>

```swift
var arr := [1, 2, 3, 4]

var first := arr.back() 
var last := arr.front() 
```
</div> 

دالة ال `back` ترجع لنا اخر عنصر في المصفوفة وفي حالتنا سيكون رقم `4`  
دالة ال `front` ترجع لنا اول عنصر في المصفوفة وفي حالتنا سيكون رقم `1`  


حسنًا لا اريد ان اطيل عليكم، هذه اهم الأشياء الاساسية في المصفوفات

## `مقالات` 
هنا بعض المقالات التى تعطي شرحًا مفصلًا عن المصفوفات ودوالها  

* [Godot's Docs](https://docs.godotengine.org/en/stable/classes/class_array.html#class-array-method-append-array) 
* [Andrew Wilkes](https://gdscript.com/arrays) 

</div>
