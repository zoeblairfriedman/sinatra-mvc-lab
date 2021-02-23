class PigLatinizer

def piglatinize(text)
    split_text = text.split(" ")
    split_text.map do |word|
        pigwords(word)
    end.join(" ")    
end

def pigwords(word)
    vowels = %w(a e i o u A E I O U)
    if word.size == 1 || vowels.include?(word[0])
        word << "way"
    else 
        until vowels.include?(word[0])
            letter = word.slice!(0)
            word << letter
        end
        word << "ay"
    end
end

end

