class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4135/magpie-cli-darwin-arm64"
      sha256 "6f30106b03ec9830c8cf0d385256db1da75935c4f30a14a41d4e8c538bc77aa6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4135/magpie-cli-darwin-amd64"
      sha256 "65b737ec69ab4745b749432b42e5b103bb1d46c03d5534630e82719a850668f6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4135/magpie-cli-linux-arm64"
      sha256 "9d8518ec12537e8c4116c40534c1b5edf4d4c0fdda7c09f5cf413fd4672b2db5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4135/magpie-cli-linux-amd64"
      sha256 "e0c4328022aeadafd7ca0d062161cea680775822d4e5b5db8b00120fe9a89645"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
