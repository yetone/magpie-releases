class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2849/magpie-cli-darwin-arm64"
      sha256 "3f425226385a5ec87f6e6f7b0fa8ebe60ff8b4cea73a764e8287df8b0ebb333e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2849/magpie-cli-darwin-amd64"
      sha256 "58459096171a63eb38c1e03bb020a2e256f547d78d96a083b371a567782e6005"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2849/magpie-cli-linux-arm64"
      sha256 "92061d13c1e5c1301fac0d2dba71ac6f52ad4dd92432ac41216521c58d5d092a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2849/magpie-cli-linux-amd64"
      sha256 "1cc7ecdfe95a437e7e9d5eb794073e7514c1f15b6f64c695c36b2cb8a9e8bc0f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
