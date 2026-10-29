class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2048/magpie-cli-darwin-arm64"
      sha256 "52d397d2c8bc90ac341295fda4a0237d552d9e800e50504968f9b92314ee7b57"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2048/magpie-cli-darwin-amd64"
      sha256 "e41c1757cee4abfffad3ddd4afb5152f3ddeb7c603c37a9bed5550527ab2264d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2048/magpie-cli-linux-arm64"
      sha256 "3cdde1bdde881c1e92ed7c2a2302953153e27485be33efac73632da7eddbd769"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2048/magpie-cli-linux-amd64"
      sha256 "549fa6504a53d7516fdac52d0a9895b0eab0d0210711fc217bc0ebdf69d834ed"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
