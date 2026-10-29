class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2042/magpie-cli-darwin-arm64"
      sha256 "facace7579b91cfe6edf14b6226daba53b560962c1c522009d48bbb2a36fd4cd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2042/magpie-cli-darwin-amd64"
      sha256 "0e328070f00247c4991f414a316d9c3df7695facc378f0c45e18316af24a2a35"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2042/magpie-cli-linux-arm64"
      sha256 "6492f8b400df0a69891557845f069cfe19321f286a9705514a5a1e983b58eff6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2042/magpie-cli-linux-amd64"
      sha256 "7b4a341d639b921378e890b7d0c395edf448ec432f7e045cee7d3955ac1a18aa"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
