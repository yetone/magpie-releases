class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2079/magpie-cli-darwin-arm64"
      sha256 "5ec82934e0415106d63dcdebed2944090ca4afa81eaf55d16d607184e061b594"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2079/magpie-cli-darwin-amd64"
      sha256 "014185f004bb55c86f18e10a1a2312b52062a9512bb2531d2fe951fa119fd2f2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2079/magpie-cli-linux-arm64"
      sha256 "d499181d2ecd90d0d627c23e48a35b43136d824306ecda343d5a18a7af38addd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2079/magpie-cli-linux-amd64"
      sha256 "2fd928361457a1e5ce53e8886551792d7b03b1295f5fde108d698af82f860b38"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
