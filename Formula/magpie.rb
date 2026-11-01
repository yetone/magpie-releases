class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2594/magpie-cli-darwin-arm64"
      sha256 "6b14b643794a6d0d9519d272c59b55106b07b7136fcdecb081f9c66901565281"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2594/magpie-cli-darwin-amd64"
      sha256 "0f4a910ec252b6e0c275c42d737b47d2f35df02c34fb9d69cc78a5f9705e2154"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2594/magpie-cli-linux-arm64"
      sha256 "bf209987211e2a9c10b2e9ac6e529d465047291e28623e9a9c7dee4f7370e38f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2594/magpie-cli-linux-amd64"
      sha256 "32bcd21dabdb8edb6718cbf84477b4a20ac675dccdf87290c48f3f63afb012e2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
