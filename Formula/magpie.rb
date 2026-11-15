class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4236/magpie-cli-darwin-arm64"
      sha256 "d6d0a14d6dbf7ff4f49029f3c50bcb2a3c8afbb05a0096e2aa5257cc751100dd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4236/magpie-cli-darwin-amd64"
      sha256 "e34afa7d932465c63e6ca73fe9e361fce9c18eee513a134a43191c4ab85e088d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4236/magpie-cli-linux-arm64"
      sha256 "d10d1d065d7b11512d5913231e6570614bf9a1c621302d0336130954b90b8872"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4236/magpie-cli-linux-amd64"
      sha256 "087914e599b8e139ec988813692290621800cefe722bef298ccd833e0133c0ca"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
