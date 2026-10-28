class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1932/magpie-cli-darwin-arm64"
      sha256 "154f922d7b9a3da3011266c1b3c12901c266bbf463f2e8cf62303b3059d2ddb4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1932/magpie-cli-darwin-amd64"
      sha256 "d2e9fc1c75398a298b0154f65a8d41d6870c6e06373e09a2ac58e1c1f461847b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1932/magpie-cli-linux-arm64"
      sha256 "4f314f426a534b7b11609d9fd0e5cca51d6958c0e4df3dc93d3e3d0d44c08015"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1932/magpie-cli-linux-amd64"
      sha256 "367140cc50811dcf7f80f34d19528fdc29769ee19d1f64f801ff0ed5f302f8f2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
