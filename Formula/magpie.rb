class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3722/magpie-cli-darwin-arm64"
      sha256 "e7c3190cb63a7e9e320e36594f9b8f4256ef6af20bad3f4cd62a1682b384372f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3722/magpie-cli-darwin-amd64"
      sha256 "6e5edfa50aa5cab2779087c076201434a8d8fec241cd076911e89624ed15fcca"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3722/magpie-cli-linux-arm64"
      sha256 "c77c6bf2bf85d6cf635e8996a7ba3327e7942b28ebfabb21cd5c00186dc1f40c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3722/magpie-cli-linux-amd64"
      sha256 "c162fb61781b52ec50e341d8cd64df7218d79207a75528f23141e65452a9652e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
