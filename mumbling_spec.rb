def mumble_letters(letters)
    return "" if letters.empty?

    letters
        .split("")
        .each_with_index
        .map { |letter, position| (letter * (position + 1)).capitalize }
        .join("-")
end

describe "Mumble letters" do

    it "handles empty string" do
        result = mumble_letters("")

        expect(result).to(eq(""))
    end

    it "returns uppercase A when given a" do
        result = mumble_letters("a")

        expect(result).to(eq("A"))
    end

    it "returns uppercase B when given b" do
        result = mumble_letters("b")

        expect(result).to(eq("B"))
    end

    it "returns uppercase C when given c" do
        result = mumble_letters("c")

        expect(result).to(eq("C"))
    end

    it "returns uppercase A when given an uppercase A" do
        result = mumble_letters("A")

        expect(result).to(eq("A"))
    end

    it "returns A-Aa when given aa" do
        result = mumble_letters("aa")

        expect(result).to(eq("A-Aa"))
    end

    it "returns B-Bb when given bb" do
        result = mumble_letters("bb")

        expect(result).to(eq("B-Bb"))
    end

    it "returns C-Cc when given cc" do
        result = mumble_letters("cc")

        expect(result).to(eq("C-Cc"))
    end

    it "returns A-Bb when given ab" do
        result = mumble_letters("ab")

        expect(result).to(eq("A-Bb"))
    end

    it "returns A-Bb when given aB" do
        result = mumble_letters("aB")

        expect(result).to(eq("A-Bb"))
    end

    it "returns A-Bb-Ccc when given abc" do
        result = mumble_letters("abc")

        expect(result).to(eq("A-Bb-Ccc"))
    end

    it "returns A-Bb-Ccc-Dddd when given abcd" do
        result = mumble_letters("abcd")

        expect(result).to(eq("A-Bb-Ccc-Dddd"))
    end

    it "returns A-Bb-Ccc-Dddd-Eeeee when given abcde" do
        result = mumble_letters("abcde")

        expect(result).to(eq("A-Bb-Ccc-Dddd-Eeeee"))
    end

end
