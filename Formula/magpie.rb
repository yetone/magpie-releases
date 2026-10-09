class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1132/magpie-cli-darwin-arm64"
      sha256 "c8f7c2ac7b5ae8905240bf3a39490b27b7c912774d9958ce06eebfecb39b283d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1132/magpie-cli-darwin-amd64"
      sha256 "e26a50c7dc77b3f467b305592ed78cb9e95716d11e66d677034dc2ee239ce747"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1132/magpie-cli-linux-arm64"
      sha256 "0a71d4dddc3d5628a6573bace8d4b2485dda291ea7d681af8b0b32f4a53384c7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1132/magpie-cli-linux-amd64"
      sha256 "cabaf37ff5d57e55dacff5ad9cefd8bf71aedaf4388ef3ff6feb736c4aa2ec8e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
