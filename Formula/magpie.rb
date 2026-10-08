class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1115/magpie-cli-darwin-arm64"
      sha256 "2be1897656097b1d95c8ee2973978942e9d13235619af297785c8531922459d3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1115/magpie-cli-darwin-amd64"
      sha256 "0941dc794b8237ff53e686052ec52e8053864015baee12db685fbab3fea5e7c2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1115/magpie-cli-linux-arm64"
      sha256 "8af7e42b7bb597a23a9933ecff71be7d3b3add5f12d8b5b70a64fd290bbf2002"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1115/magpie-cli-linux-amd64"
      sha256 "8f4365a5212cc3bc87248418070587bcd50dbfab63cf62ca32fde0df75b019cb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
