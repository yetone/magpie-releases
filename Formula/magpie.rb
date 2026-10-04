class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.930/magpie-cli-darwin-arm64"
      sha256 "f9e0564cda1445ce57b21f2df6079795564b8ac4c8fbfcee3e0510fe431e540f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.930/magpie-cli-darwin-amd64"
      sha256 "16693ecd53148870ca16cd8a2b6e70f1caa51543d0b7cb3df6bd89606aa7a7aa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.930/magpie-cli-linux-arm64"
      sha256 "cc9f9987f54c074ac80049d6b5e6c07b99011506df677a9d5c329bbb2f16ac81"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.930/magpie-cli-linux-amd64"
      sha256 "10430b8c0fc21a0d99b4942b18a04fd78f37bb0ea2c0d5892b4b2d4758e54a94"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
