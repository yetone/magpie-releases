class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4815/magpie-cli-darwin-arm64"
      sha256 "e606dffb4ba19e3729dcdb4291f0bac98b4b3da4e4124500d5b3fb238d51a444"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4815/magpie-cli-darwin-amd64"
      sha256 "94bef566ad4f3db06bfaa8c0bf07c7c581df194573e3f5fe803b51c569d69cc3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4815/magpie-cli-linux-arm64"
      sha256 "4f223362ca7a0102263c30602978430373d5375d557a2603863da204e82545ed"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4815/magpie-cli-linux-amd64"
      sha256 "9c2173eb822178c74885919094609d931c1700840f9d8f11eb9115619d2661eb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
