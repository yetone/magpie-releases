class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4716/magpie-cli-darwin-arm64"
      sha256 "80632a6f40d7b025cfde2664f3b54da6a8331bb04421da041531a90b5458cf2f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4716/magpie-cli-darwin-amd64"
      sha256 "43b5d97734391812bf58408a28e402275fdd14e64ccf9859c8a8b1f0b76b3a2f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4716/magpie-cli-linux-arm64"
      sha256 "9ab66a955fc849085c488beb8da568608661a0517bf9a8c9aaf721ab3408ba93"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4716/magpie-cli-linux-amd64"
      sha256 "6f9ab2771ded0fd9ea8f93933eb32aa85e18b931334b204dc2d1f749ebc6e665"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
