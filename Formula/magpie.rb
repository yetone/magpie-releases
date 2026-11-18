class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4421/magpie-cli-darwin-arm64"
      sha256 "021f4d2c1275da82b41aad3b035e31916643b25e1e9754f58288291e9db7b784"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4421/magpie-cli-darwin-amd64"
      sha256 "53f7ecc9dfaf05b6f9bc7b9ede23ab3e05b2b87314858e4ce1aa7752ad2a5964"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4421/magpie-cli-linux-arm64"
      sha256 "5f40782df0023a515e9e870fb8d63a783bd7292a7b37723bff8b46ddf1a226b1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4421/magpie-cli-linux-amd64"
      sha256 "313b354451330f85fd6fec2a2668f75a96f85a73c585ee1e1fbdb73353896dee"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
