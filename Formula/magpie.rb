class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4077/magpie-cli-darwin-arm64"
      sha256 "b1942acb7c6bc52992b1c8fbaf426a73578867c68f1f64b23e6d4e7e718bb313"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4077/magpie-cli-darwin-amd64"
      sha256 "624e6b430d8e9ffde2adb3dcd8ba9f98c7e0262fb1a513b6e92ffd7c428fbcd0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4077/magpie-cli-linux-arm64"
      sha256 "618d48a42545849981d3739db16ff74e595bab4134af98444381e7f041f3b98a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4077/magpie-cli-linux-amd64"
      sha256 "515c612489174b87b05bb55377b23ee6a3ca626377de751b28c9be53c9bb8896"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
