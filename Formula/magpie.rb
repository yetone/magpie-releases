class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4377/magpie-cli-darwin-arm64"
      sha256 "65086a89e30e84edbb91ff94e4a34d6cf9c11310176141349cbf5006c12e5be6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4377/magpie-cli-darwin-amd64"
      sha256 "321d6529cd4fe096ed9e4edfd5b737972244e5d3dfee17a957239d195fb46753"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4377/magpie-cli-linux-arm64"
      sha256 "e33b217a15fc3b312e9a5df2abe01caad7be7b76e48b623d6c037a075020892b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4377/magpie-cli-linux-amd64"
      sha256 "de43ad4b35a0dd98c7b19da973836c0de56abfe25666dd6cb0f498dea93b80a7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
