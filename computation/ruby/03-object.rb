# Ruby看起来和其他动态编程语言很像，但有一个很重要的区别：每个值都是一个对象
# 而且对象彼此之间靠发送消息进行通信
# 每个对象都有自己的方法集合，这些方法决定了它如何响应特定的消息
# 一个消息有一个名字，并且根据需要可以有一些参数
# 一个对象收到一个消息的时候，它对应的方法就会使用消息中的参数作为自己的参数执行
# 这就是Ruby完成全部工作的方式
# 甚至`1+2`都意味着“使用参数2给对象1发送一个叫做+的消息
# 而对象1都一个处理哪个消息的方法`#+`


# 可以使用def定义自己的方法
o = Object.new
def o.add(x, y)
    x + y
end
p o.add(1, 2)
# 这里我们通过向一个特殊内建对象Object发送new消息来新建一个对象
# 新对象创建之后，在其上定义一个叫做`#add`的方法。`#add`方法把它的两个参数加在一起，并返回结果
# 因为一个方法中最后执行的表达式的值将被自动返回，所以并不需要一个显式的return
# 在使用2和3作为参数向那个对象发送add消息后，`#add`方法就会执行，然后就得到我们想要的结果


# 通常情况下，在发送消息时要写上接收对象和消息名并用圆点分隔，比如`o.add`
# 但Ruby会一直追踪当前对象（`self`），这样在向当前对象发送消息时只需写上一个消息名，接收对象可以不必显式写出来
# 例如，在一个方法定义内部，当前对象总是接收消息并执行此方法的对象，因此在一个特定对象的方法内部，向同一个对象发送其他消息时，可不必显式提及
def o.add_twice(x, y)
    add(x, y) + add(x, y)
end
p o.add_twice(2, 3)


# 在所有的方法定义之外，当前对象是一个叫main的特殊顶层对象
# 任何没有指明接收者的消息都会被发送给它
# 同样，任何没有指明对象的方法定义都可以通过main使用
def multiply(a, b)
    a * b
end
p multiply(1, 2)
