class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3071/magpie-cli-darwin-arm64"
      sha256 "ba08455961f5ddc464aaeae79e29561a5cdc53b7f5bd2cee495141e8ef0ad5df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3071/magpie-cli-darwin-amd64"
      sha256 "19b42ed22788ea215b05a9560fa56f3b60b939b307065c650fbe6a53fdfd7691"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3071/magpie-cli-linux-arm64"
      sha256 "88906438670d93f8401fcee633cd14286b91fa6eb2374401a34cf5205462c1e6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3071/magpie-cli-linux-amd64"
      sha256 "34872c19d6d763c84ef12e7b32f5d701eb6ba8779ac14128497364d152ab212b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
