class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4402/magpie-cli-darwin-arm64"
      sha256 "a97a079ac98847d9ce761c9e6e3b082e70cd2dc5cd460f7bab98fafb601f9286"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4402/magpie-cli-darwin-amd64"
      sha256 "8735e39dcde0e876a16d86fccf67631407c65816f4ef95effb26cc626fb988e0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4402/magpie-cli-linux-arm64"
      sha256 "9dc95438cf184220ef6261ede2b99cd3739ac287a9dde8eb794eda089a5c1428"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4402/magpie-cli-linux-amd64"
      sha256 "fd24dba3b5b5d86f6988c2713b2d1eeafffe80c2c688cd041888c1f39d98849a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
