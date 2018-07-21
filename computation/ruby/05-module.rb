# 另一种共享方法定义的方式实在模块中声明它们
# 这样它们就能被任意类包括进去
module Addition
    def add(x, y)
        x + y
    end
end

class AddingCalculator
    include Addition
end

ac = AddingCalculator.new
p ac.add(10, 2)
