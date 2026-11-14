class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4189/magpie-cli-darwin-arm64"
      sha256 "ece390cdae9cac98dadabac9a43b0aa7ee10ac94567bd9f6b46d005486038f9c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4189/magpie-cli-darwin-amd64"
      sha256 "2b0685a59d62cb44e8843422d3fac30179ddef7c2ed7947ab7fb6a381f8e3f88"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4189/magpie-cli-linux-arm64"
      sha256 "d7312c470cee79e1449d4f0dc74540e2e75059de3c887c8890c14ab16d457773"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4189/magpie-cli-linux-amd64"
      sha256 "eb66bfc1b284db092a109ff0d6eb2eadd1b4b61dbdde1c6c5e6201b5320add22"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
