class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3527/magpie-cli-darwin-arm64"
      sha256 "bf6b2581fd6b6084b07853ab5e3c7cd5ff922f120e322c0039e50b3792de1b6e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3527/magpie-cli-darwin-amd64"
      sha256 "899472362e61502cdfe97fdc281ba08f227081fdd495abfc2429bd2883b89adc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3527/magpie-cli-linux-arm64"
      sha256 "5e990ddc6605b9b4576c3970fe27f374e0743769fcffd7a90afd5c62c435e2d1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3527/magpie-cli-linux-amd64"
      sha256 "0bd4a6350ccfabbdba6772aa71ad1f41e34b5281118e28e90a61f8dcea885441"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
