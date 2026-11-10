class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3534/magpie-cli-darwin-arm64"
      sha256 "073c5b3184843dd1b0993eac130d46b523ba995c0e090b03b6bccc17ad21b92b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3534/magpie-cli-darwin-amd64"
      sha256 "45d9a58621b3e34163763afca586e5e747e36803637961250660f6d647e2c5de"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3534/magpie-cli-linux-arm64"
      sha256 "c5a4d09197510321ecc49513dd4f9e59592b31ba7c435e6f17571fe76077f863"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3534/magpie-cli-linux-amd64"
      sha256 "469329e51b2bb0365ff55208dd48951f921664f6f90213f3569ae70889544f10"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
