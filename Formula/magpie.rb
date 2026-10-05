class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1047/magpie-cli-darwin-arm64"
      sha256 "2cd27ceb185dafec357471c38b7944cc21d7632e6b66f965967ed082754a407d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1047/magpie-cli-darwin-amd64"
      sha256 "05e306e247d143cf7563a78397d15059949ba9368229558561f1df9785afd6d5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1047/magpie-cli-linux-arm64"
      sha256 "54d33fc290496df0942107c4289706e10023b3c043c44c5a362a06136b063239"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1047/magpie-cli-linux-amd64"
      sha256 "05c1b4b8f8c58af7b1c9e3001352f1ba0c55d17124b15cdad02ef38b9bb7d8a8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
