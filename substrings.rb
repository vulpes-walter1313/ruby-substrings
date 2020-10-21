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
    # filtered_words now is an array of lowercase words without non-alphabet characters
    dictionary_arr.each do |dict_word|
        # create regex from each word and find matches in the word_arr
        word_regex = Regexp.new(dict_word)
        # iterate over provided string words
        filtered_words.each do |word|
            if word_regex.match(word)
                # add matches of dictionary words to sabs_hash
                if subs_hash.include?(dict_word)
                    subs_hash[dict_word] += 1
                else
                    subs_hash[dict_word] = 1
                end
            end
        end
    end
    # return subs_hash
    subs_hash
end

dictionary = ["below","down","go","going",
                "horn","how","howdy","it","i","low","own",
                "part","partner","sit"]

p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)