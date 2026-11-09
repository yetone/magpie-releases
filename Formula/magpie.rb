class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3472/magpie-cli-darwin-arm64"
      sha256 "a2e688dea6a10f2a0058f4ed19fff512d6bac618245951a77033b9b1766afd02"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3472/magpie-cli-darwin-amd64"
      sha256 "50a38c69d8d4b08f15c0ff05696211673c2680fb3fc7b1109f2a8d16c0fd3cb0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3472/magpie-cli-linux-arm64"
      sha256 "1c21888ce4c163c05d7a3e08ea3bd18fb4d24a38e6e67e6e3a10506685275bdf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3472/magpie-cli-linux-amd64"
      sha256 "2cf8c762506d20fae1d40823e2152bc5d2efd6fd530dd9f85ff9f4cc4f750a24"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
