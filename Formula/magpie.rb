class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4081/magpie-cli-darwin-arm64"
      sha256 "29cd8c011c964b3dfd00eb469c1ca7e4e2d107e51545481bf45ae5ce3e75c8d2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4081/magpie-cli-darwin-amd64"
      sha256 "c668b7784a523145f9d86df00b4ae354652d428b09d06abf0cb333b2165a4e72"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4081/magpie-cli-linux-arm64"
      sha256 "ecf6e33db8ee5f6686e9e09053196c4f7c158f0aaaf9c2be988ed872067b0ae6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4081/magpie-cli-linux-amd64"
      sha256 "c810575dda87014cc81961e8200850243d6a81efe134a454c0f87adf13a24c91"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
