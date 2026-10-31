class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2345/magpie-cli-darwin-arm64"
      sha256 "193cd32a33fbe201fb59029b9e32903c0c639b79b04208f754452e041ef2e55a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2345/magpie-cli-darwin-amd64"
      sha256 "ac204f022b1f22b1cf7e3679ed91bd364b3108c5cc957df6e9318ad3367ca64e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2345/magpie-cli-linux-arm64"
      sha256 "aadca19f69be07a22c17ca03f17d0b6ebd21ddcc40f7b013475c7b43c1e5aa7e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2345/magpie-cli-linux-amd64"
      sha256 "5c429004046bb030e5bb1bfa0bb272603d866fbafb73b2e3c44f88b4d2693de2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
