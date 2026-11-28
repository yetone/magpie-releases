class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5011/magpie-cli-darwin-arm64"
      sha256 "326f487380a37ee5c4b206f72dee8adc8941af3935907146d5f6f8d01392a51e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5011/magpie-cli-darwin-amd64"
      sha256 "8092d0b378b9331e286ec97f0634fc66ac5dc2e432f8c164eb58b748fd354dcf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5011/magpie-cli-linux-arm64"
      sha256 "8d67b030099150f0e8ea8e3fbc23cf507be1dbe2cfdec1b8b107ffa87b153e02"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5011/magpie-cli-linux-amd64"
      sha256 "2bc54420647db5079838cc2b134c2cc39acba479fc3e39228528864760e0c0f0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
