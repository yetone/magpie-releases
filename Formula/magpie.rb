class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2876/magpie-cli-darwin-arm64"
      sha256 "9c58a9db2a9b750769df8e69a17a25dc12e63ebe132e36d8cbb7da651ccf36b8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2876/magpie-cli-darwin-amd64"
      sha256 "3b71f4635310c2dbe8deb75f72a960be7d90852a18d8aae74911d04672fcc4ba"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2876/magpie-cli-linux-arm64"
      sha256 "fc2656bd5b40f548f539ccfcefec74ca183d09b7a6a1617975d627a4d04f9e44"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2876/magpie-cli-linux-amd64"
      sha256 "d371103e83f69d5746dad654060989a966f00847a81d843e93165ebdc5c5f7f8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
