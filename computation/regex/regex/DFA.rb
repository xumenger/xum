require "./FARule.rb"

class DFARulebook < Struct.new(:rules)
    def next_state(state, character)
        rule_for(state, character).follow
    end

    def rule_for(state, character)
        rules.detect { |rule| rule.applies_to?(state, character) }
    end
end


class DFA < Struct.new(:current_state, :accept_states, :rulebook)
    def accepting?
        accept_states.include?(current_state)
    end

    def read_character(character)
        self.current_state = rulebook.next_state(current_state, character)
    end

    def read_string(string)
        string.chars.each do |character|
            read_character(character)
        end
    end
end


class DFADesign < Struct.new(:start_state, :accept_states, :rulebook)
    def to_dfa
        DFA.new(start_state, accept_states, rulebook)
    end

    def accepts?(string)
        # tap 方法对一个代码块求值，然后返回调用它的对象
        to_dfa.tap{ |dfa| dfa.read_string(string) }.accepting?
    end
end


