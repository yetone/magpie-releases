class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2782/magpie-cli-darwin-arm64"
      sha256 "53ef45827373570c515bda144cd44d2c7089d1465cd5ebe7f6e6f236cca98574"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2782/magpie-cli-darwin-amd64"
      sha256 "7c90e3545f7733af96461631a02d8d1142f91e0a917c2f80571da3f3b7c3c5cf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2782/magpie-cli-linux-arm64"
      sha256 "4749b2cfb53a8d46f2c53e925dff965c4259387817d5f66fea8f30b6d4909548"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2782/magpie-cli-linux-amd64"
      sha256 "3ca328880b399ec52574703685aa49728059a789dfc04edec16ed31f6152cba8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
