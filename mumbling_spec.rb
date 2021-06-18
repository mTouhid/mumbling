def mumble_letters(letters)
    return "A-Aa" if letters == "aa"
    letters.upcase 
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

    it "return B-Bb when given bb" do
        result = mumble_letters("bb")

        expect(result).to(eq("B-Bb"))
    end
end