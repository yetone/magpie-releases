class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1850/magpie-cli-darwin-arm64"
      sha256 "00ed1251e4a74ff36a729ce31582a0046329053a4992f0ae4409fdd133c67a9b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1850/magpie-cli-darwin-amd64"
      sha256 "57a27a035b293b8bd40ca449b8d42ce264c07928c1724d37a67e8a53455f3219"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1850/magpie-cli-linux-arm64"
      sha256 "3c7f354a1ab186bdd2bbbe58a92c66810739d43bc846f4de94ac0a8b69e26d71"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1850/magpie-cli-linux-amd64"
      sha256 "3108a4984c6c2d94b03cec1f44e442b38ccd832625fda4f86d0034a59aac1954"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
