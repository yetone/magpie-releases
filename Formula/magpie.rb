class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3763/magpie-cli-darwin-arm64"
      sha256 "3cb8d6d60824252b0206ba0bb0240c2b06e8392331cc15d8bdb122c5e0ff7168"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3763/magpie-cli-darwin-amd64"
      sha256 "377dfed46047f5259c9fc7134e657de891c19fd0fd7d67fff24306eaab74fe55"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3763/magpie-cli-linux-arm64"
      sha256 "a28480461313047b36711b805ff8fa91f3e3406446c5721edeae51ac9fa58012"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3763/magpie-cli-linux-amd64"
      sha256 "24db09087a3756f7397062bcd65ed7051b44eddcfae8967b3a9d1a743ff98fa7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
