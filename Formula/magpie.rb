class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4100/magpie-cli-darwin-arm64"
      sha256 "70ad2e94d14224efcbe47bd9f6f4d8377546bbab4136ddedffdccb0bb968c933"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4100/magpie-cli-darwin-amd64"
      sha256 "e61a43985918158225910f1c134c08afe109e7882678b2ac1b449b93af7efee6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4100/magpie-cli-linux-arm64"
      sha256 "5e095e87cd1f12a7c0284a74326117f8349b16fe38a2b6fec8ed1d21eb2c1405"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4100/magpie-cli-linux-amd64"
      sha256 "c66a47ab6ae4e22f91c82c2c9582f2f2631d1d9ad07d83cb75a6488acc2c8170"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
