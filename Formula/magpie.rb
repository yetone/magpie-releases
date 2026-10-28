class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1943/magpie-cli-darwin-arm64"
      sha256 "bc2d2dc99d4d1af89821a7832779515007aa7c67d5e7010878282f766b0623cd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1943/magpie-cli-darwin-amd64"
      sha256 "fdd6f36f3a0ef7affd76488b930961ee2cf06530350642aeb0ca7c45b3ce64a1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1943/magpie-cli-linux-arm64"
      sha256 "7fd0defabedb1622295c8c902077bc0a7bda11ddfc3441cad758540bf88daea7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1943/magpie-cli-linux-amd64"
      sha256 "fccece19a93849722a7d0d1fa6ab76a73b90e5064e8d6e15ffcc8b815ef0ac80"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
