class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.975/magpie-cli-darwin-arm64"
      sha256 "7ff8886b076f50b5baaff47bf954105df1010cb5007d32d9ec127370e00bf21f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.975/magpie-cli-darwin-amd64"
      sha256 "4ad9561ab221f02e87b489ca0f8979caa66bf6420da77a4511229afb8d7f9daf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.975/magpie-cli-linux-arm64"
      sha256 "8c824c6fe3209e1feb6aca813399bfe4b3decb101c2c124ca6ef1f21c03ca637"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.975/magpie-cli-linux-amd64"
      sha256 "6fdc9c221281c5ef1b6cc098cbf506b7d822466182e046856166735635907685"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
