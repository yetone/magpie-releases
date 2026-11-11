class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3673/magpie-cli-darwin-arm64"
      sha256 "c436e729fe2125d20462b116905bd3816ea29b3260e34e00d72b6cc2684f5e10"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3673/magpie-cli-darwin-amd64"
      sha256 "b7cac8447c267d0fde4af7548659ed127ebf25cfe4fb91be90e44be7d99c798e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3673/magpie-cli-linux-arm64"
      sha256 "96a40beb1882e12dbb72960f2bef598d15e7cecb938341877639649f694db706"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3673/magpie-cli-linux-amd64"
      sha256 "f77cd1a413d3c55e8f1e2bb2954db85f753734ebed52b479553a311007aa38cb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
