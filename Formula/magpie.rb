class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4250/magpie-cli-darwin-arm64"
      sha256 "7f845fe57050b7461eac9f6c84f519fa46ac5f98e6e0bd5488faf2d5e85ae088"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4250/magpie-cli-darwin-amd64"
      sha256 "04e58849fb47c609bb8183f40c1953d4de3cc1782a3b5168b6c915f80e87785f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4250/magpie-cli-linux-arm64"
      sha256 "669e4f0176d2d047ebe40ac1439089d455ed551e6658a3546e53b87b181b070c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4250/magpie-cli-linux-amd64"
      sha256 "a5e0390a0f9a06c1ef6aa14ba8540c5ff36302f6846c0e7f165ccd7bc8ec05db"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
