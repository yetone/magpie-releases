class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4507/magpie-cli-darwin-arm64"
      sha256 "0c3a75ed1029270d74676a1a5a1a894eb1701e2198328cf3b4845997032a2b85"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4507/magpie-cli-darwin-amd64"
      sha256 "699eafc38c429543b47fa057cef705c95401c657b8e8563b4db09230ec36bb86"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4507/magpie-cli-linux-arm64"
      sha256 "6024dcdf24dad54b6c9172551d64449c136f4988161bc5bb7cc35edc5e92ced4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4507/magpie-cli-linux-amd64"
      sha256 "6b88cdf29d74c8636a29f39bebb1fa5b238c4eb4f40c6af8fe1064b4238438e3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
