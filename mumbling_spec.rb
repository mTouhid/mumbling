def mumble_letters(letters)
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
end