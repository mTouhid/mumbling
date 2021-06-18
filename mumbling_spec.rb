def mumble_letters(letters)
    return "A" if letters == "a"
    return "B" if letters == "b"
    ""
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
end