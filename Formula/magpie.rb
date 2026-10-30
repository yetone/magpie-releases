class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2253/magpie-cli-darwin-arm64"
      sha256 "b69e6989cccbf05e60c46bccfe028011da456e3fc4375bfd2cd06b4f44d915bf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2253/magpie-cli-darwin-amd64"
      sha256 "c71c3949df2e6131181b97b063fe7a733909852d389356461ccc1bf2355b3b03"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2253/magpie-cli-linux-arm64"
      sha256 "e1750a0d7f3694dc17ec7305d055436250f2ddfb2fc280089f6ddb3c2cdf855d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2253/magpie-cli-linux-amd64"
      sha256 "bbbb4659db8f819a20605fcd657cd5c6b092ea856b8e7ec3f6b780affe80b3e0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
