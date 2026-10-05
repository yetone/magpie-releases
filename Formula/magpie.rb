class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.981/magpie-cli-darwin-arm64"
      sha256 "a4b59955218924ec8a039fc58af5272b89e9317b73f87bef491139c9182ad344"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.981/magpie-cli-darwin-amd64"
      sha256 "ff103ac83b6601db29792dfd9946d4fd5508ebfeecb99ed2e57b6f5cc5796e85"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.981/magpie-cli-linux-arm64"
      sha256 "ecea1b47b077a08ce2b98f7b6a5dd93245ce1dd1ec31cd82b915549536062d0d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.981/magpie-cli-linux-amd64"
      sha256 "8bc21ad0aa77d10aa34273d49dd4192f223749e7b2c023cef76d7f9e7b081750"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
