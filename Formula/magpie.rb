class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3537/magpie-cli-darwin-arm64"
      sha256 "9485fdcfec6d566dde3ad20676b85a8c105a53a172eddf279a0e8d9816106d19"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3537/magpie-cli-darwin-amd64"
      sha256 "16c234fb2a9ba90a7cc6a1257259e7b44a026ab27423fe1e0bdd695a669cd77a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3537/magpie-cli-linux-arm64"
      sha256 "41001c9d7134d1b36dab297ac743eb608533759af396f3d9097efe945a7e447f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3537/magpie-cli-linux-amd64"
      sha256 "95243e8aee22b7598395f4c35b30e8501e938e25f2c17c2e181920f7bddad7b8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
