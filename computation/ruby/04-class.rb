# 能在许多对象之间共享方法定义是件很便利的事情。在Ruby中我们可以把方法定义放到一个类中
# 然后通过给那个类发送new消息来新建对象
# 所获得的对象是包括方法在内的这个类的实例
class Calculator
    def divide(x, y)
        if 0 == y
            0
        else
            x / y
        end
    end
end
c = Calculator.new
p c.class
p c.divide(10, 2)


# 继承
class MultiplyingCalculator < Calculator
    def multiply(x, y)
        x * y
    end
end
mc = MultiplyingCalculator.new
p mc.class
p mc.class.superclass
p mc.multiply(10, 10)


# 子类中使用super可以调用超类的方法
class BinaryMultiplyingCalculator < MultiplyingCalculator
    def multiply(x, y)
        result = super(x, y)
        result.to_s(2)
    end
end
bmc = BinaryMultiplyingCalculator.new
p bmc.multiply(10, 2)
