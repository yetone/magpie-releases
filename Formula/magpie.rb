class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1133/magpie-cli-darwin-arm64"
      sha256 "dd99b9128cc2f6285cb69ee48b83f13421788b251c14c8e0a2ee7dcf99c12d0f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1133/magpie-cli-darwin-amd64"
      sha256 "3d0258a741555642d3e0d8f9e6bb0a7cf52c97765cefa214ab54b0ac5381f974"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1133/magpie-cli-linux-arm64"
      sha256 "c7547ba535bcde7cd04edacebb1c391223f83ac3444196be951f2b6e8a69535c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1133/magpie-cli-linux-amd64"
      sha256 "d1327566b3958c1725f4f4022e36670de76184471b4eebea7aebbc9a1b422138"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
