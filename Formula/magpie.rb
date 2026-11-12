class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3815/magpie-cli-darwin-arm64"
      sha256 "2ae99729e830e85d5ed7196d01654f0bf6f18877df77cbec0752bcfaa94f5f01"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3815/magpie-cli-darwin-amd64"
      sha256 "c9b04d077cff18188a83f043577896a643c67a3a697a015d84812e3720fe6a3b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3815/magpie-cli-linux-arm64"
      sha256 "7a8a1b0c84f3a3e22f65076b1e7e72d97a9f7367e08f4f7cc5e614caa66b9861"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3815/magpie-cli-linux-amd64"
      sha256 "a9a5ee6a9ceaf0ba43ec0a6aaa08fc98b035e4d784a22f95fb948d69b791d2ee"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
