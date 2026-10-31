class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2455/magpie-cli-darwin-arm64"
      sha256 "23209849617bfaaa8d789f9a2a61e83dc7a4826e6c9ed4da067a19015e8911a1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2455/magpie-cli-darwin-amd64"
      sha256 "2e4d6246d0beb95505e8a0a8bd1cffc057cb0ce0fca412d03ee29cf92649f9b1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2455/magpie-cli-linux-arm64"
      sha256 "f855ca59cb26fa489f535ac03fd93fa5ebc338c01fd15a4d48381c2ae18ca949"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2455/magpie-cli-linux-amd64"
      sha256 "3c10a70c97947bd59297a85e351a42ff73117ea22d50b332777b929fcd4a35a8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
