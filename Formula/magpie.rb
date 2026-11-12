class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3954/magpie-cli-darwin-arm64"
      sha256 "95734cb181d7bdd5dc442207ee1a4fb1ecb8ddd935250bb9a586c36183551413"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3954/magpie-cli-darwin-amd64"
      sha256 "8c1c6bea8a7afdb431e0faa31fe2785fc686f6b994a0dbb2f35d745c87055e00"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3954/magpie-cli-linux-arm64"
      sha256 "1853a98dd35662cd4aa2372350ee4792fcf39fc83c5fceb1f7efec4e5081d60d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3954/magpie-cli-linux-amd64"
      sha256 "17cb0386180bb6cc4a0258a2b692ecb1271fa39c958037150bad224b6fc0004a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
