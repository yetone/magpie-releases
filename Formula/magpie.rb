class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4517/magpie-cli-darwin-arm64"
      sha256 "e1645d8c5b43c2bec34a45a1aa1051fdeb51c27df57b645b488782b29b2aada5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4517/magpie-cli-darwin-amd64"
      sha256 "e16d198292ec0e2472c76ebdab7f77a6dab7b92971f3ba32e5957531d262c6da"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4517/magpie-cli-linux-arm64"
      sha256 "9ad3df9be8f00512a118763154b635197bc38f036f84dfeafecf37f499eed51f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4517/magpie-cli-linux-amd64"
      sha256 "01cf6914fb414ecb5a65e98a8ad066bbf031347fcfdfd5b7c5f9112669478317"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
