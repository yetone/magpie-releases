class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3813/magpie-cli-darwin-arm64"
      sha256 "4c5457b67277212ef5c14f9e51cd14208bbc8574263bda2ed338ad917f4809ae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3813/magpie-cli-darwin-amd64"
      sha256 "ef733bc8f1ab90d2520c6ee8b57de5afd3c6b738b3dfc4e522eefd502f25455a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3813/magpie-cli-linux-arm64"
      sha256 "50d935078556041062b24fb999697e712e36ea245041e73185de4f415037b183"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3813/magpie-cli-linux-amd64"
      sha256 "6f119467dc2625cff16eb78d714b0147820b56ae878f589afd92cb43c972ae37"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
