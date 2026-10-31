class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2454/magpie-cli-darwin-arm64"
      sha256 "99c07363dd7a1ba511849b985199f759eb28c8f3a53042ed149b61851e752e6a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2454/magpie-cli-darwin-amd64"
      sha256 "23efa898b1d868b68eda2444b8907635439f71daaeab25a334ff33abedac2fff"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2454/magpie-cli-linux-arm64"
      sha256 "48601d41ad2196d612384439178992d14a8b7daf9a299bfefed9c8f11bf5e0b8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2454/magpie-cli-linux-amd64"
      sha256 "77e812cfa29d651abd3dc10fb7c517d0bdc30d15b0d6fc8fa30379003a115f00"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
