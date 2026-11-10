class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3502/magpie-cli-darwin-arm64"
      sha256 "ca757217def7a4bc212ecb0a65bfdc660d74df3984c5df31932bc2731447a395"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3502/magpie-cli-darwin-amd64"
      sha256 "d26f78af47f18ac497ea7ad521eb691231f605f47a535ead2958a199ebdfe23b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3502/magpie-cli-linux-arm64"
      sha256 "4f8335df09c1e0b50b1b943357c82489c19295436937a6eec8dd2acccaf9ded9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3502/magpie-cli-linux-amd64"
      sha256 "1917cc0ecb8366dc7ff07ce9587a4ee77ac3596fd9b4e2d35e69b34f66663384"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
