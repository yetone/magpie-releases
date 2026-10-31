class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2448/magpie-cli-darwin-arm64"
      sha256 "3294ac260ae309ddb039196f29953590a7a6ffaadaf0acb4fd394d48ab3fda02"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2448/magpie-cli-darwin-amd64"
      sha256 "f7e0be032e1459e6b55c816d61e5837c00c1fe2b17d146f70515dae0b3744b45"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2448/magpie-cli-linux-arm64"
      sha256 "697e920c5d5c9840f21411c46e43830b42a0f0ba6d7a601ffd3a1e83b2f4d450"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2448/magpie-cli-linux-amd64"
      sha256 "e3dfb67201bc20c0a1444a9fad5dcefc673c679ecbaee7f2dc02d9b52aa0b9ef"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
