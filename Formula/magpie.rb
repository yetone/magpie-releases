class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2526/magpie-cli-darwin-arm64"
      sha256 "86eefe1cc0d88e024400be0cefee93021da948fe42d4d4163b33eacab6ce1541"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2526/magpie-cli-darwin-amd64"
      sha256 "ae428c2bd552bec127254d43e30b7e5185bd7571c288ca90f7fa5ef2bd31fa80"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2526/magpie-cli-linux-arm64"
      sha256 "f3f09b07f633e2a201b170832fca3ba00fbe49f44a7a00e8daecd32d39347943"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2526/magpie-cli-linux-amd64"
      sha256 "ec75397d786e3f8ca613172ffd9e90a2f9b1306dbe242d558507389c6086dc06"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
