class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.912/magpie-cli-darwin-arm64"
      sha256 "bd64037ccf90c520d055e76d2a0b77d2c2f15f64748bcef80114745451d90843"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.912/magpie-cli-darwin-amd64"
      sha256 "eab2dd6ccf2c5d86f45ae6651e3b278102565a5d503c4474259d84de545e2372"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.912/magpie-cli-linux-arm64"
      sha256 "185be90574c3cfa9e37872bf1bd22c42932ee01bd483cb56ca9441ed3e84d94e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.912/magpie-cli-linux-amd64"
      sha256 "02d13143b82fff0cb8bc647fb5cd9da0b3b74f37f4d1be17f48332ea689682d7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
