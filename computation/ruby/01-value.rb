# Ruby支持布尔类型、数值型、字符串
p (true && false) || true
p (3 + 3) * (14 / 2)
p 'hello' + ' world'
p 'hello world'.slice(6)


# 一个Ruby符号表示一个名字，是一个轻量级、不可变的值
# 作为字符串的简单化、非内存密集化的替身，符号在Ruby中被广泛使用
# 通常是作为散列表中的键使用。符号字面量的开头会有一个符号
:my_symbol
p :my_symbol == :my_symbol
p :my_symbol == :another_symbol


# 数组
numbers = ['zero', 'one', 'two']
p numbers[1]
numbers.push('three')
p numbers
p numbers.drop(2)
p numbers


# 范围
ages = 19..30
p ages
p ages.entries
p ages.include?(30)


# 散列表
fruit = {'a' => 'apple', 'b' => 'banana', 'c' => 'coconut'}
p fruit
p fruit['b']

dimesions = {width: 1000, height: 2250}
p dimesions
p dimesions[:width]


# 一个proc是一段未经求值的Ruby代码，根据需要进行传递和求值
# 其他语言把这种语言结构称为“匿名函数”或“lambda函数”
multiply = -> x, y { x * y }
p multiply.call(10, 11)
