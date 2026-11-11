class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3699/magpie-cli-darwin-arm64"
      sha256 "7f6b51cae2ae4a80c9e45e54ed171be4761689fa6b4426dde091715dcb62adf1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3699/magpie-cli-darwin-amd64"
      sha256 "5b738df865a5a06f252391154266f8edde791025ee5c53a585e7ae481f475fd2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3699/magpie-cli-linux-arm64"
      sha256 "074c72770d77f30c49dc8753a4f31d348ffbaa611859a83a2bab3d152f98e6e8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3699/magpie-cli-linux-amd64"
      sha256 "0418d9a1ac17767501a84957f478c69e7820c0b69192b7235edc87b5a0d30c06"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
