class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4337/magpie-cli-darwin-arm64"
      sha256 "7c5b68ac32acb3b152519073fa6d244a18ed34930adf5ac28dcbc3c5f41b8b36"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4337/magpie-cli-darwin-amd64"
      sha256 "9dbd3f2895793fb3e92ae5e49fbd052b9aa4b452508f093331edce5d911ab577"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4337/magpie-cli-linux-arm64"
      sha256 "5c631fa93dd7031f42a31b9f20d811c9656a5e3c25b1bd10b56d30f26baa20bf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4337/magpie-cli-linux-amd64"
      sha256 "b8a9832bc736cd778b7964108b482dd7b29ade34ecf4bbad80502c622e411e89"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
