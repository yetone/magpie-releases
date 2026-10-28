class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1936/magpie-cli-darwin-arm64"
      sha256 "e1d89819eef897892fbfcd3893b92fc479e1a05fd8a79b98578ca975117d5e8b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1936/magpie-cli-darwin-amd64"
      sha256 "270975c2a7c886a37babb5e40faf8733906bbdd90f072b04e247761014ced772"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1936/magpie-cli-linux-arm64"
      sha256 "ef54ad01258467f39886867322951bd29c4a91ea3f9fb2b7b40c1ccb12fff467"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1936/magpie-cli-linux-amd64"
      sha256 "fdccc2f91dfc1e3e2b529773449867387df0ce6276e80a2106e74c417e4731e2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
