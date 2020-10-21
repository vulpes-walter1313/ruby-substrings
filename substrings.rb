def substrings(str, dictionary_arr)
    subs_hash = {}
    words_in_str = str.split(' ')
    # remove non-alphabet characters from words_in_str
    filtered_words = []
    alpha_regex = /[A-Za-z]/
    words_in_str.each do |str|
        filtered = []
        str.each_char do |c|
            if alpha_regex.match(c)
                filtered.push(c)
            end
        end
        filtered_words.push(filtered.join.downcase)
    end
    p filtered_words # works perfectly
    filtered_words.each do |word|
        # create regex from each word and find matches in the word_arr
        word_regex = Regexp.new(word)
        dictionary_arr.each do |dict_word|
            if word_regex.match(dict_word)
                if subs_hash.include?(word)
                    subs_hash[word] += 1
                else
                    subs_hash[word] = 1
                end
            end
        end
    end

    # add matches to sabs_hash

    # return subs_hash
    subs_hash
end

dictionary = ["below","down","go","going",
                "horn","how","howdy","it","i","low","own",
                "part","partner","sit"]

p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)