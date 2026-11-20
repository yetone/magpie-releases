class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4583/magpie-cli-darwin-arm64"
      sha256 "2109772619d247da2875127ebada60287611c51a04cb2ef24ee54a3e577558bb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4583/magpie-cli-darwin-amd64"
      sha256 "e7a8d1c8bcdf48696398c24196ac0321c4f35d051caf1106514b62fec27ea901"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4583/magpie-cli-linux-arm64"
      sha256 "0f175f2db70b9be727d138b04dbac996c4726008a50f2020f97211525b24ac90"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4583/magpie-cli-linux-amd64"
      sha256 "463818c973484d6c26edd6f4cc493d09d058d85cf2269fde5552455fc377b1a1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
